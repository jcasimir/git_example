class PhoneNumber
  attr_accessor :number

  def initialize(input)
    @number = sanitize(input)
  end

  def sanitize(input)
    input = input.to_s.scan(/[0-9]/).join
    
    if input.length == 11 && input.start_with?("1")
      input[1..-1]
    elsif input.length != 10
      "0000000000"
    else
      input
    end
  end

  def to_s
    number
  end
end