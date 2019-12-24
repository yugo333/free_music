class DivisionsController < ApplicationController
  def index
    @musics = Music.all
  end
end
