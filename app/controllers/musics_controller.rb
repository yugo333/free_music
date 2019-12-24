class MusicsController < ApplicationController

  
  def index
    @musics = Music.all
  end

  def new
  end

  def create
    # render plain: params[:article].inspect
    @music = Music.new(music_params)
                   #  (params[:music])
    if@music.save
    redirect_to music_path(@music)
    else
      render :new
    end
  end

  def show
    @music = Music.find params[:id]
  end

  def edit
    @music = Music.find params[:id]
  end

  def update
    @music = Music.find params[:id]
    if @music.update(music_params)
    redirect_to music_path(@music)
    else
      render :edit
    end
  end

  def destroy
    @music = Music.find params[:id]
    @music.destroy
    redirect_to divisions_path
  end

  def music_params
    params.require(:music).permit(:name, :BPM, :mp3,:youtube)
  end
end
