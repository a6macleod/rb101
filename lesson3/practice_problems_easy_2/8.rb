advice = "Few things in life are as important as house training your pet dinosaur."

# statement = advice.slice!("Few things in life are as important as ")
statement = advice.slice!(0, advice.index("house"))

p statement
p advice
