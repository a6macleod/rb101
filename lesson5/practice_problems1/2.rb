# order by published year, earliest -> latest

# input: array of hashes
# output: array of hashes
# requirements:
#   sort the array based on published year
#   earliest published year is first
#   latest published year is last

# use sort with a & b = to the hashes
# use the spaceship operator to compare the [published] year

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

p books.sort_by { |book| book[:published] }
# Using #sort_by is better because we are not doing reversed sorting and it reads easier.
# p books.sort { |a, b| a[:published] <=> b[:published] }
