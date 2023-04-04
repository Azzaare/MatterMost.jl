# SystemApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_integrity**](SystemApi.md#check_integrity) | **POST** /integrity | Perform a database integrity check
[**clear_server_busy**](SystemApi.md#clear_server_busy) | **DELETE** /server_busy | Clears the server busy (high load) flag
[**database_recycle**](SystemApi.md#database_recycle) | **POST** /database/recycle | Recycle database connections
[**generate_support_packet**](SystemApi.md#generate_support_packet) | **GET** /system/support_packet | Download a zip file which contains helpful and useful information for troubleshooting your mattermost instance.
[**get_analytics_old**](SystemApi.md#get_analytics_old) | **GET** /analytics/old | Get analytics
[**get_audits**](SystemApi.md#get_audits) | **GET** /audits | Get audits
[**get_client_config**](SystemApi.md#get_client_config) | **GET** /config/client | Get client configuration
[**get_client_license**](SystemApi.md#get_client_license) | **GET** /license/client | Get client license
[**get_config**](SystemApi.md#get_config) | **GET** /config | Get configuration
[**get_environment_config**](SystemApi.md#get_environment_config) | **GET** /config/environment | Get configuration made through environment variables
[**get_image_by_url**](SystemApi.md#get_image_by_url) | **GET** /image | Get an image by url
[**get_logs**](SystemApi.md#get_logs) | **GET** /logs | Get logs
[**get_notices**](SystemApi.md#get_notices) | **GET** /system/notices/{teamId} | Get notices for logged in user in specified team
[**get_ping**](SystemApi.md#get_ping) | **GET** /system/ping | Check system health
[**get_prev_trial_license**](SystemApi.md#get_prev_trial_license) | **GET** /trial-license/prev | Get last trial license used
[**get_redirect_location**](SystemApi.md#get_redirect_location) | **GET** /redirect_location | Get redirect location
[**get_server_busy_expires**](SystemApi.md#get_server_busy_expires) | **GET** /server_busy | Get server busy expiry time.
[**get_supported_timezone**](SystemApi.md#get_supported_timezone) | **GET** /system/timezones | Retrieve a list of supported timezones
[**get_warn_metrics_status**](SystemApi.md#get_warn_metrics_status) | **GET** /warn_metrics/status | Get the warn metrics status (enabled or disabled)
[**invalidate_caches**](SystemApi.md#invalidate_caches) | **POST** /caches/invalidate | Invalidate all the caches
[**mark_notices_viewed**](SystemApi.md#mark_notices_viewed) | **PUT** /system/notices/view | Update notices as &#39;viewed&#39;
[**patch_config**](SystemApi.md#patch_config) | **PUT** /config/patch | Patch configuration
[**post_log**](SystemApi.md#post_log) | **POST** /logs | Add log message
[**reload_config**](SystemApi.md#reload_config) | **POST** /config/reload | Reload configuration
[**remove_license_file**](SystemApi.md#remove_license_file) | **DELETE** /license | Remove license file
[**request_license_renewal_link**](SystemApi.md#request_license_renewal_link) | **GET** /license/renewal | Request the license renewal link
[**request_trial_license**](SystemApi.md#request_trial_license) | **POST** /trial-license | Request and install a trial license for your server
[**restart_server**](SystemApi.md#restart_server) | **POST** /restart | Restart the system after an upgrade from Team Edition to Enterprise Edition
[**send_trial_license_warn_metric_ack**](SystemApi.md#send_trial_license_warn_metric_ack) | **POST** /warn_metrics/trial-license-ack/{warn_metric_id} | Request trial license and acknowledge a warning of a metric status
[**send_warn_metric_ack**](SystemApi.md#send_warn_metric_ack) | **POST** /warn_metrics/ack/{warn_metric_id} | Acknowledge a warning of a metric status
[**set_server_busy**](SystemApi.md#set_server_busy) | **POST** /server_busy | Set the server busy (high load) flag
[**test_email**](SystemApi.md#test_email) | **POST** /email/test | Send a test email
[**test_s3_connection**](SystemApi.md#test_s3_connection) | **POST** /file/s3_test | Test AWS S3 connection
[**test_site_u_r_l**](SystemApi.md#test_site_u_r_l) | **POST** /site_url/test | Checks the validity of a Site URL
[**update_config**](SystemApi.md#update_config) | **PUT** /config | Update configuration
[**update_marketplace_visited_by_admin**](SystemApi.md#update_marketplace_visited_by_admin) | **POST** /plugins/marketplace/first_admin_visit | Stores that the Plugin Marketplace has been visited by at least an admin.
[**upgrade_to_enterprise**](SystemApi.md#upgrade_to_enterprise) | **POST** /upgrade_to_enterprise | Executes an inplace upgrade from Team Edition to Enterprise Edition
[**upgrade_to_enterprise_status**](SystemApi.md#upgrade_to_enterprise_status) | **GET** /upgrade_to_enterprise/status | Get the current status for the inplace upgrade from Team Edition to Enterprise Edition
[**upload_license_file**](SystemApi.md#upload_license_file) | **POST** /license | Upload license file


# **check_integrity**
> check_integrity(_api::SystemApi; _mediaType=nothing) -> Vector{IntegrityCheckResult}, OpenAPI.Clients.ApiResponse <br/>
> check_integrity(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Vector{IntegrityCheckResult} }, OpenAPI.Clients.ApiResponse

Perform a database integrity check

Performs a database integrity check.   __Note__: This check may temporarily harm system performance.   __Minimum server version__: 5.28.0   __Local mode only__: This endpoint is only available through [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode). 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Vector{IntegrityCheckResult}**](IntegrityCheckResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **clear_server_busy**
> clear_server_busy(_api::SystemApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> clear_server_busy(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Clears the server busy (high load) flag

Marks the server as not having high load which re-enables non-critical services such as search, statuses and typing notifications.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **database_recycle**
> database_recycle(_api::SystemApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> database_recycle(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Recycle database connections

Recycle database connections by closing and reconnecting all connections to master and read replica databases. ##### Permissions Must have `manage_system` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **generate_support_packet**
> generate_support_packet(_api::SystemApi; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> generate_support_packet(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Download a zip file which contains helpful and useful information for troubleshooting your mattermost instance.

Download a zip file which contains helpful and useful information for troubleshooting your mattermost instance. __Minimum server version: 5.32__ ##### Permissions Must have any of the system console read permissions. ##### License Requires either a E10 or E20 license. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_analytics_old**
> get_analytics_old(_api::SystemApi; name=nothing, team_id=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_analytics_old(_api::SystemApi, response_stream::Channel; name=nothing, team_id=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Get analytics

Get some analytics data about the system. This endpoint uses the old format, the `/analytics` route is reserved for the new format when it gets implemented.  The returned JSON changes based on the `name` query parameter but is always key/value pairs.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Possible values are \&quot;standard\&quot;, \&quot;bot_post_counts_day\&quot;, \&quot;post_counts_day\&quot;, \&quot;user_counts_with_posts_day\&quot; or \&quot;extra_counts\&quot; | [default to &quot;standard&quot;]
 **team_id** | **String**| The team ID to filter the data by | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_audits**
> get_audits(_api::SystemApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{Audit}, OpenAPI.Clients.ApiResponse <br/>
> get_audits(_api::SystemApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{Audit} }, OpenAPI.Clients.ApiResponse

Get audits

Get a page of audits for all users on the system, selected with `page` and `per_page` query parameters. ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of audits per page. | [default to 60]

### Return type

[**Vector{Audit}**](Audit.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_client_config**
> get_client_config(_api::SystemApi, format::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_client_config(_api::SystemApi, response_stream::Channel, format::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Get client configuration

Get a subset of the server configuration needed by the client. ##### Permissions No permission required. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 
**format** | **String**| Must be &#x60;old&#x60;, other formats not implemented yet | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_client_license**
> get_client_license(_api::SystemApi, format::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_client_license(_api::SystemApi, response_stream::Channel, format::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Get client license

Get a subset of the server license needed by the client. ##### Permissions No permission required but having the `manage_system` permission returns more information. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 
**format** | **String**| Must be &#x60;old&#x60;, other formats not implemented yet | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_config**
> get_config(_api::SystemApi; _mediaType=nothing) -> Config, OpenAPI.Clients.ApiResponse <br/>
> get_config(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Config }, OpenAPI.Clients.ApiResponse

Get configuration

Retrieve the current server configuration ##### Permissions Must have `manage_system` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Config**](Config.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_environment_config**
> get_environment_config(_api::SystemApi; _mediaType=nothing) -> EnvironmentConfig, OpenAPI.Clients.ApiResponse <br/>
> get_environment_config(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ EnvironmentConfig }, OpenAPI.Clients.ApiResponse

Get configuration made through environment variables

Retrieve a json object mirroring the server configuration where fields are set to true if the corresponding config setting is set through an environment variable. Settings that haven't been set through environment variables will be missing from the object.  __Minimum server version__: 4.10  ##### Permissions Must have `manage_system` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**EnvironmentConfig**](EnvironmentConfig.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_image_by_url**
> get_image_by_url(_api::SystemApi; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> get_image_by_url(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse

Get an image by url

Fetches an image via Mattermost image proxy. __Minimum server version__: 3.10 ##### Permissions Must be logged in. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_logs**
> get_logs(_api::SystemApi; page=nothing, logs_per_page=nothing, _mediaType=nothing) -> Vector{String}, OpenAPI.Clients.ApiResponse <br/>
> get_logs(_api::SystemApi, response_stream::Channel; page=nothing, logs_per_page=nothing, _mediaType=nothing) -> Channel{ Vector{String} }, OpenAPI.Clients.ApiResponse

Get logs

Get a page of server logs, selected with `page` and `logs_per_page` query parameters. ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **logs_per_page** | **String**| The number of logs per page. There is a maximum limit of 10000 logs per page. | [default to &quot;10000&quot;]

### Return type

**Vector{String}**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_notices**
> get_notices(_api::SystemApi, client_version::String, client::String, team_id::String; locale=nothing, _mediaType=nothing) -> Vector{Notice}, OpenAPI.Clients.ApiResponse <br/>
> get_notices(_api::SystemApi, response_stream::Channel, client_version::String, client::String, team_id::String; locale=nothing, _mediaType=nothing) -> Channel{ Vector{Notice} }, OpenAPI.Clients.ApiResponse

Get notices for logged in user in specified team

Will return appropriate product notices for current user in the team specified by teamId parameter. __Minimum server version__: 5.26 ##### Permissions Must be logged in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 
**client_version** | **String**| Version of the client (desktop/mobile/web) that issues the request | [default to nothing]
**client** | **String**| Client type (web/mobile-ios/mobile-android/desktop) | [default to nothing]
**team_id** | **String**| ID of the team | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locale** | **String**| Client locale | [default to nothing]

### Return type

[**Vector{Notice}**](Notice.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_ping**
> get_ping(_api::SystemApi; get_server_status=nothing, device_id=nothing, _mediaType=nothing) -> SystemStatusResponse, OpenAPI.Clients.ApiResponse <br/>
> get_ping(_api::SystemApi, response_stream::Channel; get_server_status=nothing, device_id=nothing, _mediaType=nothing) -> Channel{ SystemStatusResponse }, OpenAPI.Clients.ApiResponse

Check system health

Check if the server is up and healthy based on the configuration setting `GoRoutineHealthThreshold`. If `GoRoutineHealthThreshold` and the number of goroutines on the server exceeds that threshold the server is considered unhealthy. If `GoRoutineHealthThreshold` is not set or the number of goroutines is below the threshold the server is considered healthy. __Minimum server version__: 3.10 If a \"device_id\" is passed in the query, it will test the Push Notification Proxy in order to discover whether the device is able to receive notifications. The response will have a \"CanReceiveNotifications\" property with one of the following values: - true: It can receive notifications - false: It cannot receive notifications - unknown: There has been an unknown error, and it is not certain whether it can   receive notifications.  __Minimum server version__: 6.5 ##### Permissions None. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **get_server_status** | **Bool**| Check the status of the database and file storage as well | [default to nothing]
 **device_id** | **String**| Check whether this device id can receive push notifications | [default to nothing]

### Return type

[**SystemStatusResponse**](SystemStatusResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_prev_trial_license**
> get_prev_trial_license(_api::SystemApi; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_prev_trial_license(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Get last trial license used

Get the last trial license used on the sevrer __Minimum server version__: 5.36 ##### Permissions Must have `manage_systems` permissions. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_redirect_location**
> get_redirect_location(_api::SystemApi, url::String; _mediaType=nothing) -> GetRedirectLocation200Response, OpenAPI.Clients.ApiResponse <br/>
> get_redirect_location(_api::SystemApi, response_stream::Channel, url::String; _mediaType=nothing) -> Channel{ GetRedirectLocation200Response }, OpenAPI.Clients.ApiResponse

Get redirect location

__Minimum server version__: 3.10 ##### Permissions Must be logged in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 
**url** | **String**| Url to check | [default to nothing]

### Return type

[**GetRedirectLocation200Response**](GetRedirectLocation200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_server_busy_expires**
> get_server_busy_expires(_api::SystemApi; _mediaType=nothing) -> ServerBusy, OpenAPI.Clients.ApiResponse <br/>
> get_server_busy_expires(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ ServerBusy }, OpenAPI.Clients.ApiResponse

Get server busy expiry time.

Gets the timestamp corresponding to when the server busy flag will be automatically cleared.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**ServerBusy**](ServerBusy.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_supported_timezone**
> get_supported_timezone(_api::SystemApi; _mediaType=nothing) -> Vector{String}, OpenAPI.Clients.ApiResponse <br/>
> get_supported_timezone(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Vector{String} }, OpenAPI.Clients.ApiResponse

Retrieve a list of supported timezones

__Minimum server version__: 3.10 ##### Permissions Must be logged in. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

**Vector{String}**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_warn_metrics_status**
> get_warn_metrics_status(_api::SystemApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> get_warn_metrics_status(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Get the warn metrics status (enabled or disabled)

Get the status of a set of metrics (enabled or disabled) from the Systems table.  The returned JSON contains the metrics that we need to warn the admin on with regard to their status (we return the ones whose status is \"true\", which means that they are in a \"warnable\" state - e.g. a threshold has been crossed or some other condition has been fulfilled).  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **invalidate_caches**
> invalidate_caches(_api::SystemApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> invalidate_caches(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Invalidate all the caches

Purge all the in-memory caches for the Mattermost server. This can have a temporary negative effect on performance while the caches are re-populated. ##### Permissions Must have `manage_system` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **mark_notices_viewed**
> mark_notices_viewed(_api::SystemApi, request_body::Vector{String}; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> mark_notices_viewed(_api::SystemApi, response_stream::Channel, request_body::Vector{String}; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Update notices as 'viewed'

Will mark the specified notices as 'viewed' by the logged in user. __Minimum server version__: 5.26 ##### Permissions Must be logged in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 
**request_body** | [**Vector{String}**](String.md)| Array of notice IDs | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **patch_config**
> patch_config(_api::SystemApi, config::Config; _mediaType=nothing) -> Config, OpenAPI.Clients.ApiResponse <br/>
> patch_config(_api::SystemApi, response_stream::Channel, config::Config; _mediaType=nothing) -> Channel{ Config }, OpenAPI.Clients.ApiResponse

Patch configuration

Submit configuration to patch. As of server version 4.8, the `PluginSettings.EnableUploads` setting cannot be modified by this endpoint. ##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.20 ##### Note The Plugins are stored as a map, and since a map may recursively go  down to any depth, individual fields of a map are not changed.  Consider using the `update config` (PUT api/v4/config) endpoint to update a plugins configurations. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 
**config** | [**Config**](Config.md)| Mattermost configuration | 

### Return type

[**Config**](Config.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_log**
> post_log(_api::SystemApi, post_log_request::PostLogRequest; _mediaType=nothing) -> Vector{String}, OpenAPI.Clients.ApiResponse <br/>
> post_log(_api::SystemApi, response_stream::Channel, post_log_request::PostLogRequest; _mediaType=nothing) -> Channel{ Vector{String} }, OpenAPI.Clients.ApiResponse

Add log message

Add log messages to the server logs. ##### Permissions Users with `manage_system` permission can log ERROR or DEBUG messages. Logged in users can log ERROR or DEBUG messages when `ServiceSettings.EnableDeveloper` is `true` or just DEBUG messages when `false`. Non-logged in users can log ERROR or DEBUG messages when `ServiceSettings.EnableDeveloper` is `true` and cannot log when `false`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 
**post_log_request** | [**PostLogRequest**](PostLogRequest.md)|  | 

### Return type

**Vector{String}**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **reload_config**
> reload_config(_api::SystemApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> reload_config(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Reload configuration

Reload the configuration file to pick up on any changes made to it. ##### Permissions Must have `manage_system` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **remove_license_file**
> remove_license_file(_api::SystemApi; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> remove_license_file(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Remove license file

Remove the license file from the server. This will disable all enterprise features.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **request_license_renewal_link**
> request_license_renewal_link(_api::SystemApi; _mediaType=nothing) -> LicenseRenewalLink, OpenAPI.Clients.ApiResponse <br/>
> request_license_renewal_link(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ LicenseRenewalLink }, OpenAPI.Clients.ApiResponse

Request the license renewal link

Request the renewal link that would be used to start the license renewal process __Minimum server version__: 5.32 ##### Permissions Must have `sysconsole_write_about` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**LicenseRenewalLink**](LicenseRenewalLink.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **request_trial_license**
> request_trial_license(_api::SystemApi, request_trial_license_request::RequestTrialLicenseRequest; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> request_trial_license(_api::SystemApi, response_stream::Channel, request_trial_license_request::RequestTrialLicenseRequest; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Request and install a trial license for your server

Request and install a trial license for your server __Minimum server version__: 5.25 ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 
**request_trial_license_request** | [**RequestTrialLicenseRequest**](RequestTrialLicenseRequest.md)| License request | 

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **restart_server**
> restart_server(_api::SystemApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> restart_server(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Restart the system after an upgrade from Team Edition to Enterprise Edition

It restarts the current running mattermost instance to execute the new Enterprise binary. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **send_trial_license_warn_metric_ack**
> send_trial_license_warn_metric_ack(_api::SystemApi, warn_metric_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> send_trial_license_warn_metric_ack(_api::SystemApi, response_stream::Channel, warn_metric_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Request trial license and acknowledge a warning of a metric status

Request a trial license and acknowledge a warning for the warn_metric_id metric crossing a threshold (or some similar condition being fulfilled) - sets the \"ack\" status for all the warn metrics in the system.  __Minimum server version__: 5.28  ##### Permissions  Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 
**warn_metric_id** | **String**| Warn Metric Id. | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **send_warn_metric_ack**
> send_warn_metric_ack(_api::SystemApi, warn_metric_id::String, send_warn_metric_ack_request::SendWarnMetricAckRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> send_warn_metric_ack(_api::SystemApi, response_stream::Channel, warn_metric_id::String, send_warn_metric_ack_request::SendWarnMetricAckRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Acknowledge a warning of a metric status

Acknowledge a warning for the warn_metric_id metric crossing a threshold (or some similar condition being fulfilled) - attempts to send an ack email to acknowledge@mattermost.com and sets the \"ack\" status for all the warn metrics in the system.  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 
**warn_metric_id** | **String**| Warn Metric Id. | [default to nothing]
**send_warn_metric_ack_request** | [**SendWarnMetricAckRequest**](SendWarnMetricAckRequest.md)| payload that contains the ack flag | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **set_server_busy**
> set_server_busy(_api::SystemApi; seconds=nothing, _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> set_server_busy(_api::SystemApi, response_stream::Channel; seconds=nothing, _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Set the server busy (high load) flag

Marks the server as currently having high load which disables non-critical services such as search, statuses and typing notifications.  __Minimum server version__: 5.20  ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seconds** | **String**| Number of seconds until server is automatically marked as not busy. | [default to &quot;3600&quot;]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **test_email**
> test_email(_api::SystemApi, config::Config; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> test_email(_api::SystemApi, response_stream::Channel, config::Config; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Send a test email

Send a test email to make sure you have your email settings configured correctly. Optionally provide a configuration in the request body to test. If no valid configuration is present in the request body the current server configuration will be tested. ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 
**config** | [**Config**](Config.md)| Mattermost configuration | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **test_s3_connection**
> test_s3_connection(_api::SystemApi, config::Config; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> test_s3_connection(_api::SystemApi, response_stream::Channel, config::Config; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Test AWS S3 connection

Send a test to validate if can connect to AWS S3. Optionally provide a configuration in the request body to test. If no valid configuration is present in the request body the current server configuration will be tested. ##### Permissions Must have `manage_system` permission. __Minimum server version__: 4.8 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 
**config** | [**Config**](Config.md)| Mattermost configuration | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **test_site_u_r_l**
> test_site_u_r_l(_api::SystemApi, test_site_u_r_l_request::TestSiteURLRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> test_site_u_r_l(_api::SystemApi, response_stream::Channel, test_site_u_r_l_request::TestSiteURLRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Checks the validity of a Site URL

Sends a Ping request to the mattermost server using the specified Site URL.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.16 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 
**test_site_u_r_l_request** | [**TestSiteURLRequest**](TestSiteURLRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_config**
> update_config(_api::SystemApi, config::Config; _mediaType=nothing) -> Config, OpenAPI.Clients.ApiResponse <br/>
> update_config(_api::SystemApi, response_stream::Channel, config::Config; _mediaType=nothing) -> Channel{ Config }, OpenAPI.Clients.ApiResponse

Update configuration

Submit a new configuration for the server to use. As of server version 4.8, the `PluginSettings.EnableUploads` setting cannot be modified by this endpoint. Note that the parameters that aren't set in the configuration that you provide will be reset to default values. Therefore, if you want to change a configuration parameter and leave the other ones unchanged, you need to get the existing configuration first, change the field that you want, then put that new configuration. ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 
**config** | [**Config**](Config.md)| Mattermost configuration | 

### Return type

[**Config**](Config.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_marketplace_visited_by_admin**
> update_marketplace_visited_by_admin(_api::SystemApi, system::System; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> update_marketplace_visited_by_admin(_api::SystemApi, response_stream::Channel, system::System; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Stores that the Plugin Marketplace has been visited by at least an admin.

Stores the system-level status that specifies that at least an admin has visited the in-product Plugin Marketplace. __Minimum server version: 5.33__ ##### Permissions Must have `manage_system` permissions. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 
**system** | [**System**](System.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **upgrade_to_enterprise**
> upgrade_to_enterprise(_api::SystemApi; _mediaType=nothing) -> PushNotification, OpenAPI.Clients.ApiResponse <br/>
> upgrade_to_enterprise(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ PushNotification }, OpenAPI.Clients.ApiResponse

Executes an inplace upgrade from Team Edition to Enterprise Edition

It downloads the Mattermost Enterprise Edition of your current version and replace your current version with it. After the upgrade you need to restart the Mattermost server. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**PushNotification**](PushNotification.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **upgrade_to_enterprise_status**
> upgrade_to_enterprise_status(_api::SystemApi; _mediaType=nothing) -> UpgradeToEnterpriseStatus200Response, OpenAPI.Clients.ApiResponse <br/>
> upgrade_to_enterprise_status(_api::SystemApi, response_stream::Channel; _mediaType=nothing) -> Channel{ UpgradeToEnterpriseStatus200Response }, OpenAPI.Clients.ApiResponse

Get the current status for the inplace upgrade from Team Edition to Enterprise Edition

It returns the percentage of completion of the current upgrade or the error if there is any. __Minimum server version__: 5.27 ##### Permissions Must have `manage_system` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**UpgradeToEnterpriseStatus200Response**](UpgradeToEnterpriseStatus200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **upload_license_file**
> upload_license_file(_api::SystemApi, license::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> upload_license_file(_api::SystemApi, response_stream::Channel, license::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Upload license file

Upload a license to enable enterprise features.  __Minimum server version__: 4.0  ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SystemApi** | API context | 
**license** | **String****String**| The license to be uploaded | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

