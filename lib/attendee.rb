require './lib/phone_number'

class Attendee
  attr_accessor :first_name, :last_name, :phone_number

  def initialize(input = {})
    @first_name   = input[:first_name]
    @last_name    = input[:last_name]
    @phone_number = PhoneNumber.new(input[:phone_number]).to_s
  end
end