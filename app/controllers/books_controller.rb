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
				format.html{ render :new }	
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

	# def search_home
	# end

	def search
		binding.pry
		if params[:search]
			@search_results = Book.search(params[:search])
		else
			render :search_home
			# @search_results = Book.all
		end
	end
		# @search = Book.search(params[:search])
		# respond_to do |format|
 	# 		if @search.empty?
 	# 			flash[:alert] = "No Book Found!!!"
		# 		format.html{ render :search_home }
 	# 		else
 	# 			flash[:alert] = "Book Found"
 	# 			format.html { render :search }
 	# 		end
 	# 	end

 	# doubt-- when we calling the routes /books#issue it will come to
 	#here in this method, and after that it will go to a page of issue.html.erb and it will contain the form for issuing the books , from there if book issued is success we need to move to an another path means another action is that r8? 
 	# #get :search_home
  #     post :search
  #     get :issue_home
  #     post :issue

 	def issue_home
 		@books = Book.book_names
 		@students = Student.find_names
 		# binding.pry
 	end

 	def issue
 		#issue the corresponding book_id to the corresponding student
 		#create check box in books issued to is done..
 	end
 	
	private

	def find_book
		@book = Book.find(params[:id])
	end

	def books_params
		params.require(:book).permit(:name, :author, :price, :isbn, :count)
	end
end
