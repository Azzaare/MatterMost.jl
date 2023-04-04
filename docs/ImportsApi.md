# ImportsApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_imports**](ImportsApi.md#list_imports) | **GET** /imports | List import files


# **list_imports**
> list_imports(_api::ImportsApi; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> list_imports(_api::ImportsApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

List import files

Lists all available import files.  __Minimum server version__: 5.31 ##### Permissions Must have `manage_system` permissions. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

