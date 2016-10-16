require 'pry'
class Cage
  attr_accessor :animal

  def initialize
    @animal = nil
  end

  def empty?
    if animal.nil?
      true
    elsif animal != nil
      false
    end
  end
end
