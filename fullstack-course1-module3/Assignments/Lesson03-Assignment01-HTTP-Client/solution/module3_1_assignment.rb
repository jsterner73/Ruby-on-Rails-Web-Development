require 'httparty'

class Recipe
  include HTTParty

<<<<<<< HEAD
  key_value = ENV['FOOD2FORK_KEY']
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  base_uri "http://#{hostport}/api"

  default_params key: key_value
=======
  base_uri "http://food2fork.com/api"
  default_params key: ENV["FOOD2FORK_KEY"]
>>>>>>> 2c439b8be001a1e2440496d55bde3b2670224c02
  format :json

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end

<<<<<<< HEAD
print Recipe.for "chocolate"
=======
>>>>>>> 2c439b8be001a1e2440496d55bde3b2670224c02
