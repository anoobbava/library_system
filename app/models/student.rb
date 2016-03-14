class Student < ActiveRecord::Base

	def self.find_names
		binding.pry
		Student.find_by_sql("Select id_number,name from students")
	end
end
