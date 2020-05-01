class Api::MemesController < ApplicationController

  # before_action :authenticate_user, except: [:index, :show]

  def index
    @memes = Meme.order("created_at DESC")
    render 'index.json.jb'
  end

  def show
    @meme = Meme.find(params[:id])
    render 'show.json.jb'
  end

  # def create
  #   @meme = Meme.create(meme_params)
  #   render json: @meme
  # end

  # private

  #   def meme_params
  #     params.require(:meme).permit(:top_text, :img, :bottom_text, :user_id)
  #   end

  def create
    @meme = Meme.new(
      top_text: params[:top_text],
      bottom_text: params[:bottom_text],
      img: params[:img],
      user_id: 1

    )

    if @meme.save
      render 'show.json.jb'
    else 
      render json: {errors: @memes.errors.full_messages}, status: :unprocessable_entity
    end
  end

#   def update
#     @meme = Meme.find(params[:id])
#     @meme.top_text = params[:top_text] || @meme.top_text
#     @meme.bottom_text = params[:bottom_text] || @meme.bottom_text
#     @meme.img = params[:img] || @meme.img

#     if @meme.save
#       render 'show.json.jb'
#     else 
#       render json: {errors: @meme.errors.full_messages}, status: :unprocessable_entity
#     end
#   end

#   def delete
#     @meme = Meme.find(params[:id])
#     @meme.destroy
#     render json: {message: "Meme successfully destroyed."}
#   end
end
