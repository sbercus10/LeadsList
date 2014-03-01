require 'httparty'
require 'hashie'

class AngelList
  include HTTParty
  base_uri "api.angel.co/1"

  # Usage
  # initialize api call
  # api = AngelList.new

  # Search 
  # api.search query: 'health care', type: "MarketTag"
  def search(options={})
    results = self.class.get "/search", query: options
    JSON.parse(results.body)
  end

  # Find users by tag
  # api.find_users_by_tag tag-id: '13'
  def find_users_by_tag(tag_id, options={})
     results = self.class.get "/tags/#{tag_id}/users", query: options
     JSON.parse(results.body)
  end

end

