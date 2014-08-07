class WelcomeController < ApplicationController
  def index
    api_call = RubyApiCall.new.api_call
    @data = CommitsOverTime.new(api_call).graph_data
  end
end