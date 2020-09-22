class SignupsController < ApplicationController
  def index

  end

  def new
    @signup = Signup.new
  end

  def create

    @signup = Signup.new(camper: params(:camper).to_i, activity: params(:activity).to_i, start_time: params(:start_time))
    if @signup.valid?
      @signup.save
      redirect_to camper_path(@signup.camper_id)
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def signup_params
    params.require(:signup).permit(:start_time, :camper, :activity)
  end

end
