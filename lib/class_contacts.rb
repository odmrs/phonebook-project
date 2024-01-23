class Contact
  attr_reader :name, :phone

  def initialize(user_name, user_phone)
    @name = user_name
    @phone = user_phone
  end
end