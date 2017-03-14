# code here!
require 'pry'

class School
	attr_accessor :name, :roster, :grade


	def initialize(name)
		@name = name
		@roster = {}
	end

	

	def add_student(name, grade)
		if roster.keys.include?(grade)
			roster[grade] << name
		else
			roster[grade] = []
			roster[grade] << name
		end
	end

	def grade(number)
		roster[number]
	end

	def sort
		roster.each do |grade, name|
			name.sort!
		end
	end
end