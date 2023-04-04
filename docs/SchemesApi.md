# SchemesApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_scheme**](SchemesApi.md#create_scheme) | **POST** /schemes | Create a scheme
[**delete_scheme**](SchemesApi.md#delete_scheme) | **DELETE** /schemes/{scheme_id} | Delete a scheme
[**get_channels_for_scheme**](SchemesApi.md#get_channels_for_scheme) | **GET** /schemes/{scheme_id}/channels | Get a page of channels which use this scheme.
[**get_scheme**](SchemesApi.md#get_scheme) | **GET** /schemes/{scheme_id} | Get a scheme
[**get_schemes**](SchemesApi.md#get_schemes) | **GET** /schemes | Get the schemes.
[**get_teams_for_scheme**](SchemesApi.md#get_teams_for_scheme) | **GET** /schemes/{scheme_id}/teams | Get a page of teams which use this scheme.
[**patch_scheme**](SchemesApi.md#patch_scheme) | **PUT** /schemes/{scheme_id}/patch | Patch a scheme


# **create_scheme**
> create_scheme(_api::SchemesApi, create_scheme_request::CreateSchemeRequest; _mediaType=nothing) -> Scheme, OpenAPI.Clients.ApiResponse <br/>
> create_scheme(_api::SchemesApi, response_stream::Channel, create_scheme_request::CreateSchemeRequest; _mediaType=nothing) -> Channel{ Scheme }, OpenAPI.Clients.ApiResponse

Create a scheme

Create a new scheme.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SchemesApi** | API context | 
**create_scheme_request** | [**CreateSchemeRequest**](CreateSchemeRequest.md)| Scheme object to create | 

### Return type

[**Scheme**](Scheme.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_scheme**
> delete_scheme(_api::SchemesApi, scheme_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_scheme(_api::SchemesApi, response_stream::Channel, scheme_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Delete a scheme

Soft deletes a scheme, by marking the scheme as deleted in the database.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SchemesApi** | API context | 
**scheme_id** | **String**| ID of the scheme to delete | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channels_for_scheme**
> get_channels_for_scheme(_api::SchemesApi, scheme_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{Channel}, OpenAPI.Clients.ApiResponse <br/>
> get_channels_for_scheme(_api::SchemesApi, response_stream::Channel, scheme_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{Channel} }, OpenAPI.Clients.ApiResponse

Get a page of channels which use this scheme.

Get a page of channels which use this scheme. The provided Scheme ID should be for a Channel-scoped Scheme. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SchemesApi** | API context | 
**scheme_id** | **String**| Scheme GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of channels per page. | [default to 60]

### Return type

[**Vector{Channel}**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_scheme**
> get_scheme(_api::SchemesApi, scheme_id::String; _mediaType=nothing) -> Scheme, OpenAPI.Clients.ApiResponse <br/>
> get_scheme(_api::SchemesApi, response_stream::Channel, scheme_id::String; _mediaType=nothing) -> Channel{ Scheme }, OpenAPI.Clients.ApiResponse

Get a scheme

Get a scheme from the provided scheme id.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SchemesApi** | API context | 
**scheme_id** | **String**| Scheme GUID | [default to nothing]

### Return type

[**Scheme**](Scheme.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_schemes**
> get_schemes(_api::SchemesApi; scope=nothing, page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{Scheme}, OpenAPI.Clients.ApiResponse <br/>
> get_schemes(_api::SchemesApi, response_stream::Channel; scope=nothing, page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{Scheme} }, OpenAPI.Clients.ApiResponse

Get the schemes.

Get a page of schemes. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SchemesApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scope** | **String**| Limit the results returned to the provided scope, either &#x60;team&#x60; or &#x60;channel&#x60;. | [default to &quot;&quot;]
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of schemes per page. | [default to 60]

### Return type

[**Vector{Scheme}**](Scheme.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_teams_for_scheme**
> get_teams_for_scheme(_api::SchemesApi, scheme_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{Team}, OpenAPI.Clients.ApiResponse <br/>
> get_teams_for_scheme(_api::SchemesApi, response_stream::Channel, scheme_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{Team} }, OpenAPI.Clients.ApiResponse

Get a page of teams which use this scheme.

Get a page of teams which use this scheme. The provided Scheme ID should be for a Team-scoped Scheme. Use the query parameters to modify the behaviour of this endpoint.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SchemesApi** | API context | 
**scheme_id** | **String**| Scheme GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of teams per page. | [default to 60]

### Return type

[**Vector{Team}**](Team.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **patch_scheme**
> patch_scheme(_api::SchemesApi, scheme_id::String, patch_scheme_request::PatchSchemeRequest; _mediaType=nothing) -> Scheme, OpenAPI.Clients.ApiResponse <br/>
> patch_scheme(_api::SchemesApi, response_stream::Channel, scheme_id::String, patch_scheme_request::PatchSchemeRequest; _mediaType=nothing) -> Channel{ Scheme }, OpenAPI.Clients.ApiResponse

Patch a scheme

Partially update a scheme by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 5.0 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SchemesApi** | API context | 
**scheme_id** | **String**| Scheme GUID | [default to nothing]
**patch_scheme_request** | [**PatchSchemeRequest**](PatchSchemeRequest.md)| Scheme object to be updated | 

### Return type

[**Scheme**](Scheme.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

