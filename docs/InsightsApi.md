# InsightsApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_new_team_members**](InsightsApi.md#get_new_team_members) | **GET** /teams/{team_id}/top/team_members | Get a list of new team members.
[**get_top_channels_for_team**](InsightsApi.md#get_top_channels_for_team) | **GET** /teams/{team_id}/top/channels | Get a list of the top channels for a team.
[**get_top_channels_for_user**](InsightsApi.md#get_top_channels_for_user) | **GET** /users/me/top/channels | Get a list of the top channels for a user.
[**get_top_d_ms_for_user**](InsightsApi.md#get_top_d_ms_for_user) | **GET** /users/me/top/dms | Get a list of the top dms for a user.
[**get_top_reactions_for_team**](InsightsApi.md#get_top_reactions_for_team) | **GET** /teams/{team_id}/top/reactions | Get a list of the top reactions for a team.
[**get_top_reactions_for_user**](InsightsApi.md#get_top_reactions_for_user) | **GET** /users/me/top/reactions | Get a list of the top reactions for a user.
[**get_top_threads_for_team**](InsightsApi.md#get_top_threads_for_team) | **GET** /teams/{team_id}/top/threads | Get a list of the top threads for a team.
[**get_top_threads_for_user**](InsightsApi.md#get_top_threads_for_user) | **GET** /users/me/top/threads | Get a list of the top threads for a user.


# **get_new_team_members**
> get_new_team_members(_api::InsightsApi, team_id::String, time_range::String; page=nothing, per_page=nothing, _mediaType=nothing) -> NewTeamMembersList, OpenAPI.Clients.ApiResponse <br/>
> get_new_team_members(_api::InsightsApi, response_stream::Channel, team_id::String, time_range::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ NewTeamMembersList }, OpenAPI.Clients.ApiResponse

Get a list of new team members.

Get a list of all of the new team members that have joined the given team during the given time period. ##### Permissions Must have `view_team` permission for the team. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **InsightsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**time_range** | **String**| Time range can be \&quot;today\&quot;, \&quot;7_day\&quot;, or \&quot;28_day\&quot;. - &#x60;today&#x60;: team members who joined during the current day. - &#x60;7_day&#x60;: team members who joined in the last 7 days. - &#x60;28_day&#x60;: team members who joined in the last 28 days.  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of items per page. | [default to 60]

### Return type

[**NewTeamMembersList**](NewTeamMembersList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_top_channels_for_team**
> get_top_channels_for_team(_api::InsightsApi, team_id::String, time_range::String; page=nothing, per_page=nothing, _mediaType=nothing) -> TopChannelList, OpenAPI.Clients.ApiResponse <br/>
> get_top_channels_for_team(_api::InsightsApi, response_stream::Channel, team_id::String, time_range::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ TopChannelList }, OpenAPI.Clients.ApiResponse

Get a list of the top channels for a team.

Get a list of the top public and private channels (the user is a member of) for a given team. ##### Permissions Must have `view_team` permission for the team. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **InsightsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**time_range** | **String**| Time range can be \&quot;today\&quot;, \&quot;7_day\&quot;, or \&quot;28_day\&quot;. - &#x60;today&#x60;: channels with posts on the current day. - &#x60;7_day&#x60;: channels with posts in the last 7 days. - &#x60;28_day&#x60;: channels with posts in the last 28 days.  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of items per page, up to a maximum of 200. | [default to 60]

### Return type

[**TopChannelList**](TopChannelList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_top_channels_for_user**
> get_top_channels_for_user(_api::InsightsApi, time_range::String; page=nothing, per_page=nothing, team_id=nothing, _mediaType=nothing) -> TopChannelList, OpenAPI.Clients.ApiResponse <br/>
> get_top_channels_for_user(_api::InsightsApi, response_stream::Channel, time_range::String; page=nothing, per_page=nothing, team_id=nothing, _mediaType=nothing) -> Channel{ TopChannelList }, OpenAPI.Clients.ApiResponse

Get a list of the top channels for a user.

Get a list of the top public and private channels (the user is a member of) for a given user. ##### Permissions Must be logged in as the user. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **InsightsApi** | API context | 
**time_range** | **String**| Time range can be \&quot;today\&quot;, \&quot;7_day\&quot;, or \&quot;28_day\&quot;. - &#x60;today&#x60;: channels with posts on the current day. - &#x60;7_day&#x60;: channels with posts in the last 7 days. - &#x60;28_day&#x60;: channels with posts in the last 28 days.  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of items per page, up to a maximum of 200. | [default to 60]
 **team_id** | **String**| Team ID will scope the response to a given team. ##### Permissions Must have &#x60;view_team&#x60; permission for the team.  | [default to nothing]

### Return type

[**TopChannelList**](TopChannelList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_top_d_ms_for_user**
> get_top_d_ms_for_user(_api::InsightsApi, time_range::String; page=nothing, per_page=nothing, _mediaType=nothing) -> TopDMList, OpenAPI.Clients.ApiResponse <br/>
> get_top_d_ms_for_user(_api::InsightsApi, response_stream::Channel, time_range::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ TopDMList }, OpenAPI.Clients.ApiResponse

Get a list of the top dms for a user.

Get a list of the top dms for a given user. ##### Permissions Must be logged in as the user. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **InsightsApi** | API context | 
**time_range** | **String**| Time range can be \&quot;today\&quot;, \&quot;7_day\&quot;, or \&quot;28_day\&quot;. - &#x60;today&#x60;: threads with activity on the current day. - &#x60;7_day&#x60;: threads with activity in the last 7 days. - &#x60;28_day&#x60;: threads with activity in the last 28 days.  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of items per page, up to a maximum of 200. | [default to 60]

### Return type

[**TopDMList**](TopDMList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_top_reactions_for_team**
> get_top_reactions_for_team(_api::InsightsApi, team_id::String, time_range::String; page=nothing, per_page=nothing, _mediaType=nothing) -> TopReactionList, OpenAPI.Clients.ApiResponse <br/>
> get_top_reactions_for_team(_api::InsightsApi, response_stream::Channel, team_id::String, time_range::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ TopReactionList }, OpenAPI.Clients.ApiResponse

Get a list of the top reactions for a team.

Get a list of the top reactions across all public and private channels (the user is a member of) for a given team. ##### Permissions Must have `view_team` permission for the team. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **InsightsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**time_range** | **String**| Time range can be \&quot;today\&quot;, \&quot;7_day\&quot;, or \&quot;28_day\&quot;. - &#x60;today&#x60;: reactions posted on the current day. - &#x60;7_day&#x60;: reactions posted in the last 7 days. - &#x60;28_day&#x60;: reactions posted in the last 28 days.  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of items per page, up to a maximum of 200. | [default to 60]

### Return type

[**TopReactionList**](TopReactionList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_top_reactions_for_user**
> get_top_reactions_for_user(_api::InsightsApi, time_range::String; page=nothing, per_page=nothing, team_id=nothing, _mediaType=nothing) -> TopReactionList, OpenAPI.Clients.ApiResponse <br/>
> get_top_reactions_for_user(_api::InsightsApi, response_stream::Channel, time_range::String; page=nothing, per_page=nothing, team_id=nothing, _mediaType=nothing) -> Channel{ TopReactionList }, OpenAPI.Clients.ApiResponse

Get a list of the top reactions for a user.

Get a list of the top reactions across all public and private channels (the user is a member of) for a given user. If no `team_id` is provided, this will also include reactions posted by the given user in direct and group messages. ##### Permissions Must be logged in as the user. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **InsightsApi** | API context | 
**time_range** | **String**| Time range can be \&quot;today\&quot;, \&quot;7_day\&quot;, or \&quot;28_day\&quot;. - &#x60;today&#x60;: reactions posted on the current day. - &#x60;7_day&#x60;: reactions posted in the last 7 days. - &#x60;28_day&#x60;: reactions posted in the last 28 days.  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of items per page, up to a maximum of 200. | [default to 60]
 **team_id** | **String**| Team ID will scope the response to a given team and exclude direct and group messages. ##### Permissions Must have &#x60;view_team&#x60; permission for the team.  | [default to nothing]

### Return type

[**TopReactionList**](TopReactionList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_top_threads_for_team**
> get_top_threads_for_team(_api::InsightsApi, team_id::String, time_range::String; page=nothing, per_page=nothing, _mediaType=nothing) -> TopThreadList, OpenAPI.Clients.ApiResponse <br/>
> get_top_threads_for_team(_api::InsightsApi, response_stream::Channel, team_id::String, time_range::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ TopThreadList }, OpenAPI.Clients.ApiResponse

Get a list of the top threads for a team.

Get a list of the top threads from public and private channels (the user is a member of) for a given team. ##### Permissions Must have `view_team` permission for the team. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **InsightsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**time_range** | **String**| Time range can be \&quot;today\&quot;, \&quot;7_day\&quot;, or \&quot;28_day\&quot;. - &#x60;today&#x60;: threads with activity on the current day. - &#x60;7_day&#x60;: threads with activity in the last 7 days. - &#x60;28_day&#x60;: threads with activity in the last 28 days.  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of items per page, up to a maximum of 200. | [default to 60]

### Return type

[**TopThreadList**](TopThreadList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_top_threads_for_user**
> get_top_threads_for_user(_api::InsightsApi, time_range::String; page=nothing, per_page=nothing, team_id=nothing, _mediaType=nothing) -> TopThreadList, OpenAPI.Clients.ApiResponse <br/>
> get_top_threads_for_user(_api::InsightsApi, response_stream::Channel, time_range::String; page=nothing, per_page=nothing, team_id=nothing, _mediaType=nothing) -> Channel{ TopThreadList }, OpenAPI.Clients.ApiResponse

Get a list of the top threads for a user.

Get a list of the top threads from public and private channels (the user is a member of and participating in the thread) for a given user. ##### Permissions Must be logged in as the user. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **InsightsApi** | API context | 
**time_range** | **String**| Time range can be \&quot;today\&quot;, \&quot;7_day\&quot;, or \&quot;28_day\&quot;. - &#x60;today&#x60;: threads with activity on the current day. - &#x60;7_day&#x60;: threads with activity in the last 7 days. - &#x60;28_day&#x60;: threads with activity in the last 28 days.  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of items per page, up to a maximum of 200. | [default to 60]
 **team_id** | **String**| Team ID will scope the response to a given team. ##### Permissions Must have &#x60;view_team&#x60; permission for the team.  | [default to nothing]

### Return type

[**TopThreadList**](TopThreadList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

