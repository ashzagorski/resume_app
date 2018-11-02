class Api::EducationsController < ApplicationController
  def index
    @educations = Education.all
    render 'index.json.jbuilder'
  end

  def create 
    @education = Education.new(
                                start_date: params[:start_date],
                                end_date: params[:end_date],
                                degree: params[:degree],
                                university: params[:university],
                                details: params[:details]

                                )
    if @education = Education.save
      render json: {message: 'Education created sucessfully'}
    else
      render json: {errors: @education.errors.full_messages},
        status: :unprocessable_equity
    end 
  end

  def show
    @education = Education.find(params[:id])
    render 'show.json.jbuilder'
  end  

  def update
    @education = Education.find(params[:id])

    @education.start_date = params[:start_time] || @education.start_time
    @education.end_date = params[:end_date] || @education.end_date
    @education.degree = params[:degree] || @education.degree
    @education.university = params[:university] || @education.university
    @education.details = params[:details] || @education.details

   if @education.save
      render 'show.json.jbuilder'
    else
      render json: [errors: @education.errors.full_messages], status: :unprocessable_entity
    end
  end

  def destroy
    @education = Education.find(params[:id])
    @education.destroy
    render json: {status: "Education was destroyed"}
  end 

end
