class MusicsController < ApplicationController
  def index
    @musics = Music.all
  end
  def new
  end
  def create
    # render plain: params[:article].inspect
    @music = Music.new(music_prams)
                   #  (params[:music])
    @music.save

    redirect_to music_path(@music)
  end
  def show
    @music = Music.find params[:id]
  end


  def music_prams
    params.require(:music).permit(:name, :BPM, :mp3)
  end
end
