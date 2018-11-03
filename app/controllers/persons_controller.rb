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
  
  def destroy
    @Person = Person.find(params[:id])
    redirect_to persons_path
  end
  
  def new
    @Person = Person.new()
  end
  
  def create
    @Person = Person.new(:age, :hair_color, :eye_color, :gender, :alive)

    if @Person.save
      redirect_to persons_path
    else
      render :new
    end
  end

  def update
    @Person = Person.find(params[:id])

    if @Person.update(person_params)
      redirect_to persons_path
    else
      render :edit
    end
  end

  private

  def person_params
    params.require(:Person).permit(:age, :hair_color, :eye_color, :gender, :alive)
  end

end
