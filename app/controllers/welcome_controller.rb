require 'faraday'
require 'json'

class WelcomeController < ApplicationController
  def index
    api_call = Faraday.new(url: 'https://api.github.com/repos/ruby/ruby/stats/punch_card').get.body
    @api_data = JSON.parse(api_call)
  end
end