# IntegrationActionsApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**open_interactive_dialog**](IntegrationActionsApi.md#open_interactive_dialog) | **POST** /actions/dialogs/open | Open a dialog
[**submit_interactive_dialog**](IntegrationActionsApi.md#submit_interactive_dialog) | **POST** /actions/dialogs/submit | Submit a dialog


# **open_interactive_dialog**
> open_interactive_dialog(_api::IntegrationActionsApi, open_interactive_dialog_request::OpenInteractiveDialogRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> open_interactive_dialog(_api::IntegrationActionsApi, response_stream::Channel, open_interactive_dialog_request::OpenInteractiveDialogRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Open a dialog

Open an interactive dialog using a trigger ID provided by a slash command, or some other action payload. See https://docs.mattermost.com/developer/interactive-dialogs.html for more information on interactive dialogs. __Minimum server version: 5.6__ 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **IntegrationActionsApi** | API context | 
**open_interactive_dialog_request** | [**OpenInteractiveDialogRequest**](OpenInteractiveDialogRequest.md)| Metadata for the dialog to be opened | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **submit_interactive_dialog**
> submit_interactive_dialog(_api::IntegrationActionsApi, submit_interactive_dialog_request::SubmitInteractiveDialogRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> submit_interactive_dialog(_api::IntegrationActionsApi, response_stream::Channel, submit_interactive_dialog_request::SubmitInteractiveDialogRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Submit a dialog

Endpoint used by the Mattermost clients to submit a dialog. See https://docs.mattermost.com/developer/interactive-dialogs.html for more information on interactive dialogs. __Minimum server version: 5.6__ 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **IntegrationActionsApi** | API context | 
**submit_interactive_dialog_request** | [**SubmitInteractiveDialogRequest**](SubmitInteractiveDialogRequest.md)| Dialog submission data | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

