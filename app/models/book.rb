class Book < ActiveRecord::Base
	#<Book id: nil, name: nil, author: nil, price: nil, isbn: nil, created_at: nil, updated_at: nil, count: nil> 
	validates :name, :author, :price, :isbn, :count, presence: true
	validates :isbn, uniqueness: true

	def self.search(search)
		binding.pry
		if search
			Book.find(:all, :conditions => ["name LIKE ?", "%#{search}%"])
		else
			find(:all)
		end
	end
end
