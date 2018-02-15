class HomeController < ApplicationController
  def index
    @q = params[:q]
    @tweets = search(@q)
  end

  private

  def search(search_term)
    return if @q&.empty?
    TwitterClient
      .search("#{search_term} -rt", result_type: 'recent')
      .take(10)
  end
end
