# input = string of some characters that include a combination of:
# () [] {}
# output: true if parens are balance, false if not

# create a stack, where i push in the value if it is an open paren
# else if the next element is closed, pop out the element from the stack and see if it not equal to
# the current element, and if it return false
# return stack.length == 0

def balanced_parens(str)

  stack = []
  open_parens = { "(" => true, "{" => true, "[" => true }
  closed_parens = { "(" => ")", "{" => "}", "[" => "]" }

  return true if str.length == 0

  str.split("").each do |char|
   if open_parens[char]
     stack.push(char)
    elsif closed_parens[stack.pop] != char
      return false
    end
  end

  return stack.length == 0
end


# Tests
puts balanced_parens("")
puts balanced_parens("(") #false
puts balanced_parens("()") #true
puts balanced_parens("([])")
puts balanced_parens("([}")
puts balanced_parens("{}")
