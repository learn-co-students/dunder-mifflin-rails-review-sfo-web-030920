class DogsController < ApplicationController
  before_action :find_dog, only: [:show, :edit, :update, :destroy]

  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def show
  end

  def edit
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.valid?
      @dog.save
      redirect_to @dog
    else
      render :new
    end
  end

  def update
    if @dog.update(dog_params)
      redirect_to @dog
    else
      render :edit
    end
  end

  def destroy

  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end

  def find_dog
    @dog = Dog.find(params[:id])
  end
end
