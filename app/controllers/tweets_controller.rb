class TweetsController < ApplicationController
    def index
        @tweet = Tweet.new
        @tweets = Tweet.all
    end

    def create 
        @tweet = Tweet.new(tweet_params)

        if @tweet.save
            redirect_to root_path, status: :created
        else
            redirect_to root_path, status: :bad_request
        end
    end

    private

    def tweet_params
        params.require(:tweet).permit(:name, :body)
    end
end
