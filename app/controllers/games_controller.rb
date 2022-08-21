class GamesController < ApplicationController
  def new
    @random_letters = 10.times.map { ('a'..'z').to_a.sample }
  end

  def score
    @guess = params[:word]
    @grid = params[:grid]
    word_in_grid_check(@guess, @grid)
  end
end
