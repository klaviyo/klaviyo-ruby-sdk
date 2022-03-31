# Klaviyo Ruby SDK

- SDK version: 1.0.1.20220329

## Helpful Resources

- [API Reference](https://developers.klaviyo.com/en/reference/api-overview)
- [API Guides](https://developers.klaviyo.com/en/docs)
- [Postman Workspace](https://www.postman.com/klaviyo/workspace/klaviyo-developers)

## Design & Approach

This SDK is a thin wrapper around our API. See our API Reference for full documentation on API behavior.

## Organization

This SDK is organized into the following resources:



- Campaigns



- DataPrivacy



- ListsSegments



- Metrics



- Profiles



- Templates



- TrackIdentify



# Installation


## Build

To build the Ruby code into a gem:

```shell
gem build klaviyo_sdk.gemspec
```

Then install the gem locally:

```shell
gem install ./klaviyo_sdk-1.0.1.20220329.gem
```


Finally add this to the Gemfile:

    gem 'klaviyo_sdk', '~> 1.0.1.20220329'

To install directly from rubygems:

```shell
gem install klaviyo_sdk
```

# Usage Example

### To load the gem

```ruby
# Load the gem
require 'klaviyo_sdk'

# Setup authorization
Client.configure do |config|
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  #config.max_retries = 5 # optional
  #config.max_delay = 60 # optional
end
```

NOTE: 
* The SDK retries on resolvable errors, namely: rate limits (common) and server errors on klaviyo (rare).
* `max_retry` denotes number of attempts the client will make in order to execute the request successfully.
* `max_delay` denotes total delay (in seconds) across all attempts.

### To call the `metric-export` operation:

```ruby
metric_id = 'METRIC_ID'
count = 100

begin
  result = Client::Metrics.metric_export(metric_id, count=count) 
end
```

# Error Handling

This SDK throws an `ApiException` error when the server returns a non-`2XX` response. 
```ruby
metric_id = 'METRIC_ID'
count = 100

begin
  result = Client::Metrics.metric_export(metric_id, count=count) 
rescue Client::ApiError => e
  puts "Error when calling Metrics.metric_export #{e}"
end
```

# Comprehensive list of Operations & Parameters

_**NOTE:**_
- Organization: Resource groups and operation_ids are listed in alphabetical order, first by Resource name, then by **OpenAPI Summary**. Operation summaries are those listed in the right side bar of the [API Reference](https://developers.klaviyo.com/en/reference/track-post).
- For example values / data types, as well as whether parameters are required/optional, please reference the corresponding API Reference link.
- Some args are required for the API call to succeed, the API docs above are the source of truth regarding which params are required.




## Campaigns


#### [Cancel a Campaign](https://developers.klaviyo.com/en/reference/cancel-campaign)

```ruby
Client::Campaigns.cancel_campaign(campaign_id)
```

#### Example:

```ruby
campaign_id = 'CAMPAIGN_ID'
response = Client::Campaigns.cancel_campaign(campaign_id)
```





#### [Clone a Campaign](https://developers.klaviyo.com/en/reference/clone-campaign)

```ruby
Client::Campaigns.clone_campaign(campaign_id, name, list_id)
```

#### Example:
```ruby
campaign_id = 'CAMPAIGN_ID'
name        = 'CLONED_CAMPAIGN'
list_id     = 'LIST_ID'

response = Client::Campaigns.clone_campaign(campaign_id, name, list_id)
```





#### [Create New Campaign](https://developers.klaviyo.com/en/reference/create-campaign)

```ruby
Client::Campaigns.create_campaign(list_id, template_id, from_email, from_name, subject, opts)
```

#### Example:
```ruby
list_id     = 'LIST_ID'
template_id = 'TEMPLATE_ID'
from_email  = 'george.washington@klaviyo.com'
from_name   = 'George Washington'
subject     = 'Happy Fourth!'

opts = {
  'use_smart_sending': true,
  'add_google_analytics': false,
  'name': 'Campaign Name',
}

response = Client::Campaigns.create_campaign(list_id, template_id, from_email, from_name, subject, opts)
```




#### [Get Campaign Info](https://developers.klaviyo.com/en/reference/get-campaign-info)

```ruby
Client::Campaigns.get_campaign_info(campaign_id)
```

#### Example:
```ruby
campaign_id = 'CAMPAIGN_ID'

response = Client::Campaigns.get_campaign_info(campaign_id)
```




#### [Get Campaign Recipients](https://developers.klaviyo.com/en/reference/get-campaign-recipients)

```ruby
Client::Campaigns.get_campaign_recipients(campaign_id, opts)
```

####  Example:
```ruby
campaign_id = 'CAMPAIGN_ID'

# optional parameters
opts = {
  'count': 1, 
  'sort': 'desc',
  # offset: 'offset'
}

response = Client::Campaigns.get_campaign_recipients(campaign_id, opts)
```




#### [Get Campaigns](https://developers.klaviyo.com/en/reference/get-campaigns)

```ruby
Client::Campaigns.get_campaigns(opts)
```

#### Example:
```ruby
opts = {
  'page': 1,
  'count': 1
}

response = Client::Campaigns.get_campaigns(opts)
```




#### [Schedule a Campaign](https://developers.klaviyo.com/en/reference/schedule-campaign)

```ruby
Client::Campaigns.schedule_campaign(campaign_id, send_time)
```

#### Example:
```ruby
campaign_id = 'CAMPAIGN_ID'
send_time = '2030-01-13 00:00:00'

response = Client::Campaigns.schedule_campaign(campaign_id, send_time)
```




#### [Send a Campaign Immediately](https://developers.klaviyo.com/en/reference/send-campaign)

```ruby
Client::Campaigns.send_campaign(campaign_id)
```

#### Example:
```ruby
campaign_id = 'CAMPAIGN_ID'

response = Client::Campaigns.send_campaign(campaign_id)

```




#### [Update Campaign](https://developers.klaviyo.com/en/reference/update-campaign)

```ruby
Client::Campaigns.update_campaign(campaign_id, opts)
```

#### Example:
```ruby
campaign_id = 'CAMPAIGN_ID'

opts = {
  'list_id': 'LIST_ID', 
  'template_id': 'TEMPLATE_ID', 
  'from_email': 'george.washington@klaviyo.com', 
  'from_name': 'George Washington', 
  'subject': 'Happy Fourth!', 
  'name': 'Campaign Name', 
  'use_smart_sending': true, 
  'add_google_analytics': false
}

response = Client::Campaigns.update_campaign(campaign_id, opts)

```





## DataPrivacy


#### [Request a Deletion](https://developers.klaviyo.com/en/reference/request-deletion)

```ruby
Client::DataPrivacy.request_deletion(opts)
```

#### Example:
```ruby
opts = {
  body: {
    'email': 'abraham.lincoln@klaviyo.com'
  }
}

response = Client::DataPrivacy.request_deletion(opts)
```





## ListsSegments


#### [Add Members to a List](https://developers.klaviyo.com/en/reference/add-members)

```ruby
Client::ListsSegments.add_members(list_id, opts)
```

#### Example:
```ruby
list_id = 'LIST_ID'
opts = {
  body: {
      profiles: [
          {
              'email': 'george.washington@klaviyo.com'
          }
      ]
  }
}

response = Client::ListsSegments.add_members(list_id, opts)
```




#### [Create List](https://developers.klaviyo.com/en/reference/create-list)

```ruby
Client::ListsSegments.create_list(list_name)
```

#### Example:
```ruby
list_name = 'MyNewList'

response = Client::ListsSegments.create_list(list_name)
```




#### [Delete List](https://developers.klaviyo.com/en/reference/delete-list)

```ruby
Client::ListsSegments.delete_list(list_id)
```

#### Example:
```ruby
list_id = 'LIST_ID'

response = Client::ListsSegments.delete_list(list_id)
```




#### [Exclude Profile From All Email](https://developers.klaviyo.com/en/reference/exclude-globally)

```ruby
Client::ListsSegments.exclude_globally(email)
```

#### Example:
```ruby
email = 'george.washington@klaviyo.com'

response = Client::ListsSegments.exclude_globally(email)
```




#### [Get Global Exclusions & Unsubscribes](https://developers.klaviyo.com/en/reference/get-global-exclusions)

```ruby
Client::ListsSegments.get_global_exclusions(opts)
```

#### Example:
```ruby
opts = {
  query_params: {
    reason: 'manually_excluded',
    sort: 'desc',
    count: 2,
    page: 1
  }
}

response = Client::ListsSegments.get_global_exclusions(opts)
```




#### [Get All Exclusions for a List](https://developers.klaviyo.com/en/reference/get-list-exclusions)

```ruby
Client::ListsSegments.get_list_exclusions(list_id, opts)
```

#### Example:
```ruby
list_id = 'LIST_ID'

opts = {
  query_params: {
      # marker: 12345
  }
}

response = Client::ListsSegments.get_list_exclusions(list_id, opts)
```




#### [Get List Info](https://developers.klaviyo.com/en/reference/get-list-info)

```ruby
Client::ListsSegments.get_list_info(list_id)
```

#### Example:
```ruby
list_id = 'LIST_ID'

response = Client::ListsSegments.get_list_info(list_id)
```




#### [Check if Profiles Are in a List](https://developers.klaviyo.com/en/reference/get-list-members)

```ruby
Client::ListsSegments.get_list_members(list_id, opts)
```

#### Example:
```ruby
list_id = 'LIST_ID'

opts = {
  body: {
    'emails': [
      'george.washington@klaviyo.com'
    ]
  }
}

response = Client::ListsSegments.get_list_members(list_id, opts)
```




#### [Check if Profiles Are in a List and not Suppressed](https://developers.klaviyo.com/en/reference/get-list-subscriptions)

```ruby
Client::ListsSegments.get_list_subscriptions(list_id, opts)
```

#### Example:
```ruby
list_id = 'LIST_ID'

opts = {
  body: {'emails': ['george.washington@klaviyo.com']}
}

response = Client::ListsSegments.get_list_subscriptions(list_id, opts)
```




#### [Get Lists](https://developers.klaviyo.com/en/reference/get-lists)

```ruby
Client::ListsSegments.get_lists
```

#### Example:
```ruby
response = Client::ListsSegments.get_lists
```




#### [Get List and Segment Members](https://developers.klaviyo.com/en/reference/get-members)

```ruby
Client::ListsSegments.get_members(list_or_segment_id, opts)
```

#### Example:
```ruby
list_id = 'LIST_ID'

opts = {
  query_params: {
      # marker: 12345
  }
}
response = Client::ListsSegments.get_members(list_id)
```




#### [Check if Profiles Are in a Segment](https://developers.klaviyo.com/en/reference/get-segment-members)

```ruby
Client::ListsSegments.get_segment_members(segment_id, opts)
```

#### Example:
```ruby
segment_id = 'SEGMENT_ID'

opts = {
  body: {'emails': ['george.washington@klaviyo.com']}
}
response = Client::ListsSegments.get_segment_members(segment_id, opts)
```




#### [Remove Profiles From List](https://developers.klaviyo.com/en/reference/remove-members)

```ruby
Client::ListsSegments.remove_members(list_id, opts)
```

#### Example:
```ruby
list_id = 'LIST_ID'

opts = {
  body: {'emails': ['george.washington@klaviyo.com']}
}

response = Client::ListsSegments.remove_members(list_id, opts)
```




#### [Subscribe Profiles to List](https://developers.klaviyo.com/en/reference/subscribe)

```ruby
Client::ListsSegments.subscribe(list_id, opts)
```

#### Example:
```ruby
list_id = 'LIST_ID'

opts = {
  body: {
      profiles: [
          {
              'email': 'george.washington@klaviyo.com'
          }
      ]
  }
}

response = Client::ListsSegmentsApi.new.subscribe(list_id, opts)
```




#### [Unsubscribe Profiles From List](https://developers.klaviyo.com/en/reference/unsubscribe)

```ruby
Client::ListsSegments.unsubscribe(list_id, opts)
```

#### Example:
```ruby
list_id = 'LIST_ID'

opts = {
  body: {
    'emails': [
      'george.washington@klaviyo.com'
    ]
  }
}
response = Client::ListsSegments.unsubscribe(list_id, opts)
```




#### [Update List Name](https://developers.klaviyo.com/en/reference/update-list-name)

```ruby
Client::ListsSegments.update_list_name(list_id, list_name)
```

#### Example:
```ruby
list_id   = 'LIST_ID'
list_name = 'MyRenamedList'

response = Client::ListsSegments.update_list_name(list_id, list_name)
```





## Metrics


#### [Get Metrics Info](https://developers.klaviyo.com/en/reference/get-metrics)

```ruby
Client::Metrics.get_metrics(opts)
```

#### Example:
```ruby
opts = {
  query_params: {
    page: 0,
    count: 50
  }
}

response = Client::Metrics.get_metrics(opts)
```




#### [Query Event Data](https://developers.klaviyo.com/en/reference/metric-export)

```ruby
Client::Metrics.metric_export(metric_id, opts)
```

#### Example:
```ruby
metric_id = 'METRIC_ID'
opts = {
  query_params: {
    unit: 'week',
    measurement: 'sum',
    count: 2
  }
}

response = Client::Metrics.metric_export(metric_id, opts)
```




#### [Get Events for a Specific Metric](https://developers.klaviyo.com/en/reference/metric-timeline)

```ruby
Client::Metrics.metric_timeline(metric_id, opts)
```

#### Example:
```ruby
metric_id = 'METRIC_ID'

opts = {
  query_params: {
    since: '0000000000',
    count: 2,
    sort: 'asc'
  }
}

response = Client::Metrics.metric_timeline(metric_id, opts)
```




#### [Get Events for All Metrics](https://developers.klaviyo.com/en/reference/metrics-timeline)

```ruby
Client::Metrics.metrics_timeline(opts)
```

#### Example:
```ruby
opts = {
  query_params: {
    since: '0000000000',
    count: 2,
    sort: 'asc'
  }
}
response = Client::Metrics.metrics_timeline(opts)
```





## Profiles


#### [Exchange ID for Profile ID](https://developers.klaviyo.com/en/reference/exchange)

```ruby
Client::Profiles.exchange(opts)
```

#### Example:
```ruby
opts = {
  body: {'exchange_id': 'EXCHANGE_ID'}
}

response = Client::Profiles.exchange(opts)
```




#### [Get Profile](https://developers.klaviyo.com/en/reference/get-profile)

```ruby
Client::Profiles.get_profile(person_id)
```

#### Example:
```ruby
person_id = 'PERSON_ID'

response = Client::Profiles.get_profile(person_id)
```




#### [Get Profile's Events for a Specific Metric](https://developers.klaviyo.com/en/reference/profile-metric-timeline)

```ruby
Client::Profiles.profile_metric_timeline(person_id, metric_id, opts)
```

#### Example:
```ruby
person_id = 'PERSON_ID'
metric_id = 'METRIC_ID'

opts = {
  query_params: {
    since: '0000000000',
    count: 2,
    sort: 'asc'
  }
}

response = Client::Profiles.profile_metric_timeline(person_id, metric_id, opts)
```




#### [Get Profile's Events for all Metrics](https://developers.klaviyo.com/en/reference/profile-metrics-timeline)

```ruby
Client::Profiles.profile_metrics_timeline(person_id, opts)
```

#### Example:
```ruby
person_id = 'PERSON_ID'

opts = {
  query_params: {
    since: '0000000000',
    count: 2,
    sort: 'asc'
  }
}

response = Client::Profiles.profile_metrics_timeline(person_id, opts)
```




#### [Update Profile](https://developers.klaviyo.com/en/reference/update-profile)

```ruby
Client::Profiles.update_profile(person_id, opts)
```

#### Example:
```ruby
person_id = 'PERSON_ID'

opts = {
  query_params: {'$email': 'george.washington@klaviyo.com'}
}

response = Client::Profiles.update_profile(person_id, opts)
```





## Templates


#### [Clone Template](https://developers.klaviyo.com/en/reference/clone-template)

```ruby
Client::Templates.clone_template(template_id, name)
```

#### Example:
```ruby
template_id = 'TEMPLATE_ID'
name = 'My Cloned Template'

response = Client::Templates.clone_template(template_id, name)
```




#### [Create New Template](https://developers.klaviyo.com/en/reference/create-template)

```ruby
Client::Templates.create_template(name, html)
```

#### Example:
```ruby
name = 'New Template Name'
html = '<html><body><p>This is an email for {{ email }}.</p></body></html>'

response = Client::Templates.create_template(name, html)
```




#### [Delete Template](https://developers.klaviyo.com/en/reference/delete-template)

```ruby
Client::Templates.delete_template(template_id)
```

#### Example:
```ruby
template_id = 'TEMPLATE_ID'

response = Client::Templates.delete_template(template_id)
```




#### [Get All Templates](https://developers.klaviyo.com/en/reference/get-templates)

```ruby
Client::Templates.get_templates
```

#### Example:
```ruby
response = Client::Templates.get_templates
```




#### [Render Template](https://developers.klaviyo.com/en/reference/render-template)

```ruby
Client::Templates.render_template(template_id, opts)
```

#### Example:
```ruby
template_id = 'TEMPLATE_ID'
context = {'name': 'George Washington', 'state': 'VA'}

opts = {
  form_params: {
    context: context.to_json
  }
}

response = Client::Templates.render_template(template_id, opts)
```




#### [Render and Send Template](https://developers.klaviyo.com/en/reference/send-template)

```ruby
Client::Templates.send_template(template_id, from_email, from_name, subject, to, opts)
```

#### Example:
```ruby
template_id = 'TEMPLATE_ID'
from_email = 'george.washington@klaviyo.com'
from_name = 'George Washington'
subject = 'Happy Fourth!'
to = 'george.washington@klaviyo.com'
context = {'name': 'George Washington', 'state': 'VA'}

opts = {
  form_params: {
    context: context.to_json
  }
}

response = Client::Templates.send_template(template_id, from_email, from_name, subject, to, opts)
```




#### [Update Template](https://developers.klaviyo.com/en/reference/update-template)

```ruby
Client::Templates.update_template(template_id, opts)
```

#### Example:
```ruby
template_id = 'TEMPLATE_ID'
opts = {
  form_params: {
    name: 'New Template Name',
    html: '<html><body><p>This is an email for {{ email }}.</p></body></html>'
  }
}

response = Client::Templates.update_template(template_id, opts)
```





## TrackIdentify


#### [Identify Profile (Legacy)](https://developers.klaviyo.com/en/reference/identify-get)

```ruby
Client::TrackIdentify.identify_get(data)
```

#### Example:
```ruby
require 'base64'
identify_payload = {
  'token': 'PUBLIC_KEY', 
  'properties': {
    '$email': 'abraham.lincoln@klaviyo.com',
    '$first_name': 'Abraham',
    '$last_name': 'Lincoln',
    '$city': 'Springfield',
    '$region': 'Illinois'
  }
}

encoded_payload = Base64.encode64(identify_payload.to_json).encode(Encoding::UTF_8)
response = Client::TrackIdentify.identify_get(encoded_payload)
```




#### [Identify Profile](https://developers.klaviyo.com/en/reference/identify-post)

```ruby
Client::TrackIdentify.identify_post(data)
```

#### Example:
```ruby
identify_payload = {
  'token': 'PUBLIC_KEY', 
  'properties': {
    '$email': 'abraham.lincoln@klaviyo.com',
    '$first_name': 'Abraham',
    '$last_name': 'Lincoln',
    '$city': 'Springfield',
    '$region': 'Illinois'
  }
}

data = identify_payload.to_json
response = Client::TrackIdentify.identify_post(data)
```




#### [Track Profile Activity (Legacy)](https://developers.klaviyo.com/en/reference/track-get)

```ruby
Client::TrackIdentify.track_get(data)
```

#### Example:
```ruby
require 'base64'
track_payload = {
  'token': 'PUBLIC_KEY',
  'event': 'Ordered Product',
  'customer_properties': {
    '$email': 'abraham.lincoln@klaviyo.com'
  },
  'properties': {
    'item_name': 'Boots',
    '$value': 100
  }
}

encoded_payload = Base64.encode64(track_payload.to_json).encode(Encoding::UTF_8)
response = Client::TrackIdentify.track_get(encoded_payload)
```




#### [Track Profile Activity](https://developers.klaviyo.com/en/reference/track-post)

```ruby
Client::TrackIdentify.track_post(data)
```

#### Example:
```ruby

track_payload = {
  'token': 'PUBLIC_KEY',
  'event': 'Ordered Product',
  'customer_properties': {
    '$email': 'abraham.lincoln@klaviyo.com'
  },
  'properties': {
    'item_name': 'Boots',
    '$value': 100
  }
}

data = track_payload.to_json
response = Client::TrackIdentify.track_post(data)
```




# Appendix

## Limitations

- The `api_key` is set at the global level: this means that if you manage multiple stores, you will need to run the code for each store in a different environment.