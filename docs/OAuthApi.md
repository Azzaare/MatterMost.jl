# OAuthApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_o_auth_app**](OAuthApi.md#create_o_auth_app) | **POST** /oauth/apps | Register OAuth app
[**delete_o_auth_app**](OAuthApi.md#delete_o_auth_app) | **DELETE** /oauth/apps/{app_id} | Delete an OAuth app
[**get_authorized_o_auth_apps_for_user**](OAuthApi.md#get_authorized_o_auth_apps_for_user) | **GET** /users/{user_id}/oauth/apps/authorized | Get authorized OAuth apps
[**get_o_auth_app**](OAuthApi.md#get_o_auth_app) | **GET** /oauth/apps/{app_id} | Get an OAuth app
[**get_o_auth_app_info**](OAuthApi.md#get_o_auth_app_info) | **GET** /oauth/apps/{app_id}/info | Get info on an OAuth app
[**get_o_auth_apps**](OAuthApi.md#get_o_auth_apps) | **GET** /oauth/apps | Get OAuth apps
[**regenerate_o_auth_app_secret**](OAuthApi.md#regenerate_o_auth_app_secret) | **POST** /oauth/apps/{app_id}/regen_secret | Regenerate OAuth app secret
[**update_o_auth_app**](OAuthApi.md#update_o_auth_app) | **PUT** /oauth/apps/{app_id} | Update an OAuth app


# **create_o_auth_app**
> create_o_auth_app(_api::OAuthApi, create_o_auth_app_request::CreateOAuthAppRequest; _mediaType=nothing) -> OAuthApp, OpenAPI.Clients.ApiResponse <br/>
> create_o_auth_app(_api::OAuthApi, response_stream::Channel, create_o_auth_app_request::CreateOAuthAppRequest; _mediaType=nothing) -> Channel{ OAuthApp }, OpenAPI.Clients.ApiResponse

Register OAuth app

Register an OAuth 2.0 client application with Mattermost as the service provider. ##### Permissions Must have `manage_oauth` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OAuthApi** | API context | 
**create_o_auth_app_request** | [**CreateOAuthAppRequest**](CreateOAuthAppRequest.md)| OAuth application to register | 

### Return type

[**OAuthApp**](OAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_o_auth_app**
> delete_o_auth_app(_api::OAuthApi, app_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_o_auth_app(_api::OAuthApi, response_stream::Channel, app_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Delete an OAuth app

Delete and unregister an OAuth 2.0 client application  ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OAuthApi** | API context | 
**app_id** | **String**| Application client id | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_authorized_o_auth_apps_for_user**
> get_authorized_o_auth_apps_for_user(_api::OAuthApi, user_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{OAuthApp}, OpenAPI.Clients.ApiResponse <br/>
> get_authorized_o_auth_apps_for_user(_api::OAuthApi, response_stream::Channel, user_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{OAuthApp} }, OpenAPI.Clients.ApiResponse

Get authorized OAuth apps

Get a page of OAuth 2.0 client applications authorized to access a user's account. ##### Permissions Must be authenticated as the user or have `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OAuthApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of apps per page. | [default to 60]

### Return type

[**Vector{OAuthApp}**](OAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_o_auth_app**
> get_o_auth_app(_api::OAuthApi, app_id::String; _mediaType=nothing) -> OAuthApp, OpenAPI.Clients.ApiResponse <br/>
> get_o_auth_app(_api::OAuthApi, response_stream::Channel, app_id::String; _mediaType=nothing) -> Channel{ OAuthApp }, OpenAPI.Clients.ApiResponse

Get an OAuth app

Get an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OAuthApi** | API context | 
**app_id** | **String**| Application client id | [default to nothing]

### Return type

[**OAuthApp**](OAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_o_auth_app_info**
> get_o_auth_app_info(_api::OAuthApi, app_id::String; _mediaType=nothing) -> OAuthApp, OpenAPI.Clients.ApiResponse <br/>
> get_o_auth_app_info(_api::OAuthApi, response_stream::Channel, app_id::String; _mediaType=nothing) -> Channel{ OAuthApp }, OpenAPI.Clients.ApiResponse

Get info on an OAuth app

Get public information about an OAuth 2.0 client application registered with Mattermost. The application's client secret will be blanked out. ##### Permissions Must be authenticated. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OAuthApi** | API context | 
**app_id** | **String**| Application client id | [default to nothing]

### Return type

[**OAuthApp**](OAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_o_auth_apps**
> get_o_auth_apps(_api::OAuthApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{OAuthApp}, OpenAPI.Clients.ApiResponse <br/>
> get_o_auth_apps(_api::OAuthApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{OAuthApp} }, OpenAPI.Clients.ApiResponse

Get OAuth apps

Get a page of OAuth 2.0 client applications registered with Mattermost. ##### Permissions With `manage_oauth` permission, the apps registered by the logged in user are returned. With `manage_system_wide_oauth` permission, all apps regardless of creator are returned. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OAuthApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of apps per page. | [default to 60]

### Return type

[**Vector{OAuthApp}**](OAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **regenerate_o_auth_app_secret**
> regenerate_o_auth_app_secret(_api::OAuthApi, app_id::String; _mediaType=nothing) -> OAuthApp, OpenAPI.Clients.ApiResponse <br/>
> regenerate_o_auth_app_secret(_api::OAuthApi, response_stream::Channel, app_id::String; _mediaType=nothing) -> Channel{ OAuthApp }, OpenAPI.Clients.ApiResponse

Regenerate OAuth app secret

Regenerate the client secret for an OAuth 2.0 client application registered with Mattermost. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OAuthApi** | API context | 
**app_id** | **String**| Application client id | [default to nothing]

### Return type

[**OAuthApp**](OAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_o_auth_app**
> update_o_auth_app(_api::OAuthApi, app_id::String, update_o_auth_app_request::UpdateOAuthAppRequest; _mediaType=nothing) -> OAuthApp, OpenAPI.Clients.ApiResponse <br/>
> update_o_auth_app(_api::OAuthApi, response_stream::Channel, app_id::String, update_o_auth_app_request::UpdateOAuthAppRequest; _mediaType=nothing) -> Channel{ OAuthApp }, OpenAPI.Clients.ApiResponse

Update an OAuth app

Update an OAuth 2.0 client application based on OAuth struct. ##### Permissions If app creator, must have `mange_oauth` permission otherwise `manage_system_wide_oauth` permission is required. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OAuthApi** | API context | 
**app_id** | **String**| Application client id | [default to nothing]
**update_o_auth_app_request** | [**UpdateOAuthAppRequest**](UpdateOAuthAppRequest.md)| OAuth application to update | 

### Return type

[**OAuthApp**](OAuthApp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

