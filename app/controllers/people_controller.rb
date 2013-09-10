class PeopleController < ApplicationController
  before_action :find_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def destroy
    if @person.destroy
      flash[:success] = "Person deleted"
    else
      flash[:error] = "Unable to delete person"
    end
    redirect_to people_url
  end

  private
    def find_person
      @person = Person.find(params[:id])
    end
end
