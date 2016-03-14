class Issue < ActiveRecord::Base
	belongs_to :book
	belongs_to :student
end
