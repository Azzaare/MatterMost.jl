# PreferencesApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_preferences**](PreferencesApi.md#delete_preferences) | **POST** /users/{user_id}/preferences/delete | Delete user&#39;s preferences
[**get_preferences**](PreferencesApi.md#get_preferences) | **GET** /users/{user_id}/preferences | Get the user&#39;s preferences
[**get_preferences_by_category**](PreferencesApi.md#get_preferences_by_category) | **GET** /users/{user_id}/preferences/{category} | List a user&#39;s preferences by category
[**get_preferences_by_category_by_name**](PreferencesApi.md#get_preferences_by_category_by_name) | **GET** /users/{user_id}/preferences/{category}/name/{preference_name} | Get a specific user preference
[**update_preferences**](PreferencesApi.md#update_preferences) | **PUT** /users/{user_id}/preferences | Save the user&#39;s preferences


# **delete_preferences**
> delete_preferences(_api::PreferencesApi, user_id::String, preference::Vector{Preference}; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_preferences(_api::PreferencesApi, response_stream::Channel, user_id::String, preference::Vector{Preference}; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Delete user's preferences

Delete a list of the user's preferences. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PreferencesApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**preference** | [**Vector{Preference}**](Preference.md)| List of preference objects | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_preferences**
> get_preferences(_api::PreferencesApi, user_id::String; _mediaType=nothing) -> Vector{Preference}, OpenAPI.Clients.ApiResponse <br/>
> get_preferences(_api::PreferencesApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ Vector{Preference} }, OpenAPI.Clients.ApiResponse

Get the user's preferences

Get a list of the user's preferences. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PreferencesApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**Vector{Preference}**](Preference.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_preferences_by_category**
> get_preferences_by_category(_api::PreferencesApi, user_id::String, category::String; _mediaType=nothing) -> Vector{Preference}, OpenAPI.Clients.ApiResponse <br/>
> get_preferences_by_category(_api::PreferencesApi, response_stream::Channel, user_id::String, category::String; _mediaType=nothing) -> Channel{ Vector{Preference} }, OpenAPI.Clients.ApiResponse

List a user's preferences by category

Lists the current user's stored preferences in the given category. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PreferencesApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**category** | **String**| The category of a group of preferences | [default to nothing]

### Return type

[**Vector{Preference}**](Preference.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_preferences_by_category_by_name**
> get_preferences_by_category_by_name(_api::PreferencesApi, user_id::String, category::String, preference_name::String; _mediaType=nothing) -> Preference, OpenAPI.Clients.ApiResponse <br/>
> get_preferences_by_category_by_name(_api::PreferencesApi, response_stream::Channel, user_id::String, category::String, preference_name::String; _mediaType=nothing) -> Channel{ Preference }, OpenAPI.Clients.ApiResponse

Get a specific user preference

Gets a single preference for the current user with the given category and name. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PreferencesApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**category** | **String**| The category of a group of preferences | [default to nothing]
**preference_name** | **String**| The name of the preference | [default to nothing]

### Return type

[**Preference**](Preference.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_preferences**
> update_preferences(_api::PreferencesApi, user_id::String, preference::Vector{Preference}; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> update_preferences(_api::PreferencesApi, response_stream::Channel, user_id::String, preference::Vector{Preference}; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Save the user's preferences

Save a list of the user's preferences. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PreferencesApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**preference** | [**Vector{Preference}**](Preference.md)| List of preference objects | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

