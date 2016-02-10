class Issue < ActiveRecord::Base
	belongs_to :book
	has_many :students
end
