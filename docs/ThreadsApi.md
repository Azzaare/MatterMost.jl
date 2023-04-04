# ThreadsApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_thread_mention_counts_by_channel**](ThreadsApi.md#get_thread_mention_counts_by_channel) | **GET** /users/{user_id}/teams/{team_id}/threads/mention_counts | Get all unread mention counts from followed threads, per-channel
[**get_user_thread**](ThreadsApi.md#get_user_thread) | **GET** /users/{user_id}/teams/{team_id}/threads/{thread_id} | Get a thread followed by the user
[**get_user_threads**](ThreadsApi.md#get_user_threads) | **GET** /users/{user_id}/teams/{team_id}/threads | Get all threads that user is following
[**set_thread_unread_by_post_id**](ThreadsApi.md#set_thread_unread_by_post_id) | **PUT** /users/{user_id}/teams/{team_id}/threads/{thread_id}/set_unread/{post_id} | Mark a thread that user is following as unread based on a post id
[**start_following_thread**](ThreadsApi.md#start_following_thread) | **PUT** /users/{user_id}/teams/{team_id}/threads/{thread_id}/following | Start following a thread
[**stop_following_thread**](ThreadsApi.md#stop_following_thread) | **DELETE** /users/{user_id}/teams/{team_id}/threads/{thread_id}/following | Stop following a thread
[**update_thread_read_for_user**](ThreadsApi.md#update_thread_read_for_user) | **PUT** /users/{user_id}/teams/{team_id}/threads/{thread_id}/read/{timestamp} | Mark a thread that user is following read state to the timestamp
[**update_threads_read_for_user**](ThreadsApi.md#update_threads_read_for_user) | **PUT** /users/{user_id}/teams/{team_id}/threads/read | Mark all threads that user is following as read


# **get_thread_mention_counts_by_channel**
> get_thread_mention_counts_by_channel(_api::ThreadsApi, user_id::String, team_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_thread_mention_counts_by_channel(_api::ThreadsApi, response_stream::Channel, user_id::String, team_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Get all unread mention counts from followed threads, per-channel

Get all unread mention counts from followed threads  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ThreadsApi** | API context | 
**user_id** | **String**| The ID of the user. This can also be \&quot;me\&quot; which will point to the current user. | [default to nothing]
**team_id** | **String**| The ID of the team in which the thread is. | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_user_thread**
> get_user_thread(_api::ThreadsApi, user_id::String, team_id::String, thread_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_user_thread(_api::ThreadsApi, response_stream::Channel, user_id::String, team_id::String, thread_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Get a thread followed by the user

Get a thread  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ThreadsApi** | API context | 
**user_id** | **String**| The ID of the user. This can also be \&quot;me\&quot; which will point to the current user. | [default to nothing]
**team_id** | **String**| The ID of the team in which the thread is. | [default to nothing]
**thread_id** | **String**| The ID of the thread to follow | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_user_threads**
> get_user_threads(_api::ThreadsApi, user_id::String, team_id::String; since=nothing, deleted=nothing, extended=nothing, page=nothing, page_size=nothing, totals_only=nothing, threads_only=nothing, _mediaType=nothing) -> UserThreads, OpenAPI.Clients.ApiResponse <br/>
> get_user_threads(_api::ThreadsApi, response_stream::Channel, user_id::String, team_id::String; since=nothing, deleted=nothing, extended=nothing, page=nothing, page_size=nothing, totals_only=nothing, threads_only=nothing, _mediaType=nothing) -> Channel{ UserThreads }, OpenAPI.Clients.ApiResponse

Get all threads that user is following

Get all threads that user is following  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ThreadsApi** | API context | 
**user_id** | **String**| The ID of the user. This can also be \&quot;me\&quot; which will point to the current user. | [default to nothing]
**team_id** | **String**| The ID of the team in which the thread is. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **Int64**| Since filters the threads based on their LastUpdateAt timestamp. | [default to nothing]
 **deleted** | **Bool**| Deleted will specify that even deleted threads should be returned (For mobile sync). | [default to false]
 **extended** | **Bool**| Extended will enrich the response with participant details. | [default to false]
 **page** | **Int64**| Page specifies which part of the results to return, by PageSize. | [default to 0]
 **page_size** | **Int64**| PageSize specifies the size of the returned chunk of results. | [default to 30]
 **totals_only** | **Bool**| Setting this to true will only return the total counts. | [default to false]
 **threads_only** | **Bool**| Setting this to true will only return threads. | [default to false]

### Return type

[**UserThreads**](UserThreads.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **set_thread_unread_by_post_id**
> set_thread_unread_by_post_id(_api::ThreadsApi, user_id::String, team_id::String, thread_id::String, post_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> set_thread_unread_by_post_id(_api::ThreadsApi, response_stream::Channel, user_id::String, team_id::String, thread_id::String, post_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Mark a thread that user is following as unread based on a post id

Mark a thread that user is following as unread  __Minimum server version__: 6.7  ##### Permissions Must have `read_channel` permission for the channel the thread is in or if the channel is public, have the `read_public_channels` permission for the team.  Must have `edit_other_users` permission if the user is not the one marking the thread for himself. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ThreadsApi** | API context | 
**user_id** | **String**| The ID of the user. This can also be \&quot;me\&quot; which will point to the current user. | [default to nothing]
**team_id** | **String**| The ID of the team in which the thread is. | [default to nothing]
**thread_id** | **String**| The ID of the thread to update | [default to nothing]
**post_id** | **String**| The ID of a post belonging to the thread to mark as unread. | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **start_following_thread**
> start_following_thread(_api::ThreadsApi, user_id::String, team_id::String, thread_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> start_following_thread(_api::ThreadsApi, response_stream::Channel, user_id::String, team_id::String, thread_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Start following a thread

Start following a thread  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ThreadsApi** | API context | 
**user_id** | **String**| The ID of the user. This can also be \&quot;me\&quot; which will point to the current user. | [default to nothing]
**team_id** | **String**| The ID of the team in which the thread is. | [default to nothing]
**thread_id** | **String**| The ID of the thread to follow | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **stop_following_thread**
> stop_following_thread(_api::ThreadsApi, user_id::String, team_id::String, thread_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> stop_following_thread(_api::ThreadsApi, response_stream::Channel, user_id::String, team_id::String, thread_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Stop following a thread

Stop following a thread  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ThreadsApi** | API context | 
**user_id** | **String**| The ID of the user. This can also be \&quot;me\&quot; which will point to the current user. | [default to nothing]
**team_id** | **String**| The ID of the team in which the thread is. | [default to nothing]
**thread_id** | **String**| The ID of the thread to update | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_thread_read_for_user**
> update_thread_read_for_user(_api::ThreadsApi, user_id::String, team_id::String, thread_id::String, timestamp::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> update_thread_read_for_user(_api::ThreadsApi, response_stream::Channel, user_id::String, team_id::String, thread_id::String, timestamp::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Mark a thread that user is following read state to the timestamp

Mark a thread that user is following as read  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ThreadsApi** | API context | 
**user_id** | **String**| The ID of the user. This can also be \&quot;me\&quot; which will point to the current user. | [default to nothing]
**team_id** | **String**| The ID of the team in which the thread is. | [default to nothing]
**thread_id** | **String**| The ID of the thread to update | [default to nothing]
**timestamp** | **String**| The timestamp to which the thread&#39;s \&quot;last read\&quot; state will be reset. | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_threads_read_for_user**
> update_threads_read_for_user(_api::ThreadsApi, user_id::String, team_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> update_threads_read_for_user(_api::ThreadsApi, response_stream::Channel, user_id::String, team_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Mark all threads that user is following as read

Mark all threads that user is following as read  __Minimum server version__: 5.29  ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ThreadsApi** | API context | 
**user_id** | **String**| The ID of the user. This can also be \&quot;me\&quot; which will point to the current user. | [default to nothing]
**team_id** | **String**| The ID of the team in which the thread is. | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

