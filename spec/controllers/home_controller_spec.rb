require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe '#index' do
    context 'with invalid client settings' do
      render_views

      before do
        # invalid twitter client
        TwitterClient = Twitter::REST::Client.new
      end

      it 'redirects to root_url' do
        get :index, params: { q: 'ruby' }
        expect(response).to redirect_to(root_url)
      end
    end
  end
end
