class Api::LizardsController < ApplicationController

  def index
    @lizards = Lizard.all
    render "index.json.jbuilder"
  end

  def create
    @lizard = Lizard.new(
                        color: params[:color], 
                        lifespan: params[:lifespan]
                        )
    @lizard.save
    render "show.json.jbuilder"
  end

  def show
    @lizard = Lizard.find(params[:id])
    render "show.json.jbuilder"
  end

  def update
    @lizard = Lizard.find(params[:id])
    @lizard.color = params[:color] || @lizard.color
    @lizard.lifespan = params[:lifespan] || @lizard.lifespan
    @lizard.save
    render "show.json.jbuilder"
  end

  def destroy
    @lizard = Lizard.find(params[:id])
    @lizard.destroy
    render json: {message: "Lizard destroyed."}
  end

end
