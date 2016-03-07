class BooksController < ApplicationController
	before_action :authenticate_user!
	before_action :find_book, only: [:edit, :update, :destroy, :show]

	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(books_params)
		respond_to do |format|
			if @book.save
				format.html{ redirect_to @book , notice: 'Book Added Successfully' }
			else
				format.html{render :new_book}	
			end
		end
	end

	def edit
	end

	def update
		if @book.update(books_params)
			redirect_to @book
		else
			render edit_book_path(@book)
		end
	end

	def show
	end

	def destroy
		if @book.destroy
			redirect_to books_path
		else
			render @book
		end
	end

	def search_home
	end

	def search
		@search = Book.search(params[:search])
		respond_to do |format|
 			if @search.empty?
 				flash[:alert] = "No Book Found!!!"
				format.html{ render :search_home }
 			else
 				flash[:alert] = "Book Found"
 				format.html { render :search }
 			end
 		end
 	end

	private

	def find_book
		@book = Book.find(params[:id])
	end

	def books_params
		params.require(:book).permit(:name, :author, :price, :isbn, :count)
	end
end
