require 'checkvalidates'
class User < ActiveRecord::Base
  has_many :microposts, dependent: :destroy
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :relationships, source: :followed
  has_many :reverse_relationships, foreign_key: "followed_id", 
                                   class_name:  "Relationship",
                                   dependent:   :destroy
  has_many :followers, through: :reverse_relationships, source: :follower
  has_secure_password 
  before_save { self.email = email.downcase }
  before_create :create_remember_token
  #validates :name,  presence: true, length: { maximum: 50 }
  # validates_length_of :name, maximum: 50, message: "is maximum 50 characters"
  # validates_length_of :name, allow_blank: false, message: "can't be blank"

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }
  validates 'password', length: { minimum: 6 } 
  validates :password_confirmation, presence: true

  validate :check_name

  # validate :check_password
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def feed
    Micropost.where("user_id = ?", id)
  end

  def following?(other_user)
    relationships.find_by(followed_id: other_user.id)
  end

  def follow!(other_user)
    relationships.create!(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    relationships.find_by(followed_id: other_user.id).destroy
  end
  include CheckValidates
  
  private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end
end

  
