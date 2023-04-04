# RolesApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_roles**](RolesApi.md#get_all_roles) | **GET** /roles | Get a list of all the roles
[**get_role**](RolesApi.md#get_role) | **GET** /roles/{role_id} | Get a role
[**get_role_by_name**](RolesApi.md#get_role_by_name) | **GET** /roles/name/{role_name} | Get a role
[**get_roles_by_names**](RolesApi.md#get_roles_by_names) | **POST** /roles/names | Get a list of roles by name
[**patch_role**](RolesApi.md#patch_role) | **PUT** /roles/{role_id}/patch | Patch a role


# **get_all_roles**
> get_all_roles(_api::RolesApi; _mediaType=nothing) -> Vector{Role}, OpenAPI.Clients.ApiResponse <br/>
> get_all_roles(_api::RolesApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Vector{Role} }, OpenAPI.Clients.ApiResponse

Get a list of all the roles

##### Permissions  `manage_system` permission is required.  __Minimum server version__: 5.33 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Vector{Role}**](Role.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_role**
> get_role(_api::RolesApi, role_id::String; _mediaType=nothing) -> Role, OpenAPI.Clients.ApiResponse <br/>
> get_role(_api::RolesApi, response_stream::Channel, role_id::String; _mediaType=nothing) -> Channel{ Role }, OpenAPI.Clients.ApiResponse

Get a role

Get a role from the provided role id.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **RolesApi** | API context | 
**role_id** | **String**| Role GUID | [default to nothing]

### Return type

[**Role**](Role.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_role_by_name**
> get_role_by_name(_api::RolesApi, role_name::String; _mediaType=nothing) -> Role, OpenAPI.Clients.ApiResponse <br/>
> get_role_by_name(_api::RolesApi, response_stream::Channel, role_name::String; _mediaType=nothing) -> Channel{ Role }, OpenAPI.Clients.ApiResponse

Get a role

Get a role from the provided role name.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **RolesApi** | API context | 
**role_name** | **String**| Role Name | [default to nothing]

### Return type

[**Role**](Role.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_roles_by_names**
> get_roles_by_names(_api::RolesApi, request_body::Vector{String}; _mediaType=nothing) -> Vector{Role}, OpenAPI.Clients.ApiResponse <br/>
> get_roles_by_names(_api::RolesApi, response_stream::Channel, request_body::Vector{String}; _mediaType=nothing) -> Channel{ Vector{Role} }, OpenAPI.Clients.ApiResponse

Get a list of roles by name

Get a list of roles from their names.  ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 4.9 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **RolesApi** | API context | 
**request_body** | [**Vector{String}**](String.md)| List of role names | 

### Return type

[**Vector{Role}**](Role.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **patch_role**
> patch_role(_api::RolesApi, role_id::String, patch_role_request::PatchRoleRequest; _mediaType=nothing) -> Role, OpenAPI.Clients.ApiResponse <br/>
> patch_role(_api::RolesApi, response_stream::Channel, role_id::String, patch_role_request::PatchRoleRequest; _mediaType=nothing) -> Channel{ Role }, OpenAPI.Clients.ApiResponse

Patch a role

Partially update a role by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions `manage_system` permission is required.  __Minimum server version__: 4.9 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **RolesApi** | API context | 
**role_id** | **String**| Role GUID | [default to nothing]
**patch_role_request** | [**PatchRoleRequest**](PatchRoleRequest.md)| Role object to be updated | 

### Return type

[**Role**](Role.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

