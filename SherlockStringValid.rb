def checkString(str)
entries=Array.new(95,0)
str=str.downcase.split('')
str.each do |i|
temp=i.ord-32
if temp.between?(0,94)
entries[temp]=entries[temp]+1
end
end 
sum=0
sum=entries.inject(0){|a,b| a+b}
arr=entries.select{|k| k>0}
if (sum% arr.length == 0 || (sum-1)% arr.length == 0 )
return "Yes"
else
return "No"
end
end

puts "Enter any String: "
str=gets
checked=checkString(str)
puts checked
