def remove_every_other(arr)
  i = 0
  length = arr.size
  while i <= length
    if i%2 == 0
      arr.delete(i)
    end
    i += 1
  end
  return arr
  puts arr
end

remove_every_other(['Hello', 'Goodbye', 'Hello Again'])

remove_every_other([1,2,3,4,5,6,7,8,9,10])

remove_every_other([1,2])

remove_every_other(['Goodbye', 'Great Job'])

remove_every_other([])