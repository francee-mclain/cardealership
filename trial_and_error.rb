cars_list = []

class Car
    def initialize(make = "", model = "", year = "", eng = "")
        @make = make.capitalize
        @model = model.capitalize
        @year = year.capitalize
        @eng = eng.capitalize
    end
   
    def to_sales
        "We have a #{@year} #{@make} #{@model} on our lot. It has a #{@eng} engine."
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

answer  = ""
while answer != "n"
    make = add_make()
    answer = ask("Would you like to add its model? (y/n)")
    model = add_model()
    answer = ask("Would you like to add its year? (y/n)")
    year = add_year()
    answer = ask("Would you like to add its engine type? (y/n)")
    eng = add_eng()
    answer = ask("Is this everything? (y/n)")
    if answer = "y"
        then answer = "n"
    cars_list.push(Car.new(make["make"], model["model"], year["year"], eng["eng"]))
end

puts "---"


# car1 = Car.new("Toyota", "Corolla", "1994", 230000, "V4", "FWD", 2000)
# @make = "Toyota"
# @model = "Corolla"
# @year = "1994"
# @mileage = 230000
# @eng = "V4"
# @dt = "FWD"
# @price = 2000

# puts car1.to_sales

puts cars_list[0].to_sales()
end