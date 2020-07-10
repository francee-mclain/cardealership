# cars
car1 = "1994 Toyota Corolla"
car2 = "1999 Toyota Corolla"
car3 = "2006 Mini Cooper S"
car4 = "2015 Ford Edge Sport"

# prices
price1 = 1000
price2 = 2000
price3 = 12500
price4 = 18500

# mileage
mileage1 = 230000
mileage2 = 150000
mileage3 = 75000
mileage4 = 34000

# exterior
color1 = "miscellaneous"
color = "black"
color = "red"
color = "silver"
color = "blue"
color = "white"
roof = "sunroof"
roof = "soft top"
roof = "hard top"

# interior
seats = "cloth"
seats = "leather"
seat color = "light"
seat color = "dark"

# drivetrain
dt = "awd"
dt = "fwd"
dt = "rwd"

#engine
eng = "V6"
eng = "V8"
eng = "2L"
eng = "1L"

#fuel type
fuel = "gasoline"
fueldiesel

#transmission
automatic
manual

# output without def
puts "The #{car1} is priced at $#{price1}."
puts "The #{car2} has #{mileage2} miles."

# output with def
def inventory(car, price, mileage)
    "The #{car} costs $#{price} and has #{mileage} miles."
  end

  puts inventory(car1, price1, mileage1)
  puts inventory(car2, price2, mileage2)
  puts inventory(car3, price3, mileage3)
  puts inventory(car4, price4, mileage4)

