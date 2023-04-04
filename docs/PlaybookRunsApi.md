# PlaybookRunsApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_checklist_item**](PlaybookRunsApi.md#add_checklist_item) | **PUT** /runs/{id}/checklists/{checklist}/add | Add an item to a playbook run&#39;s checklist
[**change_owner**](PlaybookRunsApi.md#change_owner) | **POST** /runs/{id}/owner | Update playbook run owner
[**create_playbook_run_from_post**](PlaybookRunsApi.md#create_playbook_run_from_post) | **POST** /runs | Create a new playbook run
[**end_playbook_run**](PlaybookRunsApi.md#end_playbook_run) | **PUT** /runs/{id}/end | End a playbook run
[**finish**](PlaybookRunsApi.md#finish) | **PUT** /runs/{id}/finish | Finish a playbook
[**get_channels**](PlaybookRunsApi.md#get_channels) | **GET** /runs/channels | Get playbook run channels
[**get_owners**](PlaybookRunsApi.md#get_owners) | **GET** /runs/owners | Get all owners
[**get_playbook_run**](PlaybookRunsApi.md#get_playbook_run) | **GET** /runs/{id} | Get a playbook run
[**get_playbook_run_by_channel_id**](PlaybookRunsApi.md#get_playbook_run_by_channel_id) | **GET** /runs/channel/{channel_id} | Find playbook run by channel ID
[**get_playbook_run_metadata**](PlaybookRunsApi.md#get_playbook_run_metadata) | **GET** /runs/{id}/metadata | Get playbook run metadata
[**item_delete**](PlaybookRunsApi.md#item_delete) | **DELETE** /runs/{id}/checklists/{checklist}/item/{item} | Delete an item of a playbook run&#39;s checklist
[**item_rename**](PlaybookRunsApi.md#item_rename) | **PUT** /runs/{id}/checklists/{checklist}/item/{item} | Update an item of a playbook run&#39;s checklist
[**item_run**](PlaybookRunsApi.md#item_run) | **PUT** /runs/{id}/checklists/{checklist}/item/{item}/run | Run an item&#39;s slash command
[**item_set_assignee**](PlaybookRunsApi.md#item_set_assignee) | **PUT** /runs/{id}/checklists/{checklist}/item/{item}/assignee | Update the assignee of an item
[**item_set_state**](PlaybookRunsApi.md#item_set_state) | **PUT** /runs/{id}/checklists/{checklist}/item/{item}/state | Update the state of an item
[**list_playbook_runs**](PlaybookRunsApi.md#list_playbook_runs) | **GET** /runs | List all playbook runs
[**reoder_checklist_item**](PlaybookRunsApi.md#reoder_checklist_item) | **PUT** /runs/{id}/checklists/{checklist}/reorder | Reorder an item in a playbook run&#39;s checklist
[**restart_playbook_run**](PlaybookRunsApi.md#restart_playbook_run) | **PUT** /runs/{id}/restart | Restart a playbook run
[**status**](PlaybookRunsApi.md#status) | **POST** /runs/{id}/status | Update a playbook run&#39;s status
[**update_playbook_run**](PlaybookRunsApi.md#update_playbook_run) | **PATCH** /runs/{id} | Update a playbook run


# **add_checklist_item**
> add_checklist_item(_api::PlaybookRunsApi, id::String, checklist::Int64; add_checklist_item_request=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> add_checklist_item(_api::PlaybookRunsApi, response_stream::Channel, id::String, checklist::Int64; add_checklist_item_request=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Add an item to a playbook run's checklist

The most common pattern to add a new item is to only send its title as the request payload. By default, it is an open item, with no assignee and no slash command.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**id** | **String**| ID of the playbook run whose checklist will be modified. | [default to nothing]
**checklist** | **Int64**| Zero-based index of the checklist to modify. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **add_checklist_item_request** | [**AddChecklistItemRequest**](AddChecklistItemRequest.md)| Checklist item payload. | 

### Return type

Nothing

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **change_owner**
> change_owner(_api::PlaybookRunsApi, id::String; change_owner_request=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> change_owner(_api::PlaybookRunsApi, response_stream::Channel, id::String; change_owner_request=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Update playbook run owner

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**id** | **String**| ID of the playbook run whose owner will be changed. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **change_owner_request** | [**ChangeOwnerRequest**](ChangeOwnerRequest.md)| Payload to change the playbook run&#39;s owner. | 

### Return type

Nothing

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_playbook_run_from_post**
> create_playbook_run_from_post(_api::PlaybookRunsApi; create_playbook_run_from_post_request=nothing, _mediaType=nothing) -> PlaybookRun, OpenAPI.Clients.ApiResponse <br/>
> create_playbook_run_from_post(_api::PlaybookRunsApi, response_stream::Channel; create_playbook_run_from_post_request=nothing, _mediaType=nothing) -> Channel{ PlaybookRun }, OpenAPI.Clients.ApiResponse

Create a new playbook run

Create a new playbook run in a team, using a playbook as template, with a specific name and a specific owner.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_playbook_run_from_post_request** | [**CreatePlaybookRunFromPostRequest**](CreatePlaybookRunFromPostRequest.md)| Playbook run payload. | 

### Return type

[**PlaybookRun**](PlaybookRun.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **end_playbook_run**
> end_playbook_run(_api::PlaybookRunsApi, id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> end_playbook_run(_api::PlaybookRunsApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

End a playbook run

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**id** | **String**| ID of the playbook run to end. | [default to nothing]

### Return type

Nothing

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **finish**
> finish(_api::PlaybookRunsApi, id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> finish(_api::PlaybookRunsApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Finish a playbook

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**id** | **String**| ID of the playbook run to finish. | [default to nothing]

### Return type

Nothing

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channels**
> get_channels(_api::PlaybookRunsApi, team_id::String; sort=nothing, direction=nothing, status=nothing, owner_user_id=nothing, search_term=nothing, participant_id=nothing, _mediaType=nothing) -> Vector{String}, OpenAPI.Clients.ApiResponse <br/>
> get_channels(_api::PlaybookRunsApi, response_stream::Channel, team_id::String; sort=nothing, direction=nothing, status=nothing, owner_user_id=nothing, search_term=nothing, participant_id=nothing, _mediaType=nothing) -> Channel{ Vector{String} }, OpenAPI.Clients.ApiResponse

Get playbook run channels

Get all channels associated with a playbook run, filtered by team, status, owner, name and/or members, and sorted by ID, name, status, creation date, end date, team, or owner ID.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**team_id** | **String**| ID of the team to filter by. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **String**| Field to sort the returned channels by, according to their playbook run. | [default to create_at]
 **direction** | **String**| Direction (ascending or descending) followed by the sorting of the playbook runs associated to the channels. | [default to desc]
 **status** | **String**| The returned list will contain only the channels whose playbook run has this status. | [default to all]
 **owner_user_id** | **String**| The returned list will contain only the channels whose playbook run is commanded by this user. | [default to nothing]
 **search_term** | **String**| The returned list will contain only the channels associated to a playbook run whose name contains the search term. | [default to nothing]
 **participant_id** | **String**| The returned list will contain only the channels associated to a playbook run for which the given user is a participant. | [default to nothing]

### Return type

**Vector{String}**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_owners**
> get_owners(_api::PlaybookRunsApi, team_id::String; _mediaType=nothing) -> Vector{OwnerInfo}, OpenAPI.Clients.ApiResponse <br/>
> get_owners(_api::PlaybookRunsApi, response_stream::Channel, team_id::String; _mediaType=nothing) -> Channel{ Vector{OwnerInfo} }, OpenAPI.Clients.ApiResponse

Get all owners

Get the owners of all playbook runs, filtered by team.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**team_id** | **String**| ID of the team to filter by. | [default to nothing]

### Return type

[**Vector{OwnerInfo}**](OwnerInfo.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_playbook_run**
> get_playbook_run(_api::PlaybookRunsApi, id::String; _mediaType=nothing) -> PlaybookRun, OpenAPI.Clients.ApiResponse <br/>
> get_playbook_run(_api::PlaybookRunsApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ PlaybookRun }, OpenAPI.Clients.ApiResponse

Get a playbook run

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**id** | **String**| ID of the playbook run to retrieve. | [default to nothing]

### Return type

[**PlaybookRun**](PlaybookRun.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_playbook_run_by_channel_id**
> get_playbook_run_by_channel_id(_api::PlaybookRunsApi, channel_id::String; _mediaType=nothing) -> PlaybookRun, OpenAPI.Clients.ApiResponse <br/>
> get_playbook_run_by_channel_id(_api::PlaybookRunsApi, response_stream::Channel, channel_id::String; _mediaType=nothing) -> Channel{ PlaybookRun }, OpenAPI.Clients.ApiResponse

Find playbook run by channel ID

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**channel_id** | **String**| ID of the channel associated to the playbook run to retrieve. | [default to nothing]

### Return type

[**PlaybookRun**](PlaybookRun.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_playbook_run_metadata**
> get_playbook_run_metadata(_api::PlaybookRunsApi, id::String; _mediaType=nothing) -> PlaybookRunMetadata, OpenAPI.Clients.ApiResponse <br/>
> get_playbook_run_metadata(_api::PlaybookRunsApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ PlaybookRunMetadata }, OpenAPI.Clients.ApiResponse

Get playbook run metadata

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**id** | **String**| ID of the playbook run whose metadata will be retrieved. | [default to nothing]

### Return type

[**PlaybookRunMetadata**](PlaybookRunMetadata.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **item_delete**
> item_delete(_api::PlaybookRunsApi, id::String, checklist::Int64, item::Int64; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> item_delete(_api::PlaybookRunsApi, response_stream::Channel, id::String, checklist::Int64, item::Int64; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Delete an item of a playbook run's checklist

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**id** | **String**| ID of the playbook run whose checklist will be modified. | [default to nothing]
**checklist** | **Int64**| Zero-based index of the checklist to modify. | [default to nothing]
**item** | **Int64**| Zero-based index of the item to modify. | [default to nothing]

### Return type

Nothing

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **item_rename**
> item_rename(_api::PlaybookRunsApi, id::String, checklist::Int64, item::Int64; item_rename_request=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> item_rename(_api::PlaybookRunsApi, response_stream::Channel, id::String, checklist::Int64, item::Int64; item_rename_request=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Update an item of a playbook run's checklist

Update the title and the slash command of an item in one of the playbook run's checklists.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**id** | **String**| ID of the playbook run whose checklist will be modified. | [default to nothing]
**checklist** | **Int64**| Zero-based index of the checklist to modify. | [default to nothing]
**item** | **Int64**| Zero-based index of the item to modify. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item_rename_request** | [**ItemRenameRequest**](ItemRenameRequest.md)| Update checklist item payload. | 

### Return type

Nothing

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **item_run**
> item_run(_api::PlaybookRunsApi, id::String, checklist::Int64, item::Int64; _mediaType=nothing) -> TriggerIdReturn, OpenAPI.Clients.ApiResponse <br/>
> item_run(_api::PlaybookRunsApi, response_stream::Channel, id::String, checklist::Int64, item::Int64; _mediaType=nothing) -> Channel{ TriggerIdReturn }, OpenAPI.Clients.ApiResponse

Run an item's slash command

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**id** | **String**| ID of the playbook run whose item will be executed. | [default to nothing]
**checklist** | **Int64**| Zero-based index of the checklist whose item will be executed. | [default to nothing]
**item** | **Int64**| Zero-based index of the item whose slash command will be executed. | [default to nothing]

### Return type

[**TriggerIdReturn**](TriggerIdReturn.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **item_set_assignee**
> item_set_assignee(_api::PlaybookRunsApi, id::String, checklist::Int64, item::Int64; item_set_assignee_request=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> item_set_assignee(_api::PlaybookRunsApi, response_stream::Channel, id::String, checklist::Int64, item::Int64; item_set_assignee_request=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Update the assignee of an item

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**id** | **String**| ID of the playbook run whose item will get a new assignee. | [default to nothing]
**checklist** | **Int64**| Zero-based index of the checklist whose item will get a new assignee. | [default to nothing]
**item** | **Int64**| Zero-based index of the item that will get a new assignee. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item_set_assignee_request** | [**ItemSetAssigneeRequest**](ItemSetAssigneeRequest.md)| User ID of the new assignee. | 

### Return type

Nothing

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **item_set_state**
> item_set_state(_api::PlaybookRunsApi, id::String, checklist::Int64, item::Int64; item_set_state_request=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> item_set_state(_api::PlaybookRunsApi, response_stream::Channel, id::String, checklist::Int64, item::Int64; item_set_state_request=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Update the state of an item

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**id** | **String**| ID of the playbook run whose checklist will be modified. | [default to nothing]
**checklist** | **Int64**| Zero-based index of the checklist to modify. | [default to nothing]
**item** | **Int64**| Zero-based index of the item to modify. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item_set_state_request** | [**ItemSetStateRequest**](ItemSetStateRequest.md)| Update checklist item&#39;s state payload. | 

### Return type

Nothing

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_playbook_runs**
> list_playbook_runs(_api::PlaybookRunsApi, team_id::String; page=nothing, per_page=nothing, sort=nothing, direction=nothing, statuses=nothing, owner_user_id=nothing, participant_id=nothing, search_term=nothing, _mediaType=nothing) -> PlaybookRunList, OpenAPI.Clients.ApiResponse <br/>
> list_playbook_runs(_api::PlaybookRunsApi, response_stream::Channel, team_id::String; page=nothing, per_page=nothing, sort=nothing, direction=nothing, statuses=nothing, owner_user_id=nothing, participant_id=nothing, search_term=nothing, _mediaType=nothing) -> Channel{ PlaybookRunList }, OpenAPI.Clients.ApiResponse

List all playbook runs

Retrieve a paged list of playbook runs, filtered by team, status, owner, name and/or members, and sorted by ID, name, status, creation date, end date, team or owner ID.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**team_id** | **String**| ID of the team to filter by. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Zero-based index of the page to request. | [default to 0]
 **per_page** | **Int64**| Number of playbook runs to return per page. | [default to 1000]
 **sort** | **String**| Field to sort the returned playbook runs by. | [default to create_at]
 **direction** | **String**| Direction (ascending or descending) followed by the sorting of the playbook runs. | [default to desc]
 **statuses** | [**Vector{String}**](String.md)| The returned list will contain only the playbook runs with the specified statuses. | [default to nothing]
 **owner_user_id** | **String**| The returned list will contain only the playbook runs commanded by this user. Specify \&quot;me\&quot; for current user. | [default to nothing]
 **participant_id** | **String**| The returned list will contain only the playbook runs for which the given user is a participant. Specify \&quot;me\&quot; for current user. | [default to nothing]
 **search_term** | **String**| The returned list will contain only the playbook runs whose name contains the search term. | [default to nothing]

### Return type

[**PlaybookRunList**](PlaybookRunList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **reoder_checklist_item**
> reoder_checklist_item(_api::PlaybookRunsApi, id::String, checklist::Int64; reoder_checklist_item_request=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> reoder_checklist_item(_api::PlaybookRunsApi, response_stream::Channel, id::String, checklist::Int64; reoder_checklist_item_request=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Reorder an item in a playbook run's checklist

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**id** | **String**| ID of the playbook run whose checklist will be modified. | [default to nothing]
**checklist** | **Int64**| Zero-based index of the checklist to modify. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reoder_checklist_item_request** | [**ReoderChecklistItemRequest**](ReoderChecklistItemRequest.md)| Reorder checklist item payload. | 

### Return type

Nothing

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **restart_playbook_run**
> restart_playbook_run(_api::PlaybookRunsApi, id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> restart_playbook_run(_api::PlaybookRunsApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Restart a playbook run

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**id** | **String**| ID of the playbook run to restart. | [default to nothing]

### Return type

Nothing

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **status**
> status(_api::PlaybookRunsApi, id::String; status_request=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> status(_api::PlaybookRunsApi, response_stream::Channel, id::String; status_request=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Update a playbook run's status

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**id** | **String**| ID of the playbook run to update. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status_request** | [**StatusRequest**](StatusRequest.md)| Payload to change the playbook run&#39;s status update message. | 

### Return type

Nothing

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_playbook_run**
> update_playbook_run(_api::PlaybookRunsApi, id::String; update_playbook_run_request=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> update_playbook_run(_api::PlaybookRunsApi, response_stream::Channel, id::String; update_playbook_run_request=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Update a playbook run

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PlaybookRunsApi** | API context | 
**id** | **String**| ID of the playbook run to retrieve. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_playbook_run_request** | [**UpdatePlaybookRunRequest**](UpdatePlaybookRunRequest.md)| Playbook run update payload. | 

### Return type

Nothing

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

