class ScoresController < ApplicationController
  require "http"
  # require "flat_api"
  # # setup authorization
  # FlatApi.configure do |config|
  #   # Configure OAuth2 access token for authorization: OAuth2
  #   config.access_token = "f664a6d95bd8ab6fe43f40c33ff912835bb7aabd1b373fe2ebf2c62cd03b0b5b7f30088b0da42a9b28a9ba1d712fa3897a57aed6df5b3456550f603b8bb5400c"
  # end

  # api_instance = FlatApi::ScoreApi.new

  # score = "630698c8141a680014102256" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`).

  # opts = {
  #   body: FlatApi::ScoreModification.new, # ScoreModification |
  # }

  # begin
  #   #Edit a score's metadata
  #   result = api_instance.edit_score(score, opts)
  #   p result
  # rescue FlatApi::ApiError => e
  #   puts "Exception when calling ScoreApi->edit_score: #{e}"
  # end

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
    # score.score = params[:score] || score.score
    score.save
    render json: score.as_json
  end

  def destroy
    score = Score.find_by(id: params[:id])
    score.destroy
    render json: { message: "Score successfully destroyed." }
  end
end
