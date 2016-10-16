
class Zoo
  attr_reader :name, :season_opening_date, :season_closing_date, :cages, :employees

  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = []
    10.times { @cages << Cage.new }
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def open?(date)
    date >= season_opening_date && date <= season_closing_date
  end

  def add_animal(new_animal)
    @cages.each do |cage|
      if cage.empty?
        cage.animal = new_animal
        return
      end
    end
    raise ZooAtCapacity
  end

  def visit
    greeting = ""
    @employees.each do |employee|
      greeting << employee.greet + "\n"
    end

    @cages.each do |cage|
      greeting << cage.animal.speak + "\n" if !cage.empty?
    end
    greeting
  end
end

class ZooAtCapacity < StandardError
end
