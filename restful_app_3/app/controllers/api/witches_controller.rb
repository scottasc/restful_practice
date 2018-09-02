class Api::WitchesController < ApplicationController

  def index
    @witches = Witch.all
    render "index.json.jbuilder"
  end

  def create
    @witch = Witch.new(
                      name: params[:name], 
                      favorite_spell: params[:favorite_spell]
                      )
    @witch.save
    render "show.json.jbuilder"
  end

  def show
    @witch = Witch.find(params[:id])
    render "show.json.jbuilder"
  end

  def update
    @witch = Witch.find(params[:id])
    @witch.name = params[:name] || @witch.name
    @witch.favorite_spell = params[:favorite_spell] || @witch.favorite_spell
    @witch.save
    render "show.json.jbuilder"
  end

  def destroy
    @witch = Witch.find(params[:id])
    @witch.destroy
    render json: {message: "Witch destroyed!"}
  end
  
end
