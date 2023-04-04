# PermissionsApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_ancillary_permissions**](PermissionsApi.md#get_ancillary_permissions) | **GET** /permissions/ancillary | Return all system console subsection ancillary permissions


# **get_ancillary_permissions**
> get_ancillary_permissions(_api::PermissionsApi; subsection_permissions=nothing, _mediaType=nothing) -> Vector{String}, OpenAPI.Clients.ApiResponse <br/>
> get_ancillary_permissions(_api::PermissionsApi, response_stream::Channel; subsection_permissions=nothing, _mediaType=nothing) -> Channel{ Vector{String} }, OpenAPI.Clients.ApiResponse

Return all system console subsection ancillary permissions

Returns all the ancillary permissions for the corresponding system console subsection permissions appended to the requested permission subsections.  __Minimum server version__: 5.35 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PermissionsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subsection_permissions** | **String**| The subsection permissions to return the ancillary permissions for. These values are comma seperated. Ex. subsection_permissions&#x3D;sysconsole_read_reporting_site_statistics,sysconsole_write_reporting_site_statistics,sysconsole_write_user_management_channels  | [default to nothing]

### Return type

**Vector{String}**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

