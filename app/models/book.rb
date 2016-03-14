class Book < ActiveRecord::Base
	#<Book id: nil, name: nil, author: nil, price: nil, isbn: nil, created_at: nil, updated_at: nil, count: nil> 
	validates :name, :author, :price, :isbn, presence: true
	validates :isbn, uniqueness: true

	def self.search(search)
		if search
			where('name LIKE ?', "%#{search}%")
		else
			all
		end
	end

	def self.book_names
		Book.find_by_sql("Select id,name from books")
	end
end
