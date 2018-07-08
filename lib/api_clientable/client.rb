require 'api_clientable/connection'
require 'api_clientable/configuration'
require 'api_clientable/client/authentication'

module ApiClientable
  module Client
    include ApiClientable::Configuration
    include ApiClientable::Connection
    include ApiClientable::Client::Authentication

    def initialize(config = {})
      defaults

      config.each do |k,v|
        instance_variable_set(:"@#{key}", v)
      end
    end
  end
end
