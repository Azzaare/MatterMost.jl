# StatusApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_user_status**](StatusApi.md#get_user_status) | **GET** /users/{user_id}/status | Get user status
[**get_users_statuses_by_ids**](StatusApi.md#get_users_statuses_by_ids) | **POST** /users/status/ids | Get user statuses by id
[**post_user_recent_custom_status_delete**](StatusApi.md#post_user_recent_custom_status_delete) | **POST** /users/{user_id}/status/custom/recent/delete | Delete user&#39;s recent custom status
[**remove_recent_custom_status**](StatusApi.md#remove_recent_custom_status) | **DELETE** /users/{user_id}/status/custom/recent | Delete user&#39;s recent custom status
[**unset_user_custom_status**](StatusApi.md#unset_user_custom_status) | **DELETE** /users/{user_id}/status/custom | Unsets user custom status
[**update_user_custom_status**](StatusApi.md#update_user_custom_status) | **PUT** /users/{user_id}/status/custom | Update user custom status
[**update_user_status**](StatusApi.md#update_user_status) | **PUT** /users/{user_id}/status | Update user status


# **get_user_status**
> get_user_status(_api::StatusApi, user_id::String; _mediaType=nothing) -> Status, OpenAPI.Clients.ApiResponse <br/>
> get_user_status(_api::StatusApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ Status }, OpenAPI.Clients.ApiResponse

Get user status

Get user status by id from the server. ##### Permissions Must be authenticated. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **StatusApi** | API context | 
**user_id** | **String**| User ID | [default to nothing]

### Return type

[**Status**](Status.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_users_statuses_by_ids**
> get_users_statuses_by_ids(_api::StatusApi, request_body::Vector{String}; _mediaType=nothing) -> Vector{Status}, OpenAPI.Clients.ApiResponse <br/>
> get_users_statuses_by_ids(_api::StatusApi, response_stream::Channel, request_body::Vector{String}; _mediaType=nothing) -> Channel{ Vector{Status} }, OpenAPI.Clients.ApiResponse

Get user statuses by id

Get a list of user statuses by id from the server. ##### Permissions Must be authenticated. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **StatusApi** | API context | 
**request_body** | [**Vector{String}**](String.md)| List of user ids to fetch | 

### Return type

[**Vector{Status}**](Status.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_user_recent_custom_status_delete**
> post_user_recent_custom_status_delete(_api::StatusApi, user_id::String, remove_recent_custom_status_request::RemoveRecentCustomStatusRequest; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> post_user_recent_custom_status_delete(_api::StatusApi, response_stream::Channel, user_id::String, remove_recent_custom_status_request::RemoveRecentCustomStatusRequest; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Delete user's recent custom status

Deletes a user's recent custom status by removing the specific status from the recentCustomStatuses in the user's props and updates the user. ##### Permissions Must be logged in as the user whose recent custom status is being deleted. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **StatusApi** | API context | 
**user_id** | **String**| User ID | [default to nothing]
**remove_recent_custom_status_request** | [**RemoveRecentCustomStatusRequest**](RemoveRecentCustomStatusRequest.md)| Custom Status object that is to be removed from the recent custom statuses. | 

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **remove_recent_custom_status**
> remove_recent_custom_status(_api::StatusApi, user_id::String, remove_recent_custom_status_request::RemoveRecentCustomStatusRequest; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> remove_recent_custom_status(_api::StatusApi, response_stream::Channel, user_id::String, remove_recent_custom_status_request::RemoveRecentCustomStatusRequest; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Delete user's recent custom status

Deletes a user's recent custom status by removing the specific status from the recentCustomStatuses in the user's props and updates the user. ##### Permissions Must be logged in as the user whose recent custom status is being deleted. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **StatusApi** | API context | 
**user_id** | **String**| User ID | [default to nothing]
**remove_recent_custom_status_request** | [**RemoveRecentCustomStatusRequest**](RemoveRecentCustomStatusRequest.md)| Custom Status object that is to be removed from the recent custom statuses. | 

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **unset_user_custom_status**
> unset_user_custom_status(_api::StatusApi, user_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> unset_user_custom_status(_api::StatusApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Unsets user custom status

Unsets a user's custom status by updating the user's props and updates the user ##### Permissions Must be logged in as the user whose custom status is being removed. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **StatusApi** | API context | 
**user_id** | **String**| User ID | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_user_custom_status**
> update_user_custom_status(_api::StatusApi, user_id::String, update_user_custom_status_request::UpdateUserCustomStatusRequest; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> update_user_custom_status(_api::StatusApi, response_stream::Channel, user_id::String, update_user_custom_status_request::UpdateUserCustomStatusRequest; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Update user custom status

Updates a user's custom status by setting the value in the user's props and updates the user. Also save the given custom status to the recent custom statuses in the user's props ##### Permissions Must be logged in as the user whose custom status is being updated. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **StatusApi** | API context | 
**user_id** | **String**| User ID | [default to nothing]
**update_user_custom_status_request** | [**UpdateUserCustomStatusRequest**](UpdateUserCustomStatusRequest.md)| Custom status object that is to be updated | 

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_user_status**
> update_user_status(_api::StatusApi, user_id::String, update_user_status_request::UpdateUserStatusRequest; _mediaType=nothing) -> Status, OpenAPI.Clients.ApiResponse <br/>
> update_user_status(_api::StatusApi, response_stream::Channel, user_id::String, update_user_status_request::UpdateUserStatusRequest; _mediaType=nothing) -> Channel{ Status }, OpenAPI.Clients.ApiResponse

Update user status

Manually set a user's status. When setting a user's status, the status will remain that value until set \"online\" again, which will return the status to being automatically updated based on user activity. ##### Permissions Must have `edit_other_users` permission for the team. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **StatusApi** | API context | 
**user_id** | **String**| User ID | [default to nothing]
**update_user_status_request** | [**UpdateUserStatusRequest**](UpdateUserStatusRequest.md)| Status object that is to be updated | 

### Return type

[**Status**](Status.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

