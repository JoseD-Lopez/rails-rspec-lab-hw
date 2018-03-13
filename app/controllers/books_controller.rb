class BooksController < ApplicationController

		def index
		
		@books = ["Title 1", "Title 2"]
		render :index
	end

	def new
		render :new
	end

	def create
		 redirect_to(books_path)
	end

	def show

       @book = "Title 1"
       respond_to do |format|

           format.html # show.html.erb
           format.json { render :json => @book.to_json }
         
          end

   end

	def edit
		@book ='Title 1'
		render :edit
	end

	def update
		redirect_to(books_path)
	end

	def destroy

		redirect_to(books_path)

	end
end
