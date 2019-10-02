# Your Code Here
def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield (array[i]))
    i += 1
  end
  new
end
