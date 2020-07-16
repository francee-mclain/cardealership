cars_list = []

class Car
    def initialize(make = "", model = "", year = "", eng = "", dt = "", mileage = "", price = "")
        @make = make.capitalize
        @model = model.capitalize
        @year = year
        @eng = eng.capitalize
        @dt = dt.upcase
        @mileage = mileage
        @price = price
    end
   
    def to_sales
        "We have a #{@year} #{@make} #{@model} on our lot. It has a #{@eng} engine, which drives using a #{@dt}. Its mileage is #{@mileage}. The price is #{@price}."
    end
end

def ask(question, kind="string")
    print question + " "
    answer = gets.chomp
    answer = answer.to_s if kind == "string"
    return answer
end

def add_make
    make = {"make" => ""}
    make["make"] = ask("What is the vehicle's make?")
    return make
end

def add_model
    model = {"model" => ""}
    model["model"] = ask("What is the vehicle's model?")
    return model
end

def add_year
    year = {"year" => ""}
    year["year"] = ask("What is the vehicle's year?")
    return year
end

def add_eng
    eng = {"eng" => ""}
    eng["eng"] = ask("What is the vehicle's engine type?")
    return eng
end

def add_dt
    dt = {"dt" => ""}
    dt["dt"] = ask("What is the vehicle's drive train?")
    return dt
end

def add_mileage
    mileage = {"mileage" => ""}
    mileage["mileage"] = ask("What is the vehicle's mileage?")
    return mileage
end

def add_price
    price = {"price" => ""}
    price["price"] = ask("What is the vehicle's price?")
    return price
end

answer  = ""
while answer != "n"
    make = add_make()
    answer = ask("Would you like to add its model? (y/n)")
    model = add_model()
    answer = ask("Would you like to add its year? (y/n)")
    year = add_year()
    answer = ask("Would you like to add its engine type? (y/n)")
    eng = add_eng()
    answer = ask("Would you like to add its drive train? (y/n)")
    dt = add_dt()
    answer = ask("Would you like to add its mileage? (y/n)")
    mileage = add_mileage()
    answer = ask("Would you like to add its price? (y/n)")
    price = add_price()
    answer = ask("Is this everything? (y/n)")
    if answer == "y"
        then answer = "n"
    cars_list.push(Car.new(make["make"], model["model"], year["year"], eng["eng"], dt["dt"], mileage["mileage"], price["price"]))
end

puts "---"


# car1 = Car.new("Toyota", "Corolla", "1994", "V4", "FWD", 2000, 230000)
# @make = "Toyota"
# @model = "Corolla"
# @year = "1994"
# @eng = "V4"
# @dt = "FWD"
# @price = 2000
# @mileage = 230000

puts cars_list[0].to_sales()

end