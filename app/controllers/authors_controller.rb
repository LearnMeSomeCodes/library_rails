class AuthorsController < ApplicationController
  layout "resources"

  # GET /authors
  def index
    @authors = Author.all
  end

  # GET /authors/1
  def show
    @author = Author.find(params[:id])
  end

  # GET /authors/new
  def new
    @author = Author.new()
  end

  # POST /authors
  def create
    # write code to create an author using the author info hash
    @author = Author.new(author_params)
    if @author.save
      #success case
      redirect_to author_path(@author)
    else
      render 'new'
    end
  end

  # write the edit and update actions and view(s) as needed so we can edit existing authors
  # the form to edit an author should be pre-populated
  # GET /authors/:id/edit
  def edit
    @author = Author.find(params[:id])
  end

  # PUT /authors/:id
  # modify the update action so that it behaves like our 'create' action
  # that is, it should redisplay the form if you update an object that has errors
  def update
    @author = Author.find(params[:id])

    if @author.update(author_params)
      redirect_to author_path(@author)
    else
      render 'edit'
    end
  end

  # DELETE /authors/1
  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    redirect_to authors_path
  end

  def author_params
    params.require(:author).permit(:first_name, :last_name, :nationality, :birth_year)
  end

  def say_hello
    "hello"
  end

end
