class Api::MemesController < ApplicationController
  def index
    @memes = Meme.all
    render 'index.json.jb'
  end

  def show
    @meme = Meme.find(params[:id])
    render 'show.json.jb'
  end

  def create
    @meme = Meme.new(
      top_text = params[:top_text],
      bottom_text = params[:bottom_text],
      img = params[:img],
      user_id = params[:user_id]
    )

    if @meme.save
      render 'show.json.jb'
    else 
      render json: {errors: @memes.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @meme = Meme.find(params[:id])
    @meme.top_text = params[:top_text] || @meme.top_text
    @meme.bottom_text = params[:bottom_text] || @meme.bottom_text
    @meme.img = params[:img] || @meme.img

    if @meme.save
      render 'show.json.jb'
    else 
      render json: {errors: @memes.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def delete
    @meme = Meme.find(params[:id])
    @meme.destroy
    render json: {message: "Meme successfully destroyed."}
  end
end
