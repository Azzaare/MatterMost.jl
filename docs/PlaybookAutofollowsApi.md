# PlaybookAutofollowsApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_auto_follows**](PlaybookAutofollowsApi.md#get_auto_follows) | **GET** /playbooks/{id}/autofollows | Get the list of followers&#39; user IDs of a playbook


# **get_auto_follows**
> get_auto_follows(_api::PlaybookAutofollowsApi, id::String; _mediaType=nothing) -> PlaybookAutofollows, OpenAPI.Clients.ApiResponse <br/>
> get_auto_follows(_api::PlaybookAutofollowsApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ PlaybookAutofollows }, OpenAPI.Clients.ApiResponse

Get the list of followers' user IDs of a playbook

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookAutofollowsApi** | API context | 
**id** | **String**| ID of the playbook to retrieve followers from. | [default to nothing]

### Return type

[**PlaybookAutofollows**](PlaybookAutofollows.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

