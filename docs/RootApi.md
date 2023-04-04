# RootApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acknowledge_notification**](RootApi.md#acknowledge_notification) | **POST** /notifications/ack | Acknowledge receiving of a notification


# **acknowledge_notification**
> acknowledge_notification(_api::RootApi; _mediaType=nothing) -> PushNotification, OpenAPI.Clients.ApiResponse <br/>
> acknowledge_notification(_api::RootApi, response_stream::Channel; _mediaType=nothing) -> Channel{ PushNotification }, OpenAPI.Clients.ApiResponse

Acknowledge receiving of a notification

__Minimum server version__: 3.10 ##### Permissions Must be logged in. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**PushNotification**](PushNotification.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

