class StudiesController < ApplicationController
  def index
    @studies = Study.all
    render json: @studies
  end

  def show
    @study = Study.find(params[:id])
    render json: @study
  end

  def new
    @study = Study.new
    render json: @study
  end

  def edit
    @study = Study.find(params[:id])
    render json: @study
  end

  def destroy
    @study = Study.find(params[:id])
  end
end
