# figure out the total age of the male family members

# input: hash
# output: integer
# requirements
#   only use male family members
#   calculate the total age (444)

# get the keys of all family members
# create a total_age variable at 0
# using the array of keys iterate each and add the the ages to total_ages if male

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

family_members = munsters.keys
total_age = 0
family_members.each do |member|
  p member
  if munsters[member]["gender"] == "male"
    total_age += munsters[member]["age"]
  end
end
# p total_age
