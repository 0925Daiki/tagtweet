class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all.order(created_at: :desc)
  end

  def new
    @tweet = TweetTag.new
  end

  def create
    @tweet = TweetsTag.new(tweet_params)
    ## 「もしデータベースに保存できたらトップページへ、保存できなければ再度newアクションが起動する」
    if @tweet.valid?
      @tweet.save
      return redirect_to root_path
    else
      render "new"
    end
  end

  private

  def tweet_params
    params.require(:tweets_tag).parmit(:message, :name)
  end

end
