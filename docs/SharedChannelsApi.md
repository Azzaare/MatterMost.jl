# SharedChannelsApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_shared_channels**](SharedChannelsApi.md#get_all_shared_channels) | **GET** /sharedchannels/{team_id} | Get all shared channels for team.
[**get_remote_cluster_info**](SharedChannelsApi.md#get_remote_cluster_info) | **GET** /sharedchannels/remote_info/{remote_id} | Get remote cluster info by ID for user.


# **get_all_shared_channels**
> get_all_shared_channels(_api::SharedChannelsApi, team_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{SharedChannel}, OpenAPI.Clients.ApiResponse <br/>
> get_all_shared_channels(_api::SharedChannelsApi, response_stream::Channel, team_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{SharedChannel} }, OpenAPI.Clients.ApiResponse

Get all shared channels for team.

Get all shared channels for a team.  __Minimum server version__: 5.50  ##### Permissions Must be authenticated. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SharedChannelsApi** | API context | 
**team_id** | **String**| Team Id | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of sharedchannels per page. | [default to 0]

### Return type

[**Vector{SharedChannel}**](SharedChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_remote_cluster_info**
> get_remote_cluster_info(_api::SharedChannelsApi, remote_id::String; _mediaType=nothing) -> RemoteClusterInfo, OpenAPI.Clients.ApiResponse <br/>
> get_remote_cluster_info(_api::SharedChannelsApi, response_stream::Channel, remote_id::String; _mediaType=nothing) -> Channel{ RemoteClusterInfo }, OpenAPI.Clients.ApiResponse

Get remote cluster info by ID for user.

Get remote cluster info based on remoteId.  __Minimum server version__: 5.50  ##### Permissions Must be authenticated and user must belong to at least one channel shared with the remote cluster. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SharedChannelsApi** | API context | 
**remote_id** | **String**| Remote Cluster GUID | [default to nothing]

### Return type

[**RemoteClusterInfo**](RemoteClusterInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

