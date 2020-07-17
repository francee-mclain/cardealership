cars_list = []

class Car
    attr_accessor :make, :model, :year

    def initialize(make, model, year)
        @make = make.capitalize
        @model = model.capitalize
        @year = year
    end

    def to_s
        "We have a #{@year} #{@make} #{@model} on our lot."
    end

end

car1 = Car.new(make = "Toyota", model = "Corolla", year = 1994)

cars_list = [car1]

puts cars_list.to_s