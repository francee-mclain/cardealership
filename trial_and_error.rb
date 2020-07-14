class Car
    def initialize(make, model, year, mileage, eng, dt)
        @make = make.capitalize
        @model = model.capitalize
        @year = year.capitalize
        @mileage = mileage
        @eng = eng.capitalize
        @dt = dt.upcase
    end
   
    def to_sales
        "We have a #{@year} #{@make} #{@model} on our lot. It has #{@mileage} miles, is a #{@eng} engine, and is a #{@dt}."
    end
    
end

car1 = Car.new("Toyota", "Corolla", "1994", 230000, "V4", "FWD")
@make = "Toyota"
@model = "Corolla"
@year = "1994"
@mileage = 230000
@eng = "V4"
@dt = "FWD"

puts car1.to_sales