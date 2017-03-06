# Common files
require 'singular_api/api_client'
require 'singular_api/api_error'
require 'singular_api/version'
require 'singular_api/configuration'

# Models
require 'singular_api/models/sbp_request'
require 'singular_api/models/sbp_response'
require 'singular_api/models/sbp_recurring_request'
require 'singular_api/models/sbp_query_request'
require 'singular_api/models/sbp_profile'

# APIs
require 'singular_api/api/v_api'

module SingularApi
  class << self
    # Customize default settings for the SDK using block.
    #   SingularApi.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
