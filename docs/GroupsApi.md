# GroupsApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_group_members**](GroupsApi.md#add_group_members) | **POST** /groups/{group_id}/members | Adds members to a custom group
[**create_group**](GroupsApi.md#create_group) | **POST** /groups | Create a custom group
[**delete_group**](GroupsApi.md#delete_group) | **DELETE** /groups/{group_id} | Deletes a custom group
[**delete_group_members**](GroupsApi.md#delete_group_members) | **DELETE** /groups/{group_id}/members | Removes members from a custom group
[**get_group**](GroupsApi.md#get_group) | **GET** /groups/{group_id} | Get a group
[**get_group_stats**](GroupsApi.md#get_group_stats) | **GET** /groups/{group_id}/stats | Get group stats
[**get_group_syncable_for_channel_id**](GroupsApi.md#get_group_syncable_for_channel_id) | **GET** /groups/{group_id}/channels/{channel_id} | Get GroupSyncable from channel ID
[**get_group_syncable_for_team_id**](GroupsApi.md#get_group_syncable_for_team_id) | **GET** /groups/{group_id}/teams/{team_id} | Get GroupSyncable from Team ID
[**get_group_syncables_channels**](GroupsApi.md#get_group_syncables_channels) | **GET** /groups/{group_id}/channels | Get group channels
[**get_group_syncables_teams**](GroupsApi.md#get_group_syncables_teams) | **GET** /groups/{group_id}/teams | Get group teams
[**get_group_users**](GroupsApi.md#get_group_users) | **GET** /groups/{group_id}/members | Get group users
[**get_groups**](GroupsApi.md#get_groups) | **GET** /groups | Get groups
[**get_groups_associated_to_channels_by_team**](GroupsApi.md#get_groups_associated_to_channels_by_team) | **GET** /teams/{team_id}/groups_by_channels | Get team groups by channels
[**get_groups_by_channel**](GroupsApi.md#get_groups_by_channel) | **GET** /channels/{channel_id}/groups | Get channel groups
[**get_groups_by_team**](GroupsApi.md#get_groups_by_team) | **GET** /teams/{team_id}/groups | Get team groups
[**get_groups_by_user_id**](GroupsApi.md#get_groups_by_user_id) | **GET** /users/{user_id}/groups | Get groups for a userId
[**link_group_syncable_for_channel**](GroupsApi.md#link_group_syncable_for_channel) | **POST** /groups/{group_id}/channels/{channel_id}/link | Link a channel to a group
[**link_group_syncable_for_team**](GroupsApi.md#link_group_syncable_for_team) | **POST** /groups/{group_id}/teams/{team_id}/link | Link a team to a group
[**patch_group**](GroupsApi.md#patch_group) | **PUT** /groups/{group_id}/patch | Patch a group
[**patch_group_syncable_for_channel**](GroupsApi.md#patch_group_syncable_for_channel) | **PUT** /groups/{group_id}/channels/{channel_id}/patch | Patch a GroupSyncable associated to Channel
[**patch_group_syncable_for_team**](GroupsApi.md#patch_group_syncable_for_team) | **PUT** /groups/{group_id}/teams/{team_id}/patch | Patch a GroupSyncable associated to Team
[**unlink_group_syncable_for_channel**](GroupsApi.md#unlink_group_syncable_for_channel) | **DELETE** /groups/{group_id}/channels/{channel_id}/link | Delete a link from a channel to a group
[**unlink_group_syncable_for_team**](GroupsApi.md#unlink_group_syncable_for_team) | **DELETE** /groups/{group_id}/teams/{team_id}/link | Delete a link from a team to a group
[**unlink_ldap_group**](GroupsApi.md#unlink_ldap_group) | **DELETE** /ldap/groups/{remote_id}/link | Delete a link for LDAP group


# **add_group_members**
> add_group_members(_api::GroupsApi, group_id::String, add_group_members_request::AddGroupMembersRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> add_group_members(_api::GroupsApi, response_stream::Channel, group_id::String, add_group_members_request::AddGroupMembersRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Adds members to a custom group

Adds members to a custom group.  ##### Permissions Must have `custom_group_manage_members` permission for the given group.  __Minimum server version__: 6.3 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**group_id** | **String**| The ID of the group. | [default to nothing]
**add_group_members_request** | [**AddGroupMembersRequest**](AddGroupMembersRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_group**
> create_group(_api::GroupsApi, create_group_request::CreateGroupRequest; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> create_group(_api::GroupsApi, response_stream::Channel, create_group_request::CreateGroupRequest; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Create a custom group

Create a `custom` type group.  #### Permission Must have `create_custom_group` permission.  __Minimum server version__: 6.3 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**create_group_request** | [**CreateGroupRequest**](CreateGroupRequest.md)| Group object and initial members. | 

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_group**
> delete_group(_api::GroupsApi, group_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_group(_api::GroupsApi, response_stream::Channel, group_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Deletes a custom group

Soft deletes a custom group.  ##### Permissions Must have `custom_group_delete` permission for the given group.  __Minimum server version__: 6.3 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**group_id** | **String**| The ID of the group. | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_group_members**
> delete_group_members(_api::GroupsApi, group_id::String, delete_group_members_request::DeleteGroupMembersRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_group_members(_api::GroupsApi, response_stream::Channel, group_id::String, delete_group_members_request::DeleteGroupMembersRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Removes members from a custom group

Soft deletes a custom group members.  ##### Permissions Must have `custom_group_manage_members` permission for the given group.  __Minimum server version__: 6.3 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**group_id** | **String**| The ID of the group to delete. | [default to nothing]
**delete_group_members_request** | [**DeleteGroupMembersRequest**](DeleteGroupMembersRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_group**
> get_group(_api::GroupsApi, group_id::String; _mediaType=nothing) -> Group, OpenAPI.Clients.ApiResponse <br/>
> get_group(_api::GroupsApi, response_stream::Channel, group_id::String; _mediaType=nothing) -> Channel{ Group }, OpenAPI.Clients.ApiResponse

Get a group

Get group from the provided group id string  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**group_id** | **String**| Group GUID | [default to nothing]

### Return type

[**Group**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_group_stats**
> get_group_stats(_api::GroupsApi, group_id::String; _mediaType=nothing) -> GetGroupStats200Response, OpenAPI.Clients.ApiResponse <br/>
> get_group_stats(_api::GroupsApi, response_stream::Channel, group_id::String; _mediaType=nothing) -> Channel{ GetGroupStats200Response }, OpenAPI.Clients.ApiResponse

Get group stats

Retrieve the stats of a given group.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.26 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**group_id** | **String**| Group GUID | [default to nothing]

### Return type

[**GetGroupStats200Response**](GetGroupStats200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_group_syncable_for_channel_id**
> get_group_syncable_for_channel_id(_api::GroupsApi, group_id::String, channel_id::String; _mediaType=nothing) -> GroupSyncableChannel, OpenAPI.Clients.ApiResponse <br/>
> get_group_syncable_for_channel_id(_api::GroupsApi, response_stream::Channel, group_id::String, channel_id::String; _mediaType=nothing) -> Channel{ GroupSyncableChannel }, OpenAPI.Clients.ApiResponse

Get GroupSyncable from channel ID

Get the GroupSyncable object with group_id and channel_id from params ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**group_id** | **String**| Group GUID | [default to nothing]
**channel_id** | **String**| Channel GUID | [default to nothing]

### Return type

[**GroupSyncableChannel**](GroupSyncableChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_group_syncable_for_team_id**
> get_group_syncable_for_team_id(_api::GroupsApi, group_id::String, team_id::String; _mediaType=nothing) -> GroupSyncableTeam, OpenAPI.Clients.ApiResponse <br/>
> get_group_syncable_for_team_id(_api::GroupsApi, response_stream::Channel, group_id::String, team_id::String; _mediaType=nothing) -> Channel{ GroupSyncableTeam }, OpenAPI.Clients.ApiResponse

Get GroupSyncable from Team ID

Get the GroupSyncable object with group_id and team_id from params ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**group_id** | **String**| Group GUID | [default to nothing]
**team_id** | **String**| Team GUID | [default to nothing]

### Return type

[**GroupSyncableTeam**](GroupSyncableTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_group_syncables_channels**
> get_group_syncables_channels(_api::GroupsApi, group_id::String; _mediaType=nothing) -> Vector{GroupSyncableChannels}, OpenAPI.Clients.ApiResponse <br/>
> get_group_syncables_channels(_api::GroupsApi, response_stream::Channel, group_id::String; _mediaType=nothing) -> Channel{ Vector{GroupSyncableChannels} }, OpenAPI.Clients.ApiResponse

Get group channels

Retrieve the list of channels associated to the group ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**group_id** | **String**| Group GUID | [default to nothing]

### Return type

[**Vector{GroupSyncableChannels}**](GroupSyncableChannels.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_group_syncables_teams**
> get_group_syncables_teams(_api::GroupsApi, group_id::String; _mediaType=nothing) -> Vector{GroupSyncableTeams}, OpenAPI.Clients.ApiResponse <br/>
> get_group_syncables_teams(_api::GroupsApi, response_stream::Channel, group_id::String; _mediaType=nothing) -> Channel{ Vector{GroupSyncableTeams} }, OpenAPI.Clients.ApiResponse

Get group teams

Retrieve the list of teams associated to the group ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**group_id** | **String**| Group GUID | [default to nothing]

### Return type

[**Vector{GroupSyncableTeams}**](GroupSyncableTeams.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_group_users**
> get_group_users(_api::GroupsApi, group_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> GetGroupUsers200Response, OpenAPI.Clients.ApiResponse <br/>
> get_group_users(_api::GroupsApi, response_stream::Channel, group_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ GetGroupUsers200Response }, OpenAPI.Clients.ApiResponse

Get group users

Retrieve the list of users associated with a given group.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**group_id** | **String**| Group GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of groups per page. | [default to 60]

### Return type

[**GetGroupUsers200Response**](GetGroupUsers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_groups**
> get_groups(_api::GroupsApi, not_associated_to_team::String, not_associated_to_channel::String; page=nothing, per_page=nothing, q=nothing, include_member_count=nothing, since=nothing, filter_allow_reference=nothing, _mediaType=nothing) -> Vector{Group}, OpenAPI.Clients.ApiResponse <br/>
> get_groups(_api::GroupsApi, response_stream::Channel, not_associated_to_team::String, not_associated_to_channel::String; page=nothing, per_page=nothing, q=nothing, include_member_count=nothing, since=nothing, filter_allow_reference=nothing, _mediaType=nothing) -> Channel{ Vector{Group} }, OpenAPI.Clients.ApiResponse

Get groups

Retrieve a list of all groups not associated to a particular channel or team.  `not_associated_to_team` **OR** `not_associated_to_channel` is required.  If you use `not_associated_to_team`, you must be a team admin for that particular team (permission to manage that team).  If you use `not_associated_to_channel`, you must be a channel admin for that particular channel (permission to manage that channel).  __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**not_associated_to_team** | **String**| Team GUID which is used to return all the groups not associated to this team | [default to nothing]
**not_associated_to_channel** | **String**| Group GUID which is used to return all the groups not associated to this channel | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of groups per page. | [default to 60]
 **q** | **String**| String to pattern match the &#x60;name&#x60; and &#x60;display_name&#x60; field. Will return all groups whose &#x60;name&#x60; and &#x60;display_name&#x60; field match any of the text. | [default to nothing]
 **include_member_count** | **Bool**| Boolean which adds the &#x60;member_count&#x60; attribute to each group JSON object | [default to nothing]
 **since** | **Int64**| Only return groups that have been modified since the given Unix timestamp (in milliseconds). All modified groups, including deleted and created groups, will be returned. __Minimum server version__: 5.24  | [default to nothing]
 **filter_allow_reference** | **Bool**| Boolean which filters the group entries with the &#x60;allow_reference&#x60; attribute set. | [default to false]

### Return type

[**Vector{Group}**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_groups_associated_to_channels_by_team**
> get_groups_associated_to_channels_by_team(_api::GroupsApi, team_id::String; page=nothing, per_page=nothing, filter_allow_reference=nothing, paginate=nothing, _mediaType=nothing) -> Vector{Dict}, OpenAPI.Clients.ApiResponse <br/>
> get_groups_associated_to_channels_by_team(_api::GroupsApi, response_stream::Channel, team_id::String; page=nothing, per_page=nothing, filter_allow_reference=nothing, paginate=nothing, _mediaType=nothing) -> Channel{ Vector{Dict} }, OpenAPI.Clients.ApiResponse

Get team groups by channels

Retrieve the set of groups associated with the channels in the given team grouped by channel.  ##### Permissions Must have `manage_system` permission or can access only for current user  __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of groups per page. | [default to 60]
 **filter_allow_reference** | **Bool**| Boolean which filters in the group entries with the &#x60;allow_reference&#x60; attribute set. | [default to false]
 **paginate** | **Bool**| Boolean to determine whether the pagination should be applied or not | [default to false]

### Return type

**Vector{Dict}**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_groups_by_channel**
> get_groups_by_channel(_api::GroupsApi, channel_id::String; page=nothing, per_page=nothing, filter_allow_reference=nothing, _mediaType=nothing) -> Vector{Group}, OpenAPI.Clients.ApiResponse <br/>
> get_groups_by_channel(_api::GroupsApi, response_stream::Channel, channel_id::String; page=nothing, per_page=nothing, filter_allow_reference=nothing, _mediaType=nothing) -> Channel{ Vector{Group} }, OpenAPI.Clients.ApiResponse

Get channel groups

Retrieve the list of groups associated with a given channel.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of groups per page. | [default to 60]
 **filter_allow_reference** | **Bool**| Boolean which filters the group entries with the &#x60;allow_reference&#x60; attribute set. | [default to false]

### Return type

[**Vector{Group}**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_groups_by_team**
> get_groups_by_team(_api::GroupsApi, team_id::String; page=nothing, per_page=nothing, filter_allow_reference=nothing, _mediaType=nothing) -> Vector{Group}, OpenAPI.Clients.ApiResponse <br/>
> get_groups_by_team(_api::GroupsApi, response_stream::Channel, team_id::String; page=nothing, per_page=nothing, filter_allow_reference=nothing, _mediaType=nothing) -> Channel{ Vector{Group} }, OpenAPI.Clients.ApiResponse

Get team groups

Retrieve the list of groups associated with a given team.  __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of groups per page. | [default to 60]
 **filter_allow_reference** | **Bool**| Boolean which filters in the group entries with the &#x60;allow_reference&#x60; attribute set. | [default to false]

### Return type

[**Vector{Group}**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_groups_by_user_id**
> get_groups_by_user_id(_api::GroupsApi, user_id::String; _mediaType=nothing) -> Vector{Group}, OpenAPI.Clients.ApiResponse <br/>
> get_groups_by_user_id(_api::GroupsApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ Vector{Group} }, OpenAPI.Clients.ApiResponse

Get groups for a userId

Retrieve the list of groups associated to the user  __Minimum server version__: 5.24 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**Vector{Group}**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **link_group_syncable_for_channel**
> link_group_syncable_for_channel(_api::GroupsApi, group_id::String, channel_id::String; _mediaType=nothing) -> GroupSyncableChannel, OpenAPI.Clients.ApiResponse <br/>
> link_group_syncable_for_channel(_api::GroupsApi, response_stream::Channel, group_id::String, channel_id::String; _mediaType=nothing) -> Channel{ GroupSyncableChannel }, OpenAPI.Clients.ApiResponse

Link a channel to a group

Link a channel to a group ##### Permissions If the channel is private, you must have `manage_private_channel_members` permission. Otherwise, you must have the `manage_public_channel_members` permission.  __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**group_id** | **String**| Group GUID | [default to nothing]
**channel_id** | **String**| Channel GUID | [default to nothing]

### Return type

[**GroupSyncableChannel**](GroupSyncableChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **link_group_syncable_for_team**
> link_group_syncable_for_team(_api::GroupsApi, group_id::String, team_id::String; _mediaType=nothing) -> GroupSyncableTeam, OpenAPI.Clients.ApiResponse <br/>
> link_group_syncable_for_team(_api::GroupsApi, response_stream::Channel, group_id::String, team_id::String; _mediaType=nothing) -> Channel{ GroupSyncableTeam }, OpenAPI.Clients.ApiResponse

Link a team to a group

Link a team to a group ##### Permissions Must have `manage_team` permission.  __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**group_id** | **String**| Group GUID | [default to nothing]
**team_id** | **String**| Team GUID | [default to nothing]

### Return type

[**GroupSyncableTeam**](GroupSyncableTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **patch_group**
> patch_group(_api::GroupsApi, group_id::String, patch_group_request::PatchGroupRequest; _mediaType=nothing) -> Group, OpenAPI.Clients.ApiResponse <br/>
> patch_group(_api::GroupsApi, response_stream::Channel, group_id::String, patch_group_request::PatchGroupRequest; _mediaType=nothing) -> Channel{ Group }, OpenAPI.Clients.ApiResponse

Patch a group

Partially update a group by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**group_id** | **String**| Group GUID | [default to nothing]
**patch_group_request** | [**PatchGroupRequest**](PatchGroupRequest.md)| Group object that is to be updated | 

### Return type

[**Group**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **patch_group_syncable_for_channel**
> patch_group_syncable_for_channel(_api::GroupsApi, group_id::String, channel_id::String, patch_group_syncable_for_team_request::PatchGroupSyncableForTeamRequest; _mediaType=nothing) -> GroupSyncableChannel, OpenAPI.Clients.ApiResponse <br/>
> patch_group_syncable_for_channel(_api::GroupsApi, response_stream::Channel, group_id::String, channel_id::String, patch_group_syncable_for_team_request::PatchGroupSyncableForTeamRequest; _mediaType=nothing) -> Channel{ GroupSyncableChannel }, OpenAPI.Clients.ApiResponse

Patch a GroupSyncable associated to Channel

Partially update a GroupSyncable by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**group_id** | **String**| Group GUID | [default to nothing]
**channel_id** | **String**| Channel GUID | [default to nothing]
**patch_group_syncable_for_team_request** | [**PatchGroupSyncableForTeamRequest**](PatchGroupSyncableForTeamRequest.md)| GroupSyncable object that is to be updated | 

### Return type

[**GroupSyncableChannel**](GroupSyncableChannel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **patch_group_syncable_for_team**
> patch_group_syncable_for_team(_api::GroupsApi, group_id::String, team_id::String, patch_group_syncable_for_team_request::PatchGroupSyncableForTeamRequest; _mediaType=nothing) -> GroupSyncableTeam, OpenAPI.Clients.ApiResponse <br/>
> patch_group_syncable_for_team(_api::GroupsApi, response_stream::Channel, group_id::String, team_id::String, patch_group_syncable_for_team_request::PatchGroupSyncableForTeamRequest; _mediaType=nothing) -> Channel{ GroupSyncableTeam }, OpenAPI.Clients.ApiResponse

Patch a GroupSyncable associated to Team

Partially update a GroupSyncable by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**group_id** | **String**| Group GUID | [default to nothing]
**team_id** | **String**| Team GUID | [default to nothing]
**patch_group_syncable_for_team_request** | [**PatchGroupSyncableForTeamRequest**](PatchGroupSyncableForTeamRequest.md)| GroupSyncable object that is to be updated | 

### Return type

[**GroupSyncableTeam**](GroupSyncableTeam.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **unlink_group_syncable_for_channel**
> unlink_group_syncable_for_channel(_api::GroupsApi, group_id::String, channel_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> unlink_group_syncable_for_channel(_api::GroupsApi, response_stream::Channel, group_id::String, channel_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Delete a link from a channel to a group

Delete a link from a channel to a group ##### Permissions If the channel is private, you must have `manage_private_channel_members` permission. Otherwise, you must have the `manage_public_channel_members` permission.  __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**group_id** | **String**| Group GUID | [default to nothing]
**channel_id** | **String**| Channel GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **unlink_group_syncable_for_team**
> unlink_group_syncable_for_team(_api::GroupsApi, group_id::String, team_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> unlink_group_syncable_for_team(_api::GroupsApi, response_stream::Channel, group_id::String, team_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Delete a link from a team to a group

Delete a link from a team to a group ##### Permissions Must have `manage_team` permission.  __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**group_id** | **String**| Group GUID | [default to nothing]
**team_id** | **String**| Team GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **unlink_ldap_group**
> unlink_ldap_group(_api::GroupsApi, remote_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> unlink_ldap_group(_api::GroupsApi, response_stream::Channel, remote_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Delete a link for LDAP group

##### Permissions Must have `manage_system` permission. __Minimum server version__: 5.11 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GroupsApi** | API context | 
**remote_id** | **String**| Group GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

