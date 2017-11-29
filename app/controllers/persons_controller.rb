class PersonsController < ApplicationController
  def index
    @Persons = Person.all
  end

  def show
    @Person = Person.find(params[:id])
  end

  def edit
    @Person = Person.find(params[:id])
  end

  def new
  end
end
