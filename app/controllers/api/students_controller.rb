class Api::StudentsController < ApplicationController
  def index
    @students = Student.all
    render 'index.json.jbuilder'
  end

  def create
    @student = Student.new(
                            first_name: params[:first_name],
                            last_name: params[:last_name],
                            email: params[:email],
                            phone_number: params[:phone_number],
                            bio: params[:bio],
                            linkedIn_URL: params[:linkedIn_URL],
                            twitter_handle: params[:twitter_handle],
                            personal_website_URL: params[:personal_website_URL],
                            online_resume_URL: params[:online_resume_URL],
                            github_URL: params[:github_URL],
                            photo: params[:photo]
                          )
      if @student.save 
        render "show.json.jbuilder"
      end
  end

  def show
    @student = Student.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @student = Student.find(params[:id])

    @student.first_name = params[:first_name] || @student.first_name
    @student.last_name = params[:last_name] || @student.last_name
    @student.email = params[:email] || @student.email
    @student.phone_number = params[:phone_number] || @student.phone_number
    @student.bio = params[:bio] || @student.bio
    @student.linkedIn_URL = params[:linkedIn_URL] || @student.linkedIn_URL
    @student.twitter_handle = params[:twitter_handle] || @student.twitter_handle
    @student.personal_website_URL = params[:personal_website_URL] || @student.personal_website_URL
    @student.online_resume_URL = params[:online_resume_URL] || @student.online_resume_URL
    @student.github_URL = params[:github_URL] || @student.github_URL
    @student.photo = params[:photo] || @student.photo

    if @product.save
    render "show.json.jbuilder"
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    render json: {message: "Buh Bye!"}
  end
end
