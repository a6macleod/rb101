ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

combined_ages = 0

ages.each do |name, age|
  combined_ages += age
end
p combined_ages
