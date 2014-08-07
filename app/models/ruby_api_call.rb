require 'faraday'
require 'json'

class RubyApiCall

  def api_call
    api_call = Faraday.new(url: 'https://api.github.com/repos/ruby/ruby/stats/punch_card').get.body
    JSON.parse(api_call)
  end

end