class HomeController < ApplicationController
  def index
    @q = params[:q]
    @tweets = search
  end

  private

  def search
    return unless @q && !@q.empty?
    begin
      TwitterClient
        .search("#{@q} -rt", result_type: 'recent')
        .take(10)
    rescue Twitter::Error
      generic_redirect root_url, alert: 'Error'
    end
  end
end
