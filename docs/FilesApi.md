# FilesApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_file**](FilesApi.md#get_file) | **GET** /files/{file_id} | Get a file
[**get_file_info**](FilesApi.md#get_file_info) | **GET** /files/{file_id}/info | Get metadata for a file
[**get_file_link**](FilesApi.md#get_file_link) | **GET** /files/{file_id}/link | Get a public file link
[**get_file_preview**](FilesApi.md#get_file_preview) | **GET** /files/{file_id}/preview | Get a file&#39;s preview
[**get_file_public**](FilesApi.md#get_file_public) | **GET** /files/{file_id}/public | Get a public file
[**get_file_thumbnail**](FilesApi.md#get_file_thumbnail) | **GET** /files/{file_id}/thumbnail | Get a file&#39;s thumbnail
[**search_files**](FilesApi.md#search_files) | **POST** /teams/{team_id}/files/search | Search files in a team
[**upload_file**](FilesApi.md#upload_file) | **POST** /files | Upload a file


# **get_file**
> get_file(_api::FilesApi, file_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_file(_api::FilesApi, response_stream::Channel, file_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Get a file

Gets a file that has been uploaded previously. ##### Permissions Must have `read_channel` permission or be uploader of the file. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FilesApi** | API context | 
**file_id** | **String**| The ID of the file to get | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_file_info**
> get_file_info(_api::FilesApi, file_id::String; _mediaType=nothing) -> FileInfo, OpenAPI.Clients.ApiResponse <br/>
> get_file_info(_api::FilesApi, response_stream::Channel, file_id::String; _mediaType=nothing) -> Channel{ FileInfo }, OpenAPI.Clients.ApiResponse

Get metadata for a file

Gets a file's info. ##### Permissions Must have `read_channel` permission or be uploader of the file. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FilesApi** | API context | 
**file_id** | **String**| The ID of the file info to get | [default to nothing]

### Return type

[**FileInfo**](FileInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_file_link**
> get_file_link(_api::FilesApi, file_id::String; _mediaType=nothing) -> GetFileLink200Response, OpenAPI.Clients.ApiResponse <br/>
> get_file_link(_api::FilesApi, response_stream::Channel, file_id::String; _mediaType=nothing) -> Channel{ GetFileLink200Response }, OpenAPI.Clients.ApiResponse

Get a public file link

Gets a public link for a file that can be accessed without logging into Mattermost. ##### Permissions Must have `read_channel` permission or be uploader of the file. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FilesApi** | API context | 
**file_id** | **String**| The ID of the file to get a link for | [default to nothing]

### Return type

[**GetFileLink200Response**](GetFileLink200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_file_preview**
> get_file_preview(_api::FilesApi, file_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_file_preview(_api::FilesApi, response_stream::Channel, file_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Get a file's preview

Gets a file's preview. ##### Permissions Must have `read_channel` permission or be uploader of the file. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FilesApi** | API context | 
**file_id** | **String**| The ID of the file to get | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_file_public**
> get_file_public(_api::FilesApi, file_id::String, h::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_file_public(_api::FilesApi, response_stream::Channel, file_id::String, h::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Get a public file

##### Permissions No permissions required. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FilesApi** | API context | 
**file_id** | **String**| The ID of the file to get | [default to nothing]
**h** | **String**| File hash | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_file_thumbnail**
> get_file_thumbnail(_api::FilesApi, file_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_file_thumbnail(_api::FilesApi, response_stream::Channel, file_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Get a file's thumbnail

Gets a file's thumbnail. ##### Permissions Must have `read_channel` permission or be uploader of the file. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FilesApi** | API context | 
**file_id** | **String**| The ID of the file to get | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search_files**
> search_files(_api::FilesApi, team_id::String, terms::String, is_or_search::Bool; time_zone_offset=nothing, include_deleted_channels=nothing, page=nothing, per_page=nothing, _mediaType=nothing) -> FileInfoList, OpenAPI.Clients.ApiResponse <br/>
> search_files(_api::FilesApi, response_stream::Channel, team_id::String, terms::String, is_or_search::Bool; time_zone_offset=nothing, include_deleted_channels=nothing, page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ FileInfoList }, OpenAPI.Clients.ApiResponse

Search files in a team

Search for files in a team based on file name, extention and file content (if file content extraction is enabled and supported for the files). __Minimum server version__: 5.34 ##### Permissions Must be authenticated and have the `view_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FilesApi** | API context | 
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

# **upload_file**
> upload_file(_api::FilesApi; channel_id=nothing, filename=nothing, files=nothing, channel_id2=nothing, client_ids=nothing, _mediaType=nothing) -> UploadFile201Response, OpenAPI.Clients.ApiResponse <br/>
> upload_file(_api::FilesApi, response_stream::Channel; channel_id=nothing, filename=nothing, files=nothing, channel_id2=nothing, client_ids=nothing, _mediaType=nothing) -> Channel{ UploadFile201Response }, OpenAPI.Clients.ApiResponse

Upload a file

Uploads a file that can later be attached to a post.  This request can either be a multipart/form-data request with a channel_id, files and optional client_ids defined in the FormData, or it can be a request with the channel_id and filename defined as query parameters with the contents of a single file in the body of the request.  Only multipart/form-data requests are supported by server versions up to and including 4.7. Server versions 4.8 and higher support both types of requests.  ##### Permissions Must have `upload_file` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FilesApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **String**| The ID of the channel that this file will be uploaded to | [default to nothing]
 **filename** | **String**| The name of the file to be uploaded | [default to nothing]
 **files** | **String****String**| A file to be uploaded | [default to nothing]
 **channel_id2** | **String**| The ID of the channel that this file will be uploaded to | [default to nothing]
 **client_ids** | **String**| A unique identifier for the file that will be returned in the response | [default to nothing]

### Return type

[**UploadFile201Response**](UploadFile201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

