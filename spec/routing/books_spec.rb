require 'rails_helper'

RSpec.describe "routing to books", :type => :routing do
  it "routes /books to books#index" do
    expect(:get => "/books").to route_to(
      :controller => "books",
      :action => "index"
    )
  end
  it "routes /books/:id to books#show" do
    expect(:get => "/books/1").to route_to(
      :controller => "books",
      :action => "show",
      :id => "1"
    )
  end
  it "routes GET /books/new to books#new" do
    expect(:get => "/books/new").to route_to(
      :controller => "books",
      :action => "new"
    )
  end
  it "routes POST /books to books#create" do
    expect(:post => "/books").to route_to(
      :controller => "books",
      :action => "create"
    )
  end
  it "routes DELETE /books/:id to books#destroy" do
    expect(:delete => "/books/1").to route_to(
      :controller => "books",
      :action => "destroy",
      :id => "1"
    )
  end
  it "routes GET /books/:id/edit to books#edit" do
    expect(:get => "/books/1/edit").to route_to(
      :controller => "books",
      :action => "edit",
      :id => "1"
    )
  end
  it "routes PUT /books/:id to books#update" do
    expect(:put => "/books/1").to route_to(
      :controller => "books",
      :action => "update",
      :id => "1"
    )
  end
end