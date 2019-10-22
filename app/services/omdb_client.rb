class OmdbClient
    include Singletone 

    def initialize
        @api_key = 'a3d8a758' #possible variant RCreds.fetch(:omdb, :api_key) 
        @root_url = 'http://www.omdbapi.com'
    end
  
    def all(params = {})
        RestClient.get()
    end

    def search(title, search_params = {})
        all(s: query)
    end

    def by_id(id)
        all(i: id)
    end