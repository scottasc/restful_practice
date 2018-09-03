class Api::LanguagesController < ApplicationController

  def index
    @languages = Language.all
    render "index.json.jbuilder"
  end

  def create
    @language = Language.new(
                            name: params[:name],
                            family: params[:family]
                            )
    @language.save
    render "show.json.jbuilder"
  end

  def show
    @language = Language.find(params[:id])
    render "show.json.jbuilder"
  end

  def update
    @language = Language.find(params[:id])
    @language.name = params[:name] || @language.name
    @language.family = params[:family] || @language.family
    @language.save
    render "show.json.jbuilder"
  end

  def destroy
    @language = Language.find(params[:id])
    @language.destroy
    render json: {message: "Language destroyed!"}
  end

end
