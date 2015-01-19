require_relative 'wrong_argument.rb'
class Name
  attr_accessor :lastname, :firstname

  def initialize(lastname, firstname)
    if lastname.empty? || firstname.empty?
      raise WrongArgument, "Neither Lastname nor Firstname value can be null"
    elsif !firstname[0].match(/[A-Z]/)
      raise WrongArgument, "First name must start with an uppercase letter"
    else
      @lastname = lastname
      @firstname = firstname      
    end 
  end

  def to_s
    "Name: #{lastname}, #{firstname}"
  end
end
