class PeopleController < ApplicationController
  before_action :find_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all
  end

  def show
  end

  def new
    @person = Person.new
    @person.addresses.build
  end

  def edit
  end

  def create
    person = Person.new(person_params)
    if person.save
      flash[:success] = "Person created"
      redirect_to people_url
    else
      flash[:error] = "Unable to create person"
      render 'new'
    end
  end

  def update
    if @person.update(person_params)
      flash[:success] = "Person updated"
      redirect_to people_url
    else
      flash[:error] = "Unable to update person"
      render 'edit'
    end
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

    def person_params
      params.require(:person).permit(:first_name, :last_name,
                                      addresses_attributes: [
                                        :street_address,
                                        :city,
                                        :state,
                                        :zip,
                                        :id ])
    end
end
