def getCombinations(str)
combinations =str.chars.to_a.permutation.map &:join
return combinations
end

def getGreaterCombinations(combinations,str)
greatercombinations=[]
combinations.each do |i|
greatercombinations<< i if i>str
end
return greatercombinations
end

str="dkhc"
combinations=getCombinations(str)
greatercombinations=getGreaterCombinations(combinations,str)
puts greatercombinations.sort[0]
