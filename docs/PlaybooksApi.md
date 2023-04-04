# PlaybooksApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_playbook**](PlaybooksApi.md#create_playbook) | **POST** /playbooks | Create a playbook
[**delete_playbook**](PlaybooksApi.md#delete_playbook) | **DELETE** /playbooks/{id} | Delete a playbook
[**get_playbook**](PlaybooksApi.md#get_playbook) | **GET** /playbooks/{id} | Get a playbook
[**get_playbooks**](PlaybooksApi.md#get_playbooks) | **GET** /playbooks | List all playbooks
[**update_playbook**](PlaybooksApi.md#update_playbook) | **PUT** /playbooks/{id} | Update a playbook


# **create_playbook**
> create_playbook(_api::PlaybooksApi; u_n_k_n_o_w_n_b_a_s_e_t_y_p_e=nothing, _mediaType=nothing) -> Any, OpenAPI.Clients.ApiResponse <br/>
> create_playbook(_api::PlaybooksApi, response_stream::Channel; u_n_k_n_o_w_n_b_a_s_e_t_y_p_e=nothing, _mediaType=nothing) -> Channel{ Any }, OpenAPI.Clients.ApiResponse

Create a playbook

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybooksApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **u_n_k_n_o_w_n_b_a_s_e_t_y_p_e** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)| Playbook | 

### Return type

**Any**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_playbook**
> delete_playbook(_api::PlaybooksApi, id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> delete_playbook(_api::PlaybooksApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Delete a playbook

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybooksApi** | API context | 
**id** | **String**| ID of the playbook to delete. | [default to nothing]

### Return type

Nothing

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_playbook**
> get_playbook(_api::PlaybooksApi, id::String; _mediaType=nothing) -> Playbook, OpenAPI.Clients.ApiResponse <br/>
> get_playbook(_api::PlaybooksApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ Playbook }, OpenAPI.Clients.ApiResponse

Get a playbook

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybooksApi** | API context | 
**id** | **String**| ID of the playbook to retrieve. | [default to nothing]

### Return type

[**Playbook**](Playbook.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_playbooks**
> get_playbooks(_api::PlaybooksApi, team_id::String; page=nothing, per_page=nothing, sort=nothing, direction=nothing, with_archived=nothing, _mediaType=nothing) -> PlaybookList, OpenAPI.Clients.ApiResponse <br/>
> get_playbooks(_api::PlaybooksApi, response_stream::Channel, team_id::String; page=nothing, per_page=nothing, sort=nothing, direction=nothing, with_archived=nothing, _mediaType=nothing) -> Channel{ PlaybookList }, OpenAPI.Clients.ApiResponse

List all playbooks

Retrieve a paged list of playbooks, filtered by team, and sorted by title, number of stages or number of steps.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybooksApi** | API context | 
**team_id** | **String**| ID of the team to filter by. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Zero-based index of the page to request. | [default to 0]
 **per_page** | **Int64**| Number of playbooks to return per page. | [default to 1000]
 **sort** | **String**| Field to sort the returned playbooks by title, number of stages or total number of steps. | [default to title]
 **direction** | **String**| Direction (ascending or descending) followed by the sorting of the playbooks. | [default to asc]
 **with_archived** | **Bool**| Includes archived playbooks in the result. | [default to false]

### Return type

[**PlaybookList**](PlaybookList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_playbook**
> update_playbook(_api::PlaybooksApi, id::String; playbook=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> update_playbook(_api::PlaybooksApi, response_stream::Channel, id::String; playbook=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Update a playbook

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybooksApi** | API context | 
**id** | **String**| ID of the playbook to update. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **playbook** | [**Playbook**](Playbook.md)| Playbook payload | 

### Return type

Nothing

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

