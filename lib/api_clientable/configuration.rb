module ApiClientable
  module Configuration
    attr_accessor :api_endpoint, :username, :password, :token

    def configure
      yield self
    end

    def defaults
      @api_endpoint = ENV['API_ENDPOINT']
      @username     = ENV['USERNAME']
      @password     = ENV['PASSWORD']
      @token        = ENV['TOKEN']
    end
  end
end
