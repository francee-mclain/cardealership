cars_list = []

class Car
    attr_accessor :make, :model, :year

    def initialize(make, model, year)
        @make = make
        @model = model
        @year = year
    end

    def to_s
        "#{@year} #{@make} #{@model}"
    end

    car1 = Car.new(make = "Toyota", model = "Corolla", year = 1994)
    car2 = Car.new(make = "Toyota", model = "Corolla", year = 1999)
    car3 = Car.new(make = "Mini Cooper", model = "S", year = 2006)
    
    cars_list = [car1, car2, car3]

    puts "We have a #{car1.to_s}, #{car2.to_s}, and #{car3.to_s} on our used car lot."

end