# WebhooksApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_incoming_webhook**](WebhooksApi.md#create_incoming_webhook) | **POST** /hooks/incoming | Create an incoming webhook
[**create_outgoing_webhook**](WebhooksApi.md#create_outgoing_webhook) | **POST** /hooks/outgoing | Create an outgoing webhook
[**delete_incoming_webhook**](WebhooksApi.md#delete_incoming_webhook) | **DELETE** /hooks/incoming/{hook_id} | Delete an incoming webhook
[**delete_outgoing_webhook**](WebhooksApi.md#delete_outgoing_webhook) | **DELETE** /hooks/outgoing/{hook_id} | Delete an outgoing webhook
[**get_incoming_webhook**](WebhooksApi.md#get_incoming_webhook) | **GET** /hooks/incoming/{hook_id} | Get an incoming webhook
[**get_incoming_webhooks**](WebhooksApi.md#get_incoming_webhooks) | **GET** /hooks/incoming | List incoming webhooks
[**get_outgoing_webhook**](WebhooksApi.md#get_outgoing_webhook) | **GET** /hooks/outgoing/{hook_id} | Get an outgoing webhook
[**get_outgoing_webhooks**](WebhooksApi.md#get_outgoing_webhooks) | **GET** /hooks/outgoing | List outgoing webhooks
[**regen_outgoing_hook_token**](WebhooksApi.md#regen_outgoing_hook_token) | **POST** /hooks/outgoing/{hook_id}/regen_token | Regenerate the token for the outgoing webhook.
[**update_incoming_webhook**](WebhooksApi.md#update_incoming_webhook) | **PUT** /hooks/incoming/{hook_id} | Update an incoming webhook
[**update_outgoing_webhook**](WebhooksApi.md#update_outgoing_webhook) | **PUT** /hooks/outgoing/{hook_id} | Update an outgoing webhook


# **create_incoming_webhook**
> create_incoming_webhook(_api::WebhooksApi, create_incoming_webhook_request::CreateIncomingWebhookRequest; _mediaType=nothing) -> IncomingWebhook, OpenAPI.Clients.ApiResponse <br/>
> create_incoming_webhook(_api::WebhooksApi, response_stream::Channel, create_incoming_webhook_request::CreateIncomingWebhookRequest; _mediaType=nothing) -> Channel{ IncomingWebhook }, OpenAPI.Clients.ApiResponse

Create an incoming webhook

Create an incoming webhook for a channel. ##### Permissions `manage_webhooks` for the team the webhook is in.  `manage_others_incoming_webhooks` for the team the webhook is in if the user is different than the requester. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **WebhooksApi** | API context | 
**create_incoming_webhook_request** | [**CreateIncomingWebhookRequest**](CreateIncomingWebhookRequest.md)| Incoming webhook to be created | 

### Return type

[**IncomingWebhook**](IncomingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_outgoing_webhook**
> create_outgoing_webhook(_api::WebhooksApi, create_outgoing_webhook_request::CreateOutgoingWebhookRequest; _mediaType=nothing) -> OutgoingWebhook, OpenAPI.Clients.ApiResponse <br/>
> create_outgoing_webhook(_api::WebhooksApi, response_stream::Channel, create_outgoing_webhook_request::CreateOutgoingWebhookRequest; _mediaType=nothing) -> Channel{ OutgoingWebhook }, OpenAPI.Clients.ApiResponse

Create an outgoing webhook

Create an outgoing webhook for a team. ##### Permissions `manage_webhooks` for the team the webhook is in.  `manage_others_outgoing_webhooks` for the team the webhook is in if the user is different than the requester. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **WebhooksApi** | API context | 
**create_outgoing_webhook_request** | [**CreateOutgoingWebhookRequest**](CreateOutgoingWebhookRequest.md)| Outgoing webhook to be created | 

### Return type

[**OutgoingWebhook**](OutgoingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_incoming_webhook**
> delete_incoming_webhook(_api::WebhooksApi, hook_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_incoming_webhook(_api::WebhooksApi, response_stream::Channel, hook_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Delete an incoming webhook

Delete an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **WebhooksApi** | API context | 
**hook_id** | **String**| Incoming webhook GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_outgoing_webhook**
> delete_outgoing_webhook(_api::WebhooksApi, hook_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_outgoing_webhook(_api::WebhooksApi, response_stream::Channel, hook_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Delete an outgoing webhook

Delete an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **WebhooksApi** | API context | 
**hook_id** | **String**| Outgoing webhook GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_incoming_webhook**
> get_incoming_webhook(_api::WebhooksApi, hook_id::String; _mediaType=nothing) -> IncomingWebhook, OpenAPI.Clients.ApiResponse <br/>
> get_incoming_webhook(_api::WebhooksApi, response_stream::Channel, hook_id::String; _mediaType=nothing) -> Channel{ IncomingWebhook }, OpenAPI.Clients.ApiResponse

Get an incoming webhook

Get an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **WebhooksApi** | API context | 
**hook_id** | **String**| Incoming Webhook GUID | [default to nothing]

### Return type

[**IncomingWebhook**](IncomingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_incoming_webhooks**
> get_incoming_webhooks(_api::WebhooksApi; page=nothing, per_page=nothing, team_id=nothing, _mediaType=nothing) -> Vector{IncomingWebhook}, OpenAPI.Clients.ApiResponse <br/>
> get_incoming_webhooks(_api::WebhooksApi, response_stream::Channel; page=nothing, per_page=nothing, team_id=nothing, _mediaType=nothing) -> Channel{ Vector{IncomingWebhook} }, OpenAPI.Clients.ApiResponse

List incoming webhooks

Get a page of a list of incoming webhooks. Optionally filter for a specific team using query parameters. ##### Permissions `manage_webhooks` for the system or `manage_webhooks` for the specific team. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **WebhooksApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of hooks per page. | [default to 60]
 **team_id** | **String**| The ID of the team to get hooks for. | [default to nothing]

### Return type

[**Vector{IncomingWebhook}**](IncomingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_outgoing_webhook**
> get_outgoing_webhook(_api::WebhooksApi, hook_id::String; _mediaType=nothing) -> OutgoingWebhook, OpenAPI.Clients.ApiResponse <br/>
> get_outgoing_webhook(_api::WebhooksApi, response_stream::Channel, hook_id::String; _mediaType=nothing) -> Channel{ OutgoingWebhook }, OpenAPI.Clients.ApiResponse

Get an outgoing webhook

Get an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **WebhooksApi** | API context | 
**hook_id** | **String**| Outgoing webhook GUID | [default to nothing]

### Return type

[**OutgoingWebhook**](OutgoingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_outgoing_webhooks**
> get_outgoing_webhooks(_api::WebhooksApi; page=nothing, per_page=nothing, team_id=nothing, channel_id=nothing, _mediaType=nothing) -> Vector{OutgoingWebhook}, OpenAPI.Clients.ApiResponse <br/>
> get_outgoing_webhooks(_api::WebhooksApi, response_stream::Channel; page=nothing, per_page=nothing, team_id=nothing, channel_id=nothing, _mediaType=nothing) -> Channel{ Vector{OutgoingWebhook} }, OpenAPI.Clients.ApiResponse

List outgoing webhooks

Get a page of a list of outgoing webhooks. Optionally filter for a specific team or channel using query parameters. ##### Permissions `manage_webhooks` for the system or `manage_webhooks` for the specific team/channel. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **WebhooksApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of hooks per page. | [default to 60]
 **team_id** | **String**| The ID of the team to get hooks for. | [default to nothing]
 **channel_id** | **String**| The ID of the channel to get hooks for. | [default to nothing]

### Return type

[**Vector{OutgoingWebhook}**](OutgoingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **regen_outgoing_hook_token**
> regen_outgoing_hook_token(_api::WebhooksApi, hook_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> regen_outgoing_hook_token(_api::WebhooksApi, response_stream::Channel, hook_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Regenerate the token for the outgoing webhook.

Regenerate the token for the outgoing webhook. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **WebhooksApi** | API context | 
**hook_id** | **String**| Outgoing webhook GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_incoming_webhook**
> update_incoming_webhook(_api::WebhooksApi, hook_id::String, update_incoming_webhook_request::UpdateIncomingWebhookRequest; _mediaType=nothing) -> IncomingWebhook, OpenAPI.Clients.ApiResponse <br/>
> update_incoming_webhook(_api::WebhooksApi, response_stream::Channel, hook_id::String, update_incoming_webhook_request::UpdateIncomingWebhookRequest; _mediaType=nothing) -> Channel{ IncomingWebhook }, OpenAPI.Clients.ApiResponse

Update an incoming webhook

Update an incoming webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **WebhooksApi** | API context | 
**hook_id** | **String**| Incoming Webhook GUID | [default to nothing]
**update_incoming_webhook_request** | [**UpdateIncomingWebhookRequest**](UpdateIncomingWebhookRequest.md)| Incoming webhook to be updated | 

### Return type

[**IncomingWebhook**](IncomingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_outgoing_webhook**
> update_outgoing_webhook(_api::WebhooksApi, hook_id::String, update_outgoing_webhook_request::UpdateOutgoingWebhookRequest; _mediaType=nothing) -> OutgoingWebhook, OpenAPI.Clients.ApiResponse <br/>
> update_outgoing_webhook(_api::WebhooksApi, response_stream::Channel, hook_id::String, update_outgoing_webhook_request::UpdateOutgoingWebhookRequest; _mediaType=nothing) -> Channel{ OutgoingWebhook }, OpenAPI.Clients.ApiResponse

Update an outgoing webhook

Update an outgoing webhook given the hook id. ##### Permissions `manage_webhooks` for system or `manage_webhooks` for the specific team or `manage_webhooks` for the channel. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **WebhooksApi** | API context | 
**hook_id** | **String**| outgoing Webhook GUID | [default to nothing]
**update_outgoing_webhook_request** | [**UpdateOutgoingWebhookRequest**](UpdateOutgoingWebhookRequest.md)| Outgoing webhook to be updated | 

### Return type

[**OutgoingWebhook**](OutgoingWebhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

