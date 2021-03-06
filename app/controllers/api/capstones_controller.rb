class Api::CapstonesController < ApplicationController
  def index
    @capstones = Capstone.all
    render 'index.json.jbuilder'
  end 

  def create
    @capstone = Capstone.new(
                              name: params[:name],
                              description: params[:description],
                              url: params[:url],
                              screenshot: params[:screenshot]
                              )
    if @capstone = Capstone.save
      render json: {message: 'Capstone created sucessfully'}
    else
      render json: {errors: @capstone.errors.full_messages},
        status: :unprocessable_equity
    end 
  end 

  def show
    @capstone= Capstone.find(params[:id])
    render 'show.json.jbuilder'
  end  

  def update
    @capstone = Capstone.find(params[:id])

    @capstone.name = params[:name] || @capstone.name
    @capstone.description = params[:description] || @capstone.description
    @capstone.url = params[:url] || @capstone.url
    @capstone.screenshot = params[:screenshot] || @capstone.screenshot

   if @capstone.save
      render 'show.json.jbuilder'
    else
      render json: [errors: @capstone.errors.full_messages], status: :unprocessable_entity
    end
  end

  def destroy
    @capstone = Capstone.find(params[:id])
    @capstone.destroy
    render json: {status: "Capstone was destroyed"}
  end 
end
