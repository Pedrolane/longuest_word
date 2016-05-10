require "game"

class GamesController < ApplicationController
  def game
    @grid = generate_grid(10)
    @start = Time.now
  end
  def score
    @attempt = params[:attempt]
    @grid = params[:grid].split("")
    @result = run_game(@attempt, @grid, params[:start].to_datetime, Time.now)
  end
end
