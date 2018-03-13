require "rails_helper"

RSpec.describe BooksController, :type => :controller do
  
  describe "GET #index" do

    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads an array of the book titles into @books" do
      books = ["Title 1" , "Title 2"]
      get :index

      expect(assigns(:books)).to match_array(books)
    end
  end

  describe "GET #show" do

    it "responds successfully with an HTTP 200 status code" do

      get :show, params: {id: 1}
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the show template" do
      get :show, params: {id: 1}
      expect(response).to render_template("show")
    end

    it "loads a single book title into @book when the format is HTML" do
      
      book = "Title 1"
      get :show, params: {id: 1}

      expect(assigns(:book)).to eq(book)
    end

    it "responds to html by default" do
          get :show, params: {id: 1}
          expect(response.content_type).to eq "text/html"
        end

    it "returns JSON when the format is set to JSON" do
      get :show, params: {id: 1, format: :json}

      expect(response.content_type).to eq "application/json"
    end
  end

  describe "GET #new" do

    it "responds successfully with an HTTP 200 status code" do

      get :new
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "POST #create" do

    it "responds successfully with an HTTP 302 status code" do

      post :create
      expect(response).to have_http_status(302)
    end

    it "redirects to the index page" do
      get :create
      expect(response).to redirect_to(books_path)
    end
  end

  describe "GET #edit" do

    it "responds successfully with an HTTP 200 status code" do

      get :edit, params: {id: 1}
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the edit template" do
      get :edit, params: {id: 1}
      expect(response).to render_template("edit")
    end

    it "loads a single book title into @book" do
      
      book = "Title 1"
      get :edit, params: {id: 1}

      expect(assigns(:book)).to eq(book)
    end
  end

  describe "PUT #update" do

    it "responds successfully with an HTTP 302 status code" do
      put :update, params: {id: 1}
      expect(response).to have_http_status(302)
    end

    it "redirects to the index page" do
      put :update, params: {id: 1}
      expect(response).to redirect_to(books_path)
    end
  end

  describe "DELETE #destroy" do

    it "responds successfully with an HTTP 302 status code" do
      delete :destroy, params: {id: 1}
      expect(response).to have_http_status(302)
    end

    it "redirects to the index page" do
      delete :destroy, params: {id: 1}
      expect(response).to redirect_to(books_path)
    end
  end
end