# BrandApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_brand_image**](BrandApi.md#delete_brand_image) | **DELETE** /brand/image | Delete current brand image
[**get_brand_image**](BrandApi.md#get_brand_image) | **GET** /brand/image | Get brand image
[**upload_brand_image**](BrandApi.md#upload_brand_image) | **POST** /brand/image | Upload brand image


# **delete_brand_image**
> delete_brand_image(_api::BrandApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_brand_image(_api::BrandApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Delete current brand image

Deletes the previously uploaded brand image. Returns 404 if no brand image has been uploaded. ##### Permissions Must have `manage_system` permission. __Minimum server version: 5.6__ 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_brand_image**
> get_brand_image(_api::BrandApi; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> get_brand_image(_api::BrandApi, response_stream::Channel; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse

Get brand image

Get the previously uploaded brand image. Returns 404 if no brand image has been uploaded. ##### Permissions No permission required. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **upload_brand_image**
> upload_brand_image(_api::BrandApi, image::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> upload_brand_image(_api::BrandApi, response_stream::Channel, image::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Upload brand image

Uploads a brand image. ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **BrandApi** | API context | 
**image** | **String****String**| The image to be uploaded | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

