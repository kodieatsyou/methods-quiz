require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz
   	end.new
	end

	# TODO - write tests here
	def test_has_teen?
		assert_equal true, @m.has_teen?(12, 13, 20)
		assert_equal false, @m.has_teen?(12, 3, 20)
	end

	def test_not_string?
		assert_equal "not hi", @m.not_string?("hi")
		assert_equal "not bye", @m.not_string?("not bye")\
	end

	def test_icy_hot?
		assert_equal true, @m.icy_hot?(-1, 101)
		assert_equal false, @m.icy_hot?(0, 99)
	end
end
