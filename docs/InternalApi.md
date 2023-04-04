# InternalApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_playbook_run_from_dialog**](InternalApi.md#create_playbook_run_from_dialog) | **POST** /runs/dialog | Create a new playbook run from dialog
[**end_playbook_run_dialog**](InternalApi.md#end_playbook_run_dialog) | **POST** /runs/{id}/end | End a playbook run from dialog
[**get_checklist_autocomplete**](InternalApi.md#get_checklist_autocomplete) | **GET** /runs/checklist-autocomplete | Get autocomplete data for /playbook check
[**next_stage_dialog**](InternalApi.md#next_stage_dialog) | **POST** /runs/{id}/next-stage-dialog | Go to next stage from dialog


# **create_playbook_run_from_dialog**
> create_playbook_run_from_dialog(_api::InternalApi; create_playbook_run_from_dialog_request=nothing, _mediaType=nothing) -> PlaybookRun, OpenAPI.Clients.ApiResponse <br/>
> create_playbook_run_from_dialog(_api::InternalApi, response_stream::Channel; create_playbook_run_from_dialog_request=nothing, _mediaType=nothing) -> Channel{ PlaybookRun }, OpenAPI.Clients.ApiResponse

Create a new playbook run from dialog

This is an internal endpoint to create a playbook run from the submission of an interactive dialog, filled by a user in the webapp. See [Interactive Dialogs](https://docs.mattermost.com/developer/interactive-dialogs.html) for more information.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **InternalApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_playbook_run_from_dialog_request** | [**CreatePlaybookRunFromDialogRequest**](CreatePlaybookRunFromDialogRequest.md)| Dialog submission payload. | 

### Return type

[**PlaybookRun**](PlaybookRun.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **end_playbook_run_dialog**
> end_playbook_run_dialog(_api::InternalApi, id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> end_playbook_run_dialog(_api::InternalApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

End a playbook run from dialog

This is an internal endpoint to end a playbook run via a confirmation dialog, submitted by a user in the webapp.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **InternalApi** | API context | 
**id** | **String**| ID of the playbook run to end. | [default to nothing]

### Return type

Nothing

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_checklist_autocomplete**
> get_checklist_autocomplete(_api::InternalApi, channel_i_d::String; _mediaType=nothing) -> Vector{GetChecklistAutocomplete200ResponseInner}, OpenAPI.Clients.ApiResponse <br/>
> get_checklist_autocomplete(_api::InternalApi, response_stream::Channel, channel_i_d::String; _mediaType=nothing) -> Channel{ Vector{GetChecklistAutocomplete200ResponseInner} }, OpenAPI.Clients.ApiResponse

Get autocomplete data for /playbook check

This is an internal endpoint used by the autocomplete system to retrieve the data needed to show the list of items that the user can check.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **InternalApi** | API context | 
**channel_i_d** | **String**| ID of the channel the user is in. | [default to nothing]

### Return type

[**Vector{GetChecklistAutocomplete200ResponseInner}**](GetChecklistAutocomplete200ResponseInner.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **next_stage_dialog**
> next_stage_dialog(_api::InternalApi, id::String; next_stage_dialog_request=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> next_stage_dialog(_api::InternalApi, response_stream::Channel, id::String; next_stage_dialog_request=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Go to next stage from dialog

This is an internal endpoint to go to the next stage via a confirmation dialog, submitted by a user in the webapp.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **InternalApi** | API context | 
**id** | **String**| The PlaybookRun ID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **next_stage_dialog_request** | [**NextStageDialogRequest**](NextStageDialogRequest.md)| Dialog submission payload. | 

### Return type

Nothing

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

