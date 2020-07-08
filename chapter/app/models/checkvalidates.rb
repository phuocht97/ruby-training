
module CheckValidates
  def check_name
    @name = name
    if @name.length >= 50
      errors.add(:name," is maximum 50 characters")
    elsif @name.length == 0
      errors.add(:name," can't be blank")
    else
      #Done
    end   
  end
end

  # def check_password
  #   @password = password
  #   if @password.length <= 0
  #     errors.add(:password,"can't be blank")
  #   elsif @password.length >= 1 && @password.length <= 5
  #     errors.add(:password,"is too short (minimum 6 characters)")
  #   else
  #     #Done
  #   end
  # end