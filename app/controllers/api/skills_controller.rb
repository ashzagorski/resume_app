class Api::SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render 'index.json.jbuilder'
  end


  def create
    @skill = Skill.new(
                        skill_name: params[:skill_name],
                        student_id: params[:student_id]
                                  )

    @skill.save
    render 'show.json.jbuilder'
  end

  def show
    @skill = Skill.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
     @skill = Skill.find(params[:id])

    @skill.skill_name = params[:skill_name] || @skill.skill_name
    @skill.student_id = params[:student_id] || @skill.student_id

    @skill.save
    render "show.json.jbuilder"
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    render json: {message: "Skill successfully destroyed"}
  end    
    
  
end
