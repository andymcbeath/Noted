class ScoresController < ApplicationController
  require "http"

  def index
    scores = Score.all
    render json: scores.as_json
  end

  def create
    score = Score.new(
      title: params[:title],
      composer: params[:composer],
      score: params[:score],
    )
    score.save
    render json: score.as_json
  end

  def show
    score = Score.find_by(id: params[:id])
    render json: score.as_json
  end

  def update
    score = Score.find_by(id: params[:id])
    score.title = params[:title] || score.title
    score.composer = params[:composer] || score.composer
    score.save
    render json: score.as_json
  end

  def destroy
    score = Score.find_by(id: params[:id])
    score.destroy
    render json: { message: "Score successfully destroyed." }
  end
end
