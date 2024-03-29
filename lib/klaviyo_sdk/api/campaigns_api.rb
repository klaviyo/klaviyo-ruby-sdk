=begin
#Klaviyo API

#Empowering creators to own their destiny

The version of the OpenAPI document: 2022.03.29

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module Klaviyo
  class CampaignsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel a Campaign
    # Cancels a campaign send. Marks a campaign as cancelled regardless of it's current status.
    # @param campaign_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Campaign]
    def cancel_campaign(campaign_id, opts = {})
      data, _status_code, _headers = cancel_campaign_with_http_info(campaign_id, opts)
      data
    end

    # Cancel a Campaign
    # Cancels a campaign send. Marks a campaign as cancelled regardless of it&#39;s current status.
    # @param campaign_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Campaign, Integer, Hash)>] Campaign data, response status code and response headers
    def cancel_campaign_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.cancel_campaign ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling CampaignsApi.cancel_campaign"
      end
      # resource path
      local_var_path = '/v1/campaign/{campaign_id}/cancel'.sub('{' + 'campaign_id' + '}', CGI.escape(campaign_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:debug_return_type] || 'Campaign'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"CampaignsApi.cancel_campaign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#cancel_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Clone a Campaign
    # Creates a copy of a campaign. The new campaign starts as a draft.
    # @param campaign_id [String] 
    # @param name [String] The name for the new campaign. All other properties of the campaign will remain the same. Note, the template for the new campaign will be cloned from the existing template so changes to the existing campaign&#39;s content will not alter the content of the new campaign.
    # @param list_id [String] The list you will send the campaign to.
    # @param [Hash] opts the optional parameters
    # @return [Campaign]
    def clone_campaign(campaign_id, name, list_id, opts = {})
      data, _status_code, _headers = clone_campaign_with_http_info(campaign_id, name, list_id, opts)
      data
    end

    # Clone a Campaign
    # Creates a copy of a campaign. The new campaign starts as a draft.
    # @param campaign_id [String] 
    # @param name [String] The name for the new campaign. All other properties of the campaign will remain the same. Note, the template for the new campaign will be cloned from the existing template so changes to the existing campaign&#39;s content will not alter the content of the new campaign.
    # @param list_id [String] The list you will send the campaign to.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Campaign, Integer, Hash)>] Campaign data, response status code and response headers
    def clone_campaign_with_http_info(campaign_id, name, list_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.clone_campaign ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling CampaignsApi.clone_campaign"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CampaignsApi.clone_campaign"
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling CampaignsApi.clone_campaign"
      end
      # resource path
      local_var_path = '/v1/campaign/{campaign_id}/clone'.sub('{' + 'campaign_id' + '}', CGI.escape(campaign_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['name'] = name
      form_params['list_id'] = list_id

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:debug_return_type] || 'Campaign'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"CampaignsApi.clone_campaign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#clone_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create New Campaign
    # Creates a new campaign. The created campaign is a draft and is not automatically sent.
    # @param list_id [String] The list you will send the campaign to.
    # @param template_id [String]  The template that will define the content of the page. Note: the Email Template is copied when creating this campaign, so future changes to that Email Template will not alter the content of this campaign. 
    # @param from_email [String] The email address your email will be sent from and will be used in the &#x60;reply-to&#x60; header.
    # @param from_name [String] The name or label associated with the email address you&#39;re sending from.
    # @param subject [String] The email subject of the campaign
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name If not specified, this will default to the subject of the campaign. (default to 'Campaign Name')
    # @option opts [Boolean] :use_smart_sending If set, limits the number of emails sent to an individual within a short period. Valid values are &#x60;true&#x60; and &#x60;false&#x60;. If not specified, defaults to &#x60;true&#x60;. (default to true)
    # @option opts [Boolean] :add_google_analytics If specified, adds Google Analytics tracking tags to links. Valid values are &#x60;true&#x60; and &#x60;false&#x60;. If not specified, defaults to &#x60;false&#x60;. (default to false)
    # @return [Campaign]
    def create_campaign(list_id, template_id, from_email, from_name, subject, opts = {})
      data, _status_code, _headers = create_campaign_with_http_info(list_id, template_id, from_email, from_name, subject, opts)
      data
    end

    # Create New Campaign
    # Creates a new campaign. The created campaign is a draft and is not automatically sent.
    # @param list_id [String] The list you will send the campaign to.
    # @param template_id [String]  The template that will define the content of the page. Note: the Email Template is copied when creating this campaign, so future changes to that Email Template will not alter the content of this campaign. 
    # @param from_email [String] The email address your email will be sent from and will be used in the &#x60;reply-to&#x60; header.
    # @param from_name [String] The name or label associated with the email address you&#39;re sending from.
    # @param subject [String] The email subject of the campaign
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name If not specified, this will default to the subject of the campaign.
    # @option opts [Boolean] :use_smart_sending If set, limits the number of emails sent to an individual within a short period. Valid values are &#x60;true&#x60; and &#x60;false&#x60;. If not specified, defaults to &#x60;true&#x60;.
    # @option opts [Boolean] :add_google_analytics If specified, adds Google Analytics tracking tags to links. Valid values are &#x60;true&#x60; and &#x60;false&#x60;. If not specified, defaults to &#x60;false&#x60;.
    # @return [Array<(Campaign, Integer, Hash)>] Campaign data, response status code and response headers
    def create_campaign_with_http_info(list_id, template_id, from_email, from_name, subject, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.create_campaign ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling CampaignsApi.create_campaign"
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling CampaignsApi.create_campaign"
      end
      # verify the required parameter 'from_email' is set
      if @api_client.config.client_side_validation && from_email.nil?
        fail ArgumentError, "Missing the required parameter 'from_email' when calling CampaignsApi.create_campaign"
      end
      # verify the required parameter 'from_name' is set
      if @api_client.config.client_side_validation && from_name.nil?
        fail ArgumentError, "Missing the required parameter 'from_name' when calling CampaignsApi.create_campaign"
      end
      # verify the required parameter 'subject' is set
      if @api_client.config.client_side_validation && subject.nil?
        fail ArgumentError, "Missing the required parameter 'subject' when calling CampaignsApi.create_campaign"
      end
      # resource path
      local_var_path = '/v1/campaigns'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['list_id'] = list_id
      form_params['template_id'] = template_id
      form_params['from_email'] = from_email
      form_params['from_name'] = from_name
      form_params['subject'] = subject
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['use_smart_sending'] = opts[:'use_smart_sending'] if !opts[:'use_smart_sending'].nil?
      form_params['add_google_analytics'] = opts[:'add_google_analytics'] if !opts[:'add_google_analytics'].nil?

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:debug_return_type] || 'Campaign'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"CampaignsApi.create_campaign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#create_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Campaign Info
    # Returns summary information for the campaign specified.
    # @param campaign_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Campaign]
    def get_campaign_info(campaign_id, opts = {})
      data, _status_code, _headers = get_campaign_info_with_http_info(campaign_id, opts)
      data
    end

    # Get Campaign Info
    # Returns summary information for the campaign specified.
    # @param campaign_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Campaign, Integer, Hash)>] Campaign data, response status code and response headers
    def get_campaign_info_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.get_campaign_info ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling CampaignsApi.get_campaign_info"
      end
      # resource path
      local_var_path = '/v1/campaign/{campaign_id}'.sub('{' + 'campaign_id' + '}', CGI.escape(campaign_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:debug_return_type] || 'Campaign'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"CampaignsApi.get_campaign_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#get_campaign_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Campaign Recipients
    # Returns summary information about email recipients for the campaign specified that includes each recipients email, customer ID, and status.
    # @param campaign_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count For pagination, the number of results to return. Max &#x3D; 25,000 (default to 5000)
    # @option opts [String] :sort Sort order to apply to results, either ascending or descending. Valid values are &#x60;asc&#x60; or &#x60;desc&#x60;. Defaults to &#x60;asc&#x60;. (default to 'asc')
    # @option opts [String] :offset For pagination, if a response to this endpoint includes a &#x60;next_offset&#x60;, use that value to get the next page of recipients.
    # @return [Hash<String, Object>]
    def get_campaign_recipients(campaign_id, opts = {})
      data, _status_code, _headers = get_campaign_recipients_with_http_info(campaign_id, opts)
      data
    end

    # Get Campaign Recipients
    # Returns summary information about email recipients for the campaign specified that includes each recipients email, customer ID, and status.
    # @param campaign_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count For pagination, the number of results to return. Max &#x3D; 25,000
    # @option opts [String] :sort Sort order to apply to results, either ascending or descending. Valid values are &#x60;asc&#x60; or &#x60;desc&#x60;. Defaults to &#x60;asc&#x60;.
    # @option opts [String] :offset For pagination, if a response to this endpoint includes a &#x60;next_offset&#x60;, use that value to get the next page of recipients.
    # @return [Array<(Hash<String, Object>, Integer, Hash)>] Hash<String, Object> data, response status code and response headers
    def get_campaign_recipients_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.get_campaign_recipients ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling CampaignsApi.get_campaign_recipients"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 25000
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling CampaignsApi.get_campaign_recipients, must be smaller than or equal to 25000.'
      end

      # resource path
      local_var_path = '/v1/campaign/{campaign_id}/recipients'.sub('{' + 'campaign_id' + '}', CGI.escape(campaign_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:debug_return_type] || 'Hash<String, Object>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"CampaignsApi.get_campaign_recipients",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#get_campaign_recipients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Campaigns
    # Returns a list of all the campaigns you've created. The campaigns are returned in reverse sorted order by the time they were created.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page For pagination, which page of results to return. Default &#x3D; 0 (default to 0)
    # @option opts [Integer] :count For pagination, the number of results to return. Max &#x3D; 100 (default to 50)
    # @return [Hash<String, Object>]
    def get_campaigns(opts = {})
      data, _status_code, _headers = get_campaigns_with_http_info(opts)
      data
    end

    # Get Campaigns
    # Returns a list of all the campaigns you&#39;ve created. The campaigns are returned in reverse sorted order by the time they were created.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page For pagination, which page of results to return. Default &#x3D; 0
    # @option opts [Integer] :count For pagination, the number of results to return. Max &#x3D; 100
    # @return [Array<(Hash<String, Object>, Integer, Hash)>] Hash<String, Object> data, response status code and response headers
    def get_campaigns_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.get_campaigns ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling CampaignsApi.get_campaigns, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling CampaignsApi.get_campaigns, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling CampaignsApi.get_campaigns, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v1/campaigns'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:debug_return_type] || 'Hash<String, Object>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"CampaignsApi.get_campaigns",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#get_campaigns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Schedule a Campaign
    # Schedules a campaign for a time in the future
    # @param campaign_id [String] 
    # @param send_time [String]  A timestamp of the format &#x60;%Y-%m-%d %H:%M:%S&#x60; in the UTC timezone.  Ex:  &#x60;2022-01-13 00:00:00&#x60; 
    # @param [Hash] opts the optional parameters
    # @return [Hash<String, Object>]
    def schedule_campaign(campaign_id, send_time, opts = {})
      data, _status_code, _headers = schedule_campaign_with_http_info(campaign_id, send_time, opts)
      data
    end

    # Schedule a Campaign
    # Schedules a campaign for a time in the future
    # @param campaign_id [String] 
    # @param send_time [String]  A timestamp of the format &#x60;%Y-%m-%d %H:%M:%S&#x60; in the UTC timezone.  Ex:  &#x60;2022-01-13 00:00:00&#x60; 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Hash<String, Object>, Integer, Hash)>] Hash<String, Object> data, response status code and response headers
    def schedule_campaign_with_http_info(campaign_id, send_time, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.schedule_campaign ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling CampaignsApi.schedule_campaign"
      end
      # verify the required parameter 'send_time' is set
      if @api_client.config.client_side_validation && send_time.nil?
        fail ArgumentError, "Missing the required parameter 'send_time' when calling CampaignsApi.schedule_campaign"
      end
      # resource path
      local_var_path = '/v1/campaign/{campaign_id}/schedule'.sub('{' + 'campaign_id' + '}', CGI.escape(campaign_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['send_time'] = send_time

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:debug_return_type] || 'Hash<String, Object>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"CampaignsApi.schedule_campaign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#schedule_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a Campaign Immediately
    # Queues a campaign for immediate delivery
    # @param campaign_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Hash<String, Object>]
    def send_campaign(campaign_id, opts = {})
      data, _status_code, _headers = send_campaign_with_http_info(campaign_id, opts)
      data
    end

    # Send a Campaign Immediately
    # Queues a campaign for immediate delivery
    # @param campaign_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Hash<String, Object>, Integer, Hash)>] Hash<String, Object> data, response status code and response headers
    def send_campaign_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.send_campaign ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling CampaignsApi.send_campaign"
      end
      # resource path
      local_var_path = '/v1/campaign/{campaign_id}/send'.sub('{' + 'campaign_id' + '}', CGI.escape(campaign_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:debug_return_type] || 'Hash<String, Object>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"CampaignsApi.send_campaign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#send_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Campaign
    # Updates details of a campaign. You can update a campaign's name, subject, from email address, from name, template or list.
    # @param campaign_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :list_id The list you will send the campaign to.
    # @option opts [String] :template_id The ID of the Email Template object that will be the content of this campaign. Note the Email Template is copied when creating this campaign, so future changes to that Email Template will not alter the content of this campaign.
    # @option opts [String] :from_email The email address your email will be sent from and will be used in the reply-to header.
    # @option opts [String] :from_name The name or label associated with the email address you&#39;re sending from.
    # @option opts [String] :subject The email subject of the campaign
    # @option opts [String] :name A name for this campaign. If not specified, this will default to the subject of the campaign.
    # @option opts [Boolean] :use_smart_sending If set, limits the number of emails sent to an individual within a short period. Campaigns initially default to &#x60;true&#x60;.
    # @option opts [Boolean] :add_google_analytics If specified, adds Google Analytics tracking tags to links. Campaigns initially default to &#x60;false&#x60;.
    # @return [Campaign]
    def update_campaign(campaign_id, opts = {})
      data, _status_code, _headers = update_campaign_with_http_info(campaign_id, opts)
      data
    end

    # Update Campaign
    # Updates details of a campaign. You can update a campaign&#39;s name, subject, from email address, from name, template or list.
    # @param campaign_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :list_id The list you will send the campaign to.
    # @option opts [String] :template_id The ID of the Email Template object that will be the content of this campaign. Note the Email Template is copied when creating this campaign, so future changes to that Email Template will not alter the content of this campaign.
    # @option opts [String] :from_email The email address your email will be sent from and will be used in the reply-to header.
    # @option opts [String] :from_name The name or label associated with the email address you&#39;re sending from.
    # @option opts [String] :subject The email subject of the campaign
    # @option opts [String] :name A name for this campaign. If not specified, this will default to the subject of the campaign.
    # @option opts [Boolean] :use_smart_sending If set, limits the number of emails sent to an individual within a short period. Campaigns initially default to &#x60;true&#x60;.
    # @option opts [Boolean] :add_google_analytics If specified, adds Google Analytics tracking tags to links. Campaigns initially default to &#x60;false&#x60;.
    # @return [Array<(Campaign, Integer, Hash)>] Campaign data, response status code and response headers
    def update_campaign_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.update_campaign ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling CampaignsApi.update_campaign"
      end
      # resource path
      local_var_path = '/v1/campaign/{campaign_id}'.sub('{' + 'campaign_id' + '}', CGI.escape(campaign_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['list_id'] = opts[:'list_id'] if !opts[:'list_id'].nil?
      form_params['template_id'] = opts[:'template_id'] if !opts[:'template_id'].nil?
      form_params['from_email'] = opts[:'from_email'] if !opts[:'from_email'].nil?
      form_params['from_name'] = opts[:'from_name'] if !opts[:'from_name'].nil?
      form_params['subject'] = opts[:'subject'] if !opts[:'subject'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['use_smart_sending'] = opts[:'use_smart_sending'] if !opts[:'use_smart_sending'].nil?
      form_params['add_google_analytics'] = opts[:'add_google_analytics'] if !opts[:'add_google_analytics'].nil?

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = opts[:debug_return_type] || 'Campaign'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"CampaignsApi.update_campaign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#update_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
