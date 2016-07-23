class TweetsController < ApplicationController

  def index
    @tweets = Tweet.order('updated_at DESC')
  end

  def create
    Tweet.create(tweet_params)
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def tweet_params
    params.permit(:name, :image, :text)
  end

end
