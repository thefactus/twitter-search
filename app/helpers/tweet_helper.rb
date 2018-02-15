module TweetHelper
  def tweet_description(tweet)
    "#{tweet.user.screen_name}: #{tweet.text}"
  end
end
