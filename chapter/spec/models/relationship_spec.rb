require 'rails_helper'

# RSpec.describe Relationship, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
describe Relationship do

  let(:follower) { FactoryGirl.create(:user) }
  let(:followed) { FactoryGirl.create(:user) }
  let(:Relationship) { follower.relationships.build(followed_id: followed.id) }

  subject { relationship }

  it { should be_valid }
  describe "follower method" do
    it { should respond_to(:follower) }
    it { should respond_to(:followed) }
    its(:follower) { should eq follower }
    its(:followed) { should eq followed }

    describe "when followed id is not present" do
      before { relationship.followed_id = nil }
      it { should_not be_valid }
    end

    describe "when follower id is not present" do
      before { relationship.follower_id = nil }
      it { should_not be_valid }
    end

    describe "when follower id is not present" do
      
    end
  end
end