class Car
        def initialize(make, model, year)
        @make = make.capitalize
        @model = model.capitalize
        @year = year.capitalize
    end
   
    def to_sales
        "We have a #{@year} #{@make} #{@model} on our lot."
    end
    
end

car1 = Car.new("Toyota", "Corolla", "1994")

puts car1.to_sales