require 'pry'

def fib(n) #n is an index
  i = 2
  rel_num = {0 => 1, 1 =>1}
  until i > n-1
  	new_num = rel_num[0] + rel_num[1]
  	rel_num[0] = rel_num[1]
  	rel_num[1] = new_num
 	  i += 1
  end
	puts rel_num[1]
end
