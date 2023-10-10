class NamesController < ApplicationController
  @@names = []
  def index
    @names = @@names
  end
  def view
    @id = @@names.find_index(params[:name])
    @name = params[:name]
  end
  def insert
    @@names.push(params[:name])
    redirect_to "/names"
  end
  def new
  end
  def create
    @@names.push(params["name"])
    redirect_to "/names"
  end
  def delete
    @@names.delete(params[:name])
    redirect_to "/names"
  end

  def img
  end
end
