class MenteesController < ApplicationController
  def index
    @mentees = Mentee.all
  end

  def show
    @mentee = Mentee.find(params[:id])
  end

  def new
    @mentee = Mentee.new
  end

  def create
    @mentee = Mentee.new(name: "Stefany", email: "stefany@gmail.com")
    if @mentee.save
      redirect_to @mentee
    else
      render :new, status: :unprocessable_entity
    end
  end
end
