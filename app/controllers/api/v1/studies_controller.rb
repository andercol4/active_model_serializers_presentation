class Api::V1::StudiesController < ApplicationController
  def index
    @studies = Study.all
    render json: @studies
  end
  def show
    @study = Study.find(params[:id])
    render json: @study
  end
end
