require 'rails_helper'

RSpec.describe TweetHelper, type: :helper do
  describe '#tweet_description' do
    before do
      user = OpenStruct.new(screen_name: 'Pablo')
      @tweet = OpenStruct.new(user: user, text: 'lorem ipsum')
    end

    it 'returns a formatted tweet' do
      expect(helper.tweet_description(@tweet)).to eq('Pablo: lorem ipsum')
    end
  end
end
