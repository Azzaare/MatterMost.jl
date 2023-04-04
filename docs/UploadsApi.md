# UploadsApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_upload**](UploadsApi.md#create_upload) | **POST** /uploads | Create an upload
[**get_upload**](UploadsApi.md#get_upload) | **GET** /uploads/{upload_id} | Get an upload session
[**upload_data**](UploadsApi.md#upload_data) | **POST** /uploads/{upload_id} | Perform a file upload


# **create_upload**
> create_upload(_api::UploadsApi, create_upload_request::CreateUploadRequest; _mediaType=nothing) -> UploadSession, OpenAPI.Clients.ApiResponse <br/>
> create_upload(_api::UploadsApi, response_stream::Channel, create_upload_request::CreateUploadRequest; _mediaType=nothing) -> Channel{ UploadSession }, OpenAPI.Clients.ApiResponse

Create an upload

Creates a new upload session.  __Minimum server version__: 5.28 ##### Permissions Must have `upload_file` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UploadsApi** | API context | 
**create_upload_request** | [**CreateUploadRequest**](CreateUploadRequest.md)|  | 

### Return type

[**UploadSession**](UploadSession.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_upload**
> get_upload(_api::UploadsApi, upload_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_upload(_api::UploadsApi, response_stream::Channel, upload_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Get an upload session

Gets an upload session that has been previously created.  ##### Permissions Must be logged in as the user who created the upload session. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UploadsApi** | API context | 
**upload_id** | **String**| The ID of the upload session to get. | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **upload_data**
> upload_data(_api::UploadsApi, upload_id::String; _mediaType=nothing) -> FileInfo, OpenAPI.Clients.ApiResponse <br/>
> upload_data(_api::UploadsApi, response_stream::Channel, upload_id::String; _mediaType=nothing) -> Channel{ FileInfo }, OpenAPI.Clients.ApiResponse

Perform a file upload

Starts or resumes a file upload.   To resume an existing (incomplete) upload, data should be sent starting from the offset specified in the upload session object.  The request body can be in one of two formats: - Binary file content streamed in request's body - multipart/form-data  ##### Permissions Must be logged in as the user who created the upload session. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UploadsApi** | API context | 
**upload_id** | **String**| The ID of the upload session the data belongs to. | [default to nothing]

### Return type

[**FileInfo**](FileInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

