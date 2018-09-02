class Api::BirdsController < ApplicationController

  def index
    @birds = Bird.all
    render "index.json.jbuilder"
  end

  def create
    @bird = Bird.new(
                    species: params[:species], 
                    color: params[:color]
                    )
    @bird.save
    render "show.json.jbuilder"
  end

  def show
    @bird = Bird.find(params[:id])
    render "show.json.jbuilder"
  end

  def update
    @bird = Bird.find(params[:id])
    @bird.species = params[:species] || @bird.species
    @bird.color = params[:color] || @bird.color
    @bird.save
    render "show.json.jbuilder"
  end

  def destroy
    @bird = Bird.find(params[:id])
    @bird.destroy
    render json: {message: "BIRD IS DEAD NOW."}
  end

end
