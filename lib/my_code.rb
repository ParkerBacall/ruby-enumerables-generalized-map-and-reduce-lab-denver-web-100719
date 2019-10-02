# Your Code Here
def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield (source_array[i]))
    i += 1
  end
  new
end

def reduce(source_array, sv=nil)
  if sv
    sum = sv
    i = 0
  else
    sum = source_array[0]
    i = 0
  end
  i = 0
  while i < source_array.length do
    sum = yield(sum, source_array[i])
    i += 1
  end
  sum
end
