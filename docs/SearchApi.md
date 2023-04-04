# SearchApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search_files**](SearchApi.md#search_files) | **POST** /teams/{team_id}/files/search | Search files in a team


# **search_files**
> search_files(_api::SearchApi, team_id::String, terms::String, is_or_search::Bool; time_zone_offset=nothing, include_deleted_channels=nothing, page=nothing, per_page=nothing, _mediaType=nothing) -> FileInfoList, OpenAPI.Clients.ApiResponse <br/>
> search_files(_api::SearchApi, response_stream::Channel, team_id::String, terms::String, is_or_search::Bool; time_zone_offset=nothing, include_deleted_channels=nothing, page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ FileInfoList }, OpenAPI.Clients.ApiResponse

Search files in a team

Search for files in a team based on file name, extention and file content (if file content extraction is enabled and supported for the files). __Minimum server version__: 5.34 ##### Permissions Must be authenticated and have the `view_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SearchApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**terms** | **String**| The search terms as inputed by the user. To search for files from a user include &#x60;from:someusername&#x60;, using a user&#39;s username. To search in a specific channel include &#x60;in:somechannel&#x60;, using the channel name (not the display name). To search for specific extensions included &#x60;ext:extension&#x60;. | [default to nothing]
**is_or_search** | **Bool**| Set to true if an Or search should be performed vs an And search. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_zone_offset** | **Int64**| Offset from UTC of user timezone for date searches. | [default to 0]
 **include_deleted_channels** | **Bool**| Set to true if deleted channels should be included in the search. (archived channels) | [default to nothing]
 **page** | **Int64**| The page to select. (Only works with Elasticsearch) | [default to 0]
 **per_page** | **Int64**| The number of posts per page. (Only works with Elasticsearch) | [default to 60]

### Return type

[**FileInfoList**](FileInfoList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

