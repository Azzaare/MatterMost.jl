# TermsOfServiceApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_terms_of_service**](TermsOfServiceApi.md#create_terms_of_service) | **POST** /terms_of_service | Creates a new terms of service
[**get_terms_of_service**](TermsOfServiceApi.md#get_terms_of_service) | **GET** /terms_of_service | Get latest terms of service
[**get_user_terms_of_service**](TermsOfServiceApi.md#get_user_terms_of_service) | **GET** /users/{user_id}/terms_of_service | Fetches user&#39;s latest terms of service action if the latest action was for acceptance.
[**register_terms_of_service_action**](TermsOfServiceApi.md#register_terms_of_service_action) | **POST** /users/{user_id}/terms_of_service | Records user action when they accept or decline custom terms of service


# **create_terms_of_service**
> create_terms_of_service(_api::TermsOfServiceApi; _mediaType=nothing) -> TermsOfService, OpenAPI.Clients.ApiResponse <br/>
> create_terms_of_service(_api::TermsOfServiceApi, response_stream::Channel; _mediaType=nothing) -> Channel{ TermsOfService }, OpenAPI.Clients.ApiResponse

Creates a new terms of service

Creates new terms of service  __Minimum server version__: 5.4 ##### Permissions Must have `manage_system` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**TermsOfService**](TermsOfService.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_terms_of_service**
> get_terms_of_service(_api::TermsOfServiceApi; _mediaType=nothing) -> TermsOfService, OpenAPI.Clients.ApiResponse <br/>
> get_terms_of_service(_api::TermsOfServiceApi, response_stream::Channel; _mediaType=nothing) -> Channel{ TermsOfService }, OpenAPI.Clients.ApiResponse

Get latest terms of service

Get latest terms of service from the server  __Minimum server version__: 5.4 ##### Permissions Must be authenticated. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**TermsOfService**](TermsOfService.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_user_terms_of_service**
> get_user_terms_of_service(_api::TermsOfServiceApi, user_id::String; _mediaType=nothing) -> UserTermsOfService, OpenAPI.Clients.ApiResponse <br/>
> get_user_terms_of_service(_api::TermsOfServiceApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ UserTermsOfService }, OpenAPI.Clients.ApiResponse

Fetches user's latest terms of service action if the latest action was for acceptance.

Will be deprecated in v6.0 Fetches user's latest terms of service action if the latest action was for acceptance.  __Minimum server version__: 5.6 ##### Permissions Must be logged in as the user being acted on. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TermsOfServiceApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**UserTermsOfService**](UserTermsOfService.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **register_terms_of_service_action**
> register_terms_of_service_action(_api::TermsOfServiceApi, user_id::String, register_terms_of_service_action_request::RegisterTermsOfServiceActionRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> register_terms_of_service_action(_api::TermsOfServiceApi, response_stream::Channel, user_id::String, register_terms_of_service_action_request::RegisterTermsOfServiceActionRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Records user action when they accept or decline custom terms of service

Records user action when they accept or decline custom terms of service. Records the action in audit table. Updates user's last accepted terms of service ID if they accepted it.  __Minimum server version__: 5.4 ##### Permissions Must be logged in as the user being acted on. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TermsOfServiceApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**register_terms_of_service_action_request** | [**RegisterTermsOfServiceActionRequest**](RegisterTermsOfServiceActionRequest.md)| terms of service details | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

