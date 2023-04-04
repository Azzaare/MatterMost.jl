# TimelineApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**remove_timeline_event**](TimelineApi.md#remove_timeline_event) | **DELETE** /runs/{id}/timeline/{event-id}/ | Remove a timeline event from the playbook run


# **remove_timeline_event**
> remove_timeline_event(_api::TimelineApi, id::String, event_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> remove_timeline_event(_api::TimelineApi, response_stream::Channel, id::String, event_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Remove a timeline event from the playbook run

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TimelineApi** | API context | 
**id** | **String**| ID of the playbook run whose timeline event will be modified. | [default to nothing]
**event_id** | **String**| ID of the timeline event to be deleted | [default to nothing]

### Return type

Nothing

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

