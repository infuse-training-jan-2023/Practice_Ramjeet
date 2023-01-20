puts "Enter the number"
num=gets
num=num.to_i
array=[22,23,25,24]
i=0
while i<4 
  if array[i]==num
    puts "number found"
    break
  end
  i=i+1
end




# arr=[1,2,3,4,5]
# def fun(arr)
#   arr.each do |i|
#     puts i
#   end
# end

# fun(arr)