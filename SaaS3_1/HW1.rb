class HW1
  def palindrome?(input)
    re = input.reverse
    return re==input
  end
end

input = gets.chomp
i = input.downcase()
# puts i
b = i.gsub(/[^a-z]/, "")

if(HW1.new().palindrome?(b))
  puts true
else
  puts false
end