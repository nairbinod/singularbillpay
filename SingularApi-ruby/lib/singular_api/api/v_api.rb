require "uri"

module SingularApi
  class VApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_query_request SbpQueryRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<SbpQueryRequest>]
    def get_report(sbp_query_request, opts = {})
      data, status_code, headers = get_report_with_http_info(sbp_query_request, opts)
      return data
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_query_request SbpQueryRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SbpQueryRequest>, Fixnum, Hash)>] Array<SbpQueryRequest> data, response status code and response headers
    def get_report_with_http_info(sbp_query_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: VApi#get_report ..."
      end
      
      # verify the required parameter 'sbp_query_request' is set
      fail "Missing the required parameter 'sbp_query_request' when calling get_report" if sbp_query_request.nil?
      
      # resource path
      path = "/v1/Reports".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(sbp_query_request)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<SbpQueryRequest>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VApi#get_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_profile SbpProfile
    # @param [Hash] opts the optional parameters
    # @return [SbpProfile]
    def create_profile(sbp_profile, opts = {})
      data, status_code, headers = create_profile_with_http_info(sbp_profile, opts)
      return data
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_profile SbpProfile
    # @param [Hash] opts the optional parameters
    # @return [Array<(SbpProfile, Fixnum, Hash)>] SbpProfile data, response status code and response headers
    def create_profile_with_http_info(sbp_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: VApi#create_profile ..."
      end
      
      # verify the required parameter 'sbp_profile' is set
      fail "Missing the required parameter 'sbp_profile' when calling create_profile" if sbp_profile.nil?
      
      # resource path
      path = "/v1/profile/create".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(sbp_profile)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SbpProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VApi#create_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_profile SbpProfile
    # @param [Hash] opts the optional parameters
    # @return [SbpProfile]
    def delete_profile(sbp_profile, opts = {})
      data, status_code, headers = delete_profile_with_http_info(sbp_profile, opts)
      return data
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_profile SbpProfile
    # @param [Hash] opts the optional parameters
    # @return [Array<(SbpProfile, Fixnum, Hash)>] SbpProfile data, response status code and response headers
    def delete_profile_with_http_info(sbp_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: VApi#delete_profile ..."
      end
      
      # verify the required parameter 'sbp_profile' is set
      fail "Missing the required parameter 'sbp_profile' when calling delete_profile" if sbp_profile.nil?
      
      # resource path
      path = "/v1/profile/delete".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(sbp_profile)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SbpProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VApi#delete_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_query_request SbpQueryRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<SbpProfile>]
    def query_profile(sbp_query_request, opts = {})
      data, status_code, headers = query_profile_with_http_info(sbp_query_request, opts)
      return data
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_query_request SbpQueryRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SbpProfile>, Fixnum, Hash)>] Array<SbpProfile> data, response status code and response headers
    def query_profile_with_http_info(sbp_query_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: VApi#query_profile ..."
      end
      
      # verify the required parameter 'sbp_query_request' is set
      fail "Missing the required parameter 'sbp_query_request' when calling query_profile" if sbp_query_request.nil?
      
      # resource path
      path = "/v1/profile/query".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(sbp_query_request)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<SbpProfile>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VApi#query_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_recurring_request SbpRecurringRequest
    # @param [Hash] opts the optional parameters
    # @return [SbpRecurringRequest]
    def cancel_recurring(sbp_recurring_request, opts = {})
      data, status_code, headers = cancel_recurring_with_http_info(sbp_recurring_request, opts)
      return data
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_recurring_request SbpRecurringRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(SbpRecurringRequest, Fixnum, Hash)>] SbpRecurringRequest data, response status code and response headers
    def cancel_recurring_with_http_info(sbp_recurring_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: VApi#cancel_recurring ..."
      end
      
      # verify the required parameter 'sbp_recurring_request' is set
      fail "Missing the required parameter 'sbp_recurring_request' when calling cancel_recurring" if sbp_recurring_request.nil?
      
      # resource path
      path = "/v1/recurring/cancel".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(sbp_recurring_request)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SbpRecurringRequest')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VApi#cancel_recurring\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_recurring_request SbpRecurringRequest
    # @param [Hash] opts the optional parameters
    # @return [SbpResponse]
    def create_recurring(sbp_recurring_request, opts = {})
      data, status_code, headers = create_recurring_with_http_info(sbp_recurring_request, opts)
      return data
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_recurring_request SbpRecurringRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(SbpResponse, Fixnum, Hash)>] SbpResponse data, response status code and response headers
    def create_recurring_with_http_info(sbp_recurring_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: VApi#create_recurring ..."
      end
      
      # verify the required parameter 'sbp_recurring_request' is set
      fail "Missing the required parameter 'sbp_recurring_request' when calling create_recurring" if sbp_recurring_request.nil?
      
      # resource path
      path = "/v1/recurring/create".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(sbp_recurring_request)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SbpResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VApi#create_recurring\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_query_request SbpQueryRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<SbpRecurringRequest>]
    def query_recurring(sbp_query_request, opts = {})
      data, status_code, headers = query_recurring_with_http_info(sbp_query_request, opts)
      return data
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_query_request SbpQueryRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SbpRecurringRequest>, Fixnum, Hash)>] Array<SbpRecurringRequest> data, response status code and response headers
    def query_recurring_with_http_info(sbp_query_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: VApi#query_recurring ..."
      end
      
      # verify the required parameter 'sbp_query_request' is set
      fail "Missing the required parameter 'sbp_query_request' when calling query_recurring" if sbp_query_request.nil?
      
      # resource path
      path = "/v1/recurring/query".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(sbp_query_request)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<SbpRecurringRequest>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VApi#query_recurring\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Please provide a description for the endpoint
    # @param [Hash] opts the optional parameters
    # @return [SbpResponse]
    def get_status(opts = {})
      data, status_code, headers = get_status_with_http_info(opts)
      return data
    end

    # 
    # Please provide a description for the endpoint
    # @param [Hash] opts the optional parameters
    # @return [Array<(SbpResponse, Fixnum, Hash)>] SbpResponse data, response status code and response headers
    def get_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: VApi#get_status ..."
      end
      
      # resource path
      path = "/v1/transaction".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SbpResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VApi#get_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_request SbpRequest
    # @param [Hash] opts the optional parameters
    # @return [SbpResponse]
    def post_transaction(sbp_request, opts = {})
      data, status_code, headers = post_transaction_with_http_info(sbp_request, opts)
      return data
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_request SbpRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(SbpResponse, Fixnum, Hash)>] SbpResponse data, response status code and response headers
    def post_transaction_with_http_info(sbp_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: VApi#post_transaction ..."
      end
      
      # verify the required parameter 'sbp_request' is set
      fail "Missing the required parameter 'sbp_request' when calling post_transaction" if sbp_request.nil?
      
      # resource path
      path = "/v1/transaction".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(sbp_request)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SbpResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VApi#post_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_request SbpRequest
    # @param [Hash] opts the optional parameters
    # @return [SbpResponse]
    def authorize(sbp_request, opts = {})
      data, status_code, headers = authorize_with_http_info(sbp_request, opts)
      return data
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_request SbpRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(SbpResponse, Fixnum, Hash)>] SbpResponse data, response status code and response headers
    def authorize_with_http_info(sbp_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: VApi#authorize ..."
      end
      
      # verify the required parameter 'sbp_request' is set
      fail "Missing the required parameter 'sbp_request' when calling authorize" if sbp_request.nil?
      
      # resource path
      path = "/v1/transaction/auth".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(sbp_request)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SbpResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VApi#authorize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_request SbpRequest
    # @param [Hash] opts the optional parameters
    # @return [SbpResponse]
    def capture(sbp_request, opts = {})
      data, status_code, headers = capture_with_http_info(sbp_request, opts)
      return data
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_request SbpRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(SbpResponse, Fixnum, Hash)>] SbpResponse data, response status code and response headers
    def capture_with_http_info(sbp_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: VApi#capture ..."
      end
      
      # verify the required parameter 'sbp_request' is set
      fail "Missing the required parameter 'sbp_request' when calling capture" if sbp_request.nil?
      
      # resource path
      path = "/v1/transaction/capture".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(sbp_request)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SbpResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VApi#capture\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_query_request SbpQueryRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<SbpResponse>]
    def query_transaction(sbp_query_request, opts = {})
      data, status_code, headers = query_transaction_with_http_info(sbp_query_request, opts)
      return data
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_query_request SbpQueryRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SbpResponse>, Fixnum, Hash)>] Array<SbpResponse> data, response status code and response headers
    def query_transaction_with_http_info(sbp_query_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: VApi#query_transaction ..."
      end
      
      # verify the required parameter 'sbp_query_request' is set
      fail "Missing the required parameter 'sbp_query_request' when calling query_transaction" if sbp_query_request.nil?
      
      # resource path
      path = "/v1/transaction/query".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(sbp_query_request)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<SbpResponse>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VApi#query_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_request SbpRequest
    # @param [Hash] opts the optional parameters
    # @return [SbpResponse]
    def refund(sbp_request, opts = {})
      data, status_code, headers = refund_with_http_info(sbp_request, opts)
      return data
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_request SbpRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(SbpResponse, Fixnum, Hash)>] SbpResponse data, response status code and response headers
    def refund_with_http_info(sbp_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: VApi#refund ..."
      end
      
      # verify the required parameter 'sbp_request' is set
      fail "Missing the required parameter 'sbp_request' when calling refund" if sbp_request.nil?
      
      # resource path
      path = "/v1/transaction/refund".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(sbp_request)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SbpResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VApi#refund\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_request SbpRequest
    # @param [Hash] opts the optional parameters
    # @return [SbpResponse]
    def void_transaction(sbp_request, opts = {})
      data, status_code, headers = void_transaction_with_http_info(sbp_request, opts)
      return data
    end

    # 
    # Please provide a description for the endpoint
    # @param sbp_request SbpRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(SbpResponse, Fixnum, Hash)>] SbpResponse data, response status code and response headers
    def void_transaction_with_http_info(sbp_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: VApi#void_transaction ..."
      end
      
      # verify the required parameter 'sbp_request' is set
      fail "Missing the required parameter 'sbp_request' when calling void_transaction" if sbp_request.nil?
      
      # resource path
      path = "/v1/transaction/void".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'application/xml']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'application/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(sbp_request)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SbpResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VApi#void_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




