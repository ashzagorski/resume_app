class Api::ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    render 'index.json.jbuilder'
  end

  def create
    @experience = Experience.new(
                                  start_time: params[:start_time],
                                  end_time: params[:end_time],
                                  job_title: params[:job_title],
                                  company_name: params[:company_name],
                                  details: params[:details],
                                  student_id: params[:student_id]
                                  )

    @experience.save
    render 'show.json.jbuilder'
  end

  def show
    @experience = Experience.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @experience = Experience.find(params[:id])

    @experience.start_time = params[:start_time] || @experience.start_time
    @experience.end_time = params[:end_time] || @experience.end_time
    @experience.job_title = params[:job_title] || @experience.job_title
    @experience.company_name = params[:company_name] || @experience.company_name
    @experience.details = params[:details] || @experience.details


    @experience.save
    render "show.json.jbuilder"
  end

  def destroy
    @experience = Experiences.find(params[:id])
    @experience.destroy
    render json: {message: "Experience successfully destroyed"}
  end

end
