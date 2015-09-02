module MethodsQuiz
	
	# TODO - write has_teen?
	def has_teen?(a, b, c)
		if a >= 13 && a <= 19 || b >= 13 && b <= 19 || c >= 13 && c <= 19
			return true
		end
		return false
	end
	# TODO - write not_string
	def not_string?(str)
		if str.start_with?("not")
			return str
		end
		return "not " + str
	end
	# TODO - write icy_hot?
	def icy_hot?(a, b)
		if a > 100 && b < 0 || a < 0 && b > 100
			return true
		end
		return false
	end
	# TODO - write closer_to
	def closer_to?(targ, g1, g2)
		if g1 == g2
			return 0
		elsif g1 - targ < g2
			return g1
		elsif g2 - targ < g1
			return g2
		end
	end
	# TODO - write two_as_one?
	def two_as_one?(a, b, c)
		if a + b == c || a + c == b || b + c == a
			return true
		end
		return false
	end
	# TODO - write pig_latinify

end