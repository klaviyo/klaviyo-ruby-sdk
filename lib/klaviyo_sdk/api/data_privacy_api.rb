=begin
#Klaviyo API

#Empowering creators to own their destiny

The version of the OpenAPI document: 2022.03.29

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module Klaviyo
  class DataPrivacyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Request a Deletion
    # Request a data privacy-compliant deletion for the person record corresponding to an email address, phone number, or person identifier.   **If multiple person records exist for the provided identifier, only one of them will be deleted.**  The arguments should be sent as content type application/json.           Note that only **one** identifier (email, phone_number, or person_id) can be specified.  In addition to your API key, you need to set exactly one of the following parameters: `email`, `phone_number`, `or person_id`, along with the associated `string` value.   Examples:  Email:    `{\"email\":\"abraham.lincoln@klaviyo.com\"}`    Phone Number:      `{\"phone_number\":\"+13239169023\"}`    Person ID:      `{\"person_id\":\"PERSON_ID\"}` 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :body 
    # @return [String]
    def request_deletion(opts = {})
      data, _status_code, _headers = request_deletion_with_http_info(opts)
      data
    end

    # Request a Deletion
    # Request a data privacy-compliant deletion for the person record corresponding to an email address, phone number, or person identifier.   **If multiple person records exist for the provided identifier, only one of them will be deleted.**  The arguments should be sent as content type application/json.           Note that only **one** identifier (email, phone_number, or person_id) can be specified.  In addition to your API key, you need to set exactly one of the following parameters: &#x60;email&#x60;, &#x60;phone_number&#x60;, &#x60;or person_id&#x60;, along with the associated &#x60;string&#x60; value.   Examples:  Email:    &#x60;{\&quot;email\&quot;:\&quot;abraham.lincoln@klaviyo.com\&quot;}&#x60;    Phone Number:      &#x60;{\&quot;phone_number\&quot;:\&quot;+13239169023\&quot;}&#x60;    Person ID:      &#x60;{\&quot;person_id\&quot;:\&quot;PERSON_ID\&quot;}&#x60; 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :body 
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def request_deletion_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DataPrivacyApi.request_deletion ...'
      end
      # resource path
      local_var_path = '/v2/data-privacy/deletion-request'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"DataPrivacyApi.request_deletion",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DataPrivacyApi#request_deletion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
