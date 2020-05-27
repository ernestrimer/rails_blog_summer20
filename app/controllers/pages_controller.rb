class PagesController < ApplicationController
  #the typical methods in the Controller are index, show, new, create, edit, update, destroy
  #add some contents of things you can do
  #Note that the typical pattern of the controller is always the same.  The only thing that would change are the model names and the instance variable names.
  
  def index
    @pages = Page.all #returns an array of all of the pages
    #renders the index.html.erb file
  end

  def show
    #return a single page with a specific id
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new #creates page only in memory, not to the database
  end

  def create
    @page = Page.new(pages_params)
    if @page.save
      redirect_to pages_path
    else
      render :new #this brings back def new
    end
  end

  def edit
    
  end

  def update

  end

  def destory

  end

  private
    def pages_params
      params.required(:page).permit(:title, :author, :body) #This is a secure way to access info from a database without allowing any hacker sql commands to get additional data from db.
    end
end