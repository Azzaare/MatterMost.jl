# ChannelsApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_channel_member**](ChannelsApi.md#add_channel_member) | **POST** /channels/{channel_id}/members | Add user to channel
[**autocomplete_channels_for_team**](ChannelsApi.md#autocomplete_channels_for_team) | **GET** /teams/{team_id}/channels/autocomplete | Autocomplete channels
[**autocomplete_channels_for_team_for_search**](ChannelsApi.md#autocomplete_channels_for_team_for_search) | **GET** /teams/{team_id}/channels/search_autocomplete | Autocomplete channels for search
[**channel_members_minus_group_members**](ChannelsApi.md#channel_members_minus_group_members) | **GET** /channels/{channel_id}/members_minus_group_members | Channel members minus group members.
[**create_channel**](ChannelsApi.md#create_channel) | **POST** /channels | Create a channel
[**create_direct_channel**](ChannelsApi.md#create_direct_channel) | **POST** /channels/direct | Create a direct message channel
[**create_group_channel**](ChannelsApi.md#create_group_channel) | **POST** /channels/group | Create a group message channel
[**create_sidebar_category_for_team_for_user**](ChannelsApi.md#create_sidebar_category_for_team_for_user) | **POST** /users/{user_id}/teams/{team_id}/channels/categories | Create user&#39;s sidebar category
[**delete_channel**](ChannelsApi.md#delete_channel) | **DELETE** /channels/{channel_id} | Delete a channel
[**get_all_channels**](ChannelsApi.md#get_all_channels) | **GET** /channels | Get a list of all channels
[**get_channel**](ChannelsApi.md#get_channel) | **GET** /channels/{channel_id} | Get a channel
[**get_channel_by_name**](ChannelsApi.md#get_channel_by_name) | **GET** /teams/{team_id}/channels/name/{channel_name} | Get a channel by name
[**get_channel_by_name_for_team_name**](ChannelsApi.md#get_channel_by_name_for_team_name) | **GET** /teams/name/{team_name}/channels/name/{channel_name} | Get a channel by name and team name
[**get_channel_member**](ChannelsApi.md#get_channel_member) | **GET** /channels/{channel_id}/members/{user_id} | Get channel member
[**get_channel_member_counts_by_group**](ChannelsApi.md#get_channel_member_counts_by_group) | **GET** /channels/{channel_id}/member_counts_by_group | Channel members counts for each group that has atleast one member in the channel
[**get_channel_members**](ChannelsApi.md#get_channel_members) | **GET** /channels/{channel_id}/members | Get channel members
[**get_channel_members_by_ids**](ChannelsApi.md#get_channel_members_by_ids) | **POST** /channels/{channel_id}/members/ids | Get channel members by ids
[**get_channel_members_for_user**](ChannelsApi.md#get_channel_members_for_user) | **GET** /users/{user_id}/teams/{team_id}/channels/members | Get channel memberships and roles for a user
[**get_channel_members_timezones**](ChannelsApi.md#get_channel_members_timezones) | **GET** /channels/{channel_id}/timezones | Get timezones in a channel
[**get_channel_moderations**](ChannelsApi.md#get_channel_moderations) | **GET** /channels/{channel_id}/moderations | Get information about channel&#39;s moderation.
[**get_channel_stats**](ChannelsApi.md#get_channel_stats) | **GET** /channels/{channel_id}/stats | Get channel statistics
[**get_channel_unread**](ChannelsApi.md#get_channel_unread) | **GET** /users/{user_id}/channels/{channel_id}/unread | Get unread messages
[**get_channels_for_team_for_user**](ChannelsApi.md#get_channels_for_team_for_user) | **GET** /users/{user_id}/teams/{team_id}/channels | Get channels for user
[**get_channels_for_user**](ChannelsApi.md#get_channels_for_user) | **GET** /users/{user_id}/channels | Get all channels from all teams
[**get_deleted_channels_for_team**](ChannelsApi.md#get_deleted_channels_for_team) | **GET** /teams/{team_id}/channels/deleted | Get deleted channels
[**get_pinned_posts**](ChannelsApi.md#get_pinned_posts) | **GET** /channels/{channel_id}/pinned | Get a channel&#39;s pinned posts
[**get_private_channels_for_team**](ChannelsApi.md#get_private_channels_for_team) | **GET** /teams/{team_id}/channels/private | Get private channels
[**get_public_channels_by_ids_for_team**](ChannelsApi.md#get_public_channels_by_ids_for_team) | **POST** /teams/{team_id}/channels/ids | Get a list of channels by ids
[**get_public_channels_for_team**](ChannelsApi.md#get_public_channels_for_team) | **GET** /teams/{team_id}/channels | Get public channels
[**get_sidebar_categories_for_team_for_user**](ChannelsApi.md#get_sidebar_categories_for_team_for_user) | **GET** /users/{user_id}/teams/{team_id}/channels/categories | Get user&#39;s sidebar categories
[**get_sidebar_category_for_team_for_user**](ChannelsApi.md#get_sidebar_category_for_team_for_user) | **GET** /users/{user_id}/teams/{team_id}/channels/categories/{category_id} | Get sidebar category
[**get_sidebar_category_order_for_team_for_user**](ChannelsApi.md#get_sidebar_category_order_for_team_for_user) | **GET** /users/{user_id}/teams/{team_id}/channels/categories/order | Get user&#39;s sidebar category order
[**move_channel**](ChannelsApi.md#move_channel) | **POST** /channels/{channel_id}/move | Move a channel
[**patch_channel**](ChannelsApi.md#patch_channel) | **PUT** /channels/{channel_id}/patch | Patch a channel
[**patch_channel_moderations**](ChannelsApi.md#patch_channel_moderations) | **PUT** /channels/{channel_id}/moderations/patch | Update a channel&#39;s moderation settings.
[**remove_sidebar_category_for_team_for_user**](ChannelsApi.md#remove_sidebar_category_for_team_for_user) | **DELETE** /users/{user_id}/teams/{team_id}/channels/categories/{category_id} | Delete sidebar category
[**remove_user_from_channel**](ChannelsApi.md#remove_user_from_channel) | **DELETE** /channels/{channel_id}/members/{user_id} | Remove user from channel
[**restore_channel**](ChannelsApi.md#restore_channel) | **POST** /channels/{channel_id}/restore | Restore a channel
[**search_all_channels**](ChannelsApi.md#search_all_channels) | **POST** /channels/search | Search all private and open type channels across all teams
[**search_archived_channels**](ChannelsApi.md#search_archived_channels) | **POST** /teams/{team_id}/channels/search_archived | Search archived channels
[**search_channels**](ChannelsApi.md#search_channels) | **POST** /teams/{team_id}/channels/search | Search channels
[**search_group_channels**](ChannelsApi.md#search_group_channels) | **POST** /channels/group/search | Search Group Channels
[**update_channel**](ChannelsApi.md#update_channel) | **PUT** /channels/{channel_id} | Update a channel
[**update_channel_member_scheme_roles**](ChannelsApi.md#update_channel_member_scheme_roles) | **PUT** /channels/{channel_id}/members/{user_id}/schemeRoles | Update the scheme-derived roles of a channel member.
[**update_channel_notify_props**](ChannelsApi.md#update_channel_notify_props) | **PUT** /channels/{channel_id}/members/{user_id}/notify_props | Update channel notifications
[**update_channel_privacy**](ChannelsApi.md#update_channel_privacy) | **PUT** /channels/{channel_id}/privacy | Update channel&#39;s privacy
[**update_channel_roles**](ChannelsApi.md#update_channel_roles) | **PUT** /channels/{channel_id}/members/{user_id}/roles | Update channel roles
[**update_channel_scheme**](ChannelsApi.md#update_channel_scheme) | **PUT** /channels/{channel_id}/scheme | Set a channel&#39;s scheme
[**update_sidebar_categories_for_team_for_user**](ChannelsApi.md#update_sidebar_categories_for_team_for_user) | **PUT** /users/{user_id}/teams/{team_id}/channels/categories | Update user&#39;s sidebar categories
[**update_sidebar_category_for_team_for_user**](ChannelsApi.md#update_sidebar_category_for_team_for_user) | **PUT** /users/{user_id}/teams/{team_id}/channels/categories/{category_id} | Update sidebar category
[**update_sidebar_category_order_for_team_for_user**](ChannelsApi.md#update_sidebar_category_order_for_team_for_user) | **PUT** /users/{user_id}/teams/{team_id}/channels/categories/order | Update user&#39;s sidebar category order
[**view_channel**](ChannelsApi.md#view_channel) | **POST** /channels/members/{user_id}/view | View channel


# **add_channel_member**
> add_channel_member(_api::ChannelsApi, channel_id::String, add_channel_member_request::AddChannelMemberRequest; _mediaType=nothing) -> ChannelMember, OpenAPI.Clients.ApiResponse <br/>
> add_channel_member(_api::ChannelsApi, response_stream::Channel, channel_id::String, add_channel_member_request::AddChannelMemberRequest; _mediaType=nothing) -> Channel{ ChannelMember }, OpenAPI.Clients.ApiResponse

Add user to channel

Add a user to a channel by creating a channel member object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| The channel ID | [default to nothing]
**add_channel_member_request** | [**AddChannelMemberRequest**](AddChannelMemberRequest.md)|  | 

### Return type

[**ChannelMember**](ChannelMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **autocomplete_channels_for_team**
> autocomplete_channels_for_team(_api::ChannelsApi, team_id::String, name::String; _mediaType=nothing) -> Vector{Channel}, OpenAPI.Clients.ApiResponse <br/>
> autocomplete_channels_for_team(_api::ChannelsApi, response_stream::Channel, team_id::String, name::String; _mediaType=nothing) -> Channel{ Vector{Channel} }, OpenAPI.Clients.ApiResponse

Autocomplete channels

Autocomplete public channels on a team based on the search term provided in the request URL.  __Minimum server version__: 4.7  ##### Permissions Must have the `list_team_channels` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**name** | **String**| Name or display name | [default to nothing]

### Return type

[**Vector{Channel}**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **autocomplete_channels_for_team_for_search**
> autocomplete_channels_for_team_for_search(_api::ChannelsApi, team_id::String, name::String; _mediaType=nothing) -> Vector{Channel}, OpenAPI.Clients.ApiResponse <br/>
> autocomplete_channels_for_team_for_search(_api::ChannelsApi, response_stream::Channel, team_id::String, name::String; _mediaType=nothing) -> Channel{ Vector{Channel} }, OpenAPI.Clients.ApiResponse

Autocomplete channels for search

Autocomplete your channels on a team based on the search term provided in the request URL.  __Minimum server version__: 5.4  ##### Permissions Must have the `list_team_channels` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**name** | **String**| Name or display name | [default to nothing]

### Return type

[**Vector{Channel}**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **channel_members_minus_group_members**
> channel_members_minus_group_members(_api::ChannelsApi, channel_id::String, group_ids::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> channel_members_minus_group_members(_api::ChannelsApi, response_stream::Channel, channel_id::String, group_ids::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Channel members minus group members.

Get the set of users who are members of the channel minus the set of users who are members of the given groups. Each user object contains an array of group objects representing the group memberships for that user. Each user object contains the boolean fields `scheme_guest`, `scheme_user`, and `scheme_admin` representing the roles that user has for the given channel.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.14 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]
**group_ids** | **String**| A comma-separated list of group ids. | [default to &quot;&quot;]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of users per page. | [default to 0]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_channel**
> create_channel(_api::ChannelsApi, create_channel_request::CreateChannelRequest; _mediaType=nothing) -> Channel, OpenAPI.Clients.ApiResponse <br/>
> create_channel(_api::ChannelsApi, response_stream::Channel, create_channel_request::CreateChannelRequest; _mediaType=nothing) -> Channel{ Channel }, OpenAPI.Clients.ApiResponse

Create a channel

Create a new channel. ##### Permissions If creating a public channel, `create_public_channel` permission is required. If creating a private channel, `create_private_channel` permission is required. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**create_channel_request** | [**CreateChannelRequest**](CreateChannelRequest.md)| Channel object to be created | 

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_direct_channel**
> create_direct_channel(_api::ChannelsApi, request_body::Vector{String}; _mediaType=nothing) -> Channel, OpenAPI.Clients.ApiResponse <br/>
> create_direct_channel(_api::ChannelsApi, response_stream::Channel, request_body::Vector{String}; _mediaType=nothing) -> Channel{ Channel }, OpenAPI.Clients.ApiResponse

Create a direct message channel

Create a new direct message channel between two users. ##### Permissions Must be one of the two users and have `create_direct_channel` permission. Having the `manage_system` permission voids the previous requirements. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**request_body** | [**Vector{String}**](String.md)| The two user ids to be in the direct message | 

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_group_channel**
> create_group_channel(_api::ChannelsApi, request_body::Vector{String}; _mediaType=nothing) -> Channel, OpenAPI.Clients.ApiResponse <br/>
> create_group_channel(_api::ChannelsApi, response_stream::Channel, request_body::Vector{String}; _mediaType=nothing) -> Channel{ Channel }, OpenAPI.Clients.ApiResponse

Create a group message channel

Create a new group message channel to group of users. If the logged in user's id is not included in the list, it will be appended to the end. ##### Permissions Must have `create_group_channel` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**request_body** | [**Vector{String}**](String.md)| User ids to be in the group message channel | 

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_sidebar_category_for_team_for_user**
> create_sidebar_category_for_team_for_user(_api::ChannelsApi, team_id::String, user_id::String, sidebar_category::SidebarCategory; _mediaType=nothing) -> SidebarCategory, OpenAPI.Clients.ApiResponse <br/>
> create_sidebar_category_for_team_for_user(_api::ChannelsApi, response_stream::Channel, team_id::String, user_id::String, sidebar_category::SidebarCategory; _mediaType=nothing) -> Channel{ SidebarCategory }, OpenAPI.Clients.ApiResponse

Create user's sidebar category

Create a custom sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**user_id** | **String**| User GUID | [default to nothing]
**sidebar_category** | [**SidebarCategory**](SidebarCategory.md)|  | 

### Return type

[**SidebarCategory**](SidebarCategory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_channel**
> delete_channel(_api::ChannelsApi, channel_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_channel(_api::ChannelsApi, response_stream::Channel, channel_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Delete a channel

Archives a channel. This will set the `deleteAt` to the current timestamp in the database. Soft deleted channels may not be accessible in the user interface. They can be viewed and unarchived in the **System Console > User Management > Channels** based on your license. Direct and group message channels cannot be deleted.  As of server version 5.28, optionally use the `permanent=true` query parameter to permanently delete the channel for compliance reasons. To use this feature `ServiceSettings.EnableAPIChannelDeletion` must be set to `true` in the server's configuration.  If you permanently delete a channel this action is not recoverable outside of a database backup.  ##### Permissions `delete_public_channel` permission if the channel is public, `delete_private_channel` permission if the channel is private, or have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_all_channels**
> get_all_channels(_api::ChannelsApi; not_associated_to_group=nothing, page=nothing, per_page=nothing, exclude_default_channels=nothing, include_deleted=nothing, include_total_count=nothing, exclude_policy_constrained=nothing, _mediaType=nothing) -> Vector{ChannelWithTeamData}, OpenAPI.Clients.ApiResponse <br/>
> get_all_channels(_api::ChannelsApi, response_stream::Channel; not_associated_to_group=nothing, page=nothing, per_page=nothing, exclude_default_channels=nothing, include_deleted=nothing, include_total_count=nothing, exclude_policy_constrained=nothing, _mediaType=nothing) -> Channel{ Vector{ChannelWithTeamData} }, OpenAPI.Clients.ApiResponse

Get a list of all channels

##### Permissions `manage_system` 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **not_associated_to_group** | **String**| A group id to exclude channels that are associated with that group via GroupChannel records. This can also be left blank with &#x60;not_associated_to_group&#x3D;&#x60;. | [default to nothing]
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of channels per page. | [default to 0]
 **exclude_default_channels** | **Bool**| Whether to exclude default channels (ex Town Square, Off-Topic) from the results. | [default to false]
 **include_deleted** | **Bool**| Include channels that have been archived. This correlates to the &#x60;DeleteAt&#x60; flag being set in the database. | [default to false]
 **include_total_count** | **Bool**| Appends a total count of returned channels inside the response object - ex: &#x60;{ \&quot;channels\&quot;: [], \&quot;total_count\&quot; : 0 }&#x60;.       | [default to false]
 **exclude_policy_constrained** | **Bool**| If set to true, channels which are part of a data retention policy will be excluded. The &#x60;sysconsole_read_compliance&#x60; permission is required to use this parameter. __Minimum server version__: 5.35 | [default to false]

### Return type

[**Vector{ChannelWithTeamData}**](ChannelWithTeamData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channel**
> get_channel(_api::ChannelsApi, channel_id::String; _mediaType=nothing) -> Channel, OpenAPI.Clients.ApiResponse <br/>
> get_channel(_api::ChannelsApi, response_stream::Channel, channel_id::String; _mediaType=nothing) -> Channel{ Channel }, OpenAPI.Clients.ApiResponse

Get a channel

Get channel from the provided channel id string. ##### Permissions `read_channel` permission for the channel. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channel_by_name**
> get_channel_by_name(_api::ChannelsApi, team_id::String, channel_name::String; include_deleted=nothing, _mediaType=nothing) -> Channel, OpenAPI.Clients.ApiResponse <br/>
> get_channel_by_name(_api::ChannelsApi, response_stream::Channel, team_id::String, channel_name::String; include_deleted=nothing, _mediaType=nothing) -> Channel{ Channel }, OpenAPI.Clients.ApiResponse

Get a channel by name

Gets channel from the provided team id and channel name strings. ##### Permissions `read_channel` permission for the channel. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**channel_name** | **String**| Channel Name | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_deleted** | **Bool**| Defines if deleted channels should be returned or not (Mattermost Server 5.26.0+) | [default to false]

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channel_by_name_for_team_name**
> get_channel_by_name_for_team_name(_api::ChannelsApi, team_name::String, channel_name::String; include_deleted=nothing, _mediaType=nothing) -> Channel, OpenAPI.Clients.ApiResponse <br/>
> get_channel_by_name_for_team_name(_api::ChannelsApi, response_stream::Channel, team_name::String, channel_name::String; include_deleted=nothing, _mediaType=nothing) -> Channel{ Channel }, OpenAPI.Clients.ApiResponse

Get a channel by name and team name

Gets a channel from the provided team name and channel name strings. ##### Permissions `read_channel` permission for the channel. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_name** | **String**| Team Name | [default to nothing]
**channel_name** | **String**| Channel Name | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_deleted** | **Bool**| Defines if deleted channels should be returned or not (Mattermost Server 5.26.0+) | [default to false]

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channel_member**
> get_channel_member(_api::ChannelsApi, channel_id::String, user_id::String; _mediaType=nothing) -> ChannelMember, OpenAPI.Clients.ApiResponse <br/>
> get_channel_member(_api::ChannelsApi, response_stream::Channel, channel_id::String, user_id::String; _mediaType=nothing) -> Channel{ ChannelMember }, OpenAPI.Clients.ApiResponse

Get channel member

Get a channel member. ##### Permissions `read_channel` permission for the channel. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**ChannelMember**](ChannelMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channel_member_counts_by_group**
> get_channel_member_counts_by_group(_api::ChannelsApi, channel_id::String; include_timezones=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_channel_member_counts_by_group(_api::ChannelsApi, response_stream::Channel, channel_id::String; include_timezones=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Channel members counts for each group that has atleast one member in the channel

Returns a set of ChannelMemberCountByGroup objects which contain a `group_id`, `channel_member_count` and a `channel_member_timezones_count`. ##### Permissions Must have `read_channel` permission for the given channel. __Minimum server version__: 5.24 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_timezones** | **Bool**| Defines if member timezone counts should be returned or not | [default to false]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channel_members**
> get_channel_members(_api::ChannelsApi, channel_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{ChannelMember}, OpenAPI.Clients.ApiResponse <br/>
> get_channel_members(_api::ChannelsApi, response_stream::Channel, channel_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{ChannelMember} }, OpenAPI.Clients.ApiResponse

Get channel members

Get a page of members for a channel. ##### Permissions `read_channel` permission for the channel. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of members per page. There is a maximum limit of 200 members. | [default to 60]

### Return type

[**Vector{ChannelMember}**](ChannelMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channel_members_by_ids**
> get_channel_members_by_ids(_api::ChannelsApi, channel_id::String, request_body::Vector{String}; _mediaType=nothing) -> Vector{ChannelMember}, OpenAPI.Clients.ApiResponse <br/>
> get_channel_members_by_ids(_api::ChannelsApi, response_stream::Channel, channel_id::String, request_body::Vector{String}; _mediaType=nothing) -> Channel{ Vector{ChannelMember} }, OpenAPI.Clients.ApiResponse

Get channel members by ids

Get a list of channel members based on the provided user ids. ##### Permissions Must have the `read_channel` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]
**request_body** | [**Vector{String}**](String.md)| List of user ids | 

### Return type

[**Vector{ChannelMember}**](ChannelMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channel_members_for_user**
> get_channel_members_for_user(_api::ChannelsApi, user_id::String, team_id::String; _mediaType=nothing) -> Vector{ChannelMember}, OpenAPI.Clients.ApiResponse <br/>
> get_channel_members_for_user(_api::ChannelsApi, response_stream::Channel, user_id::String, team_id::String; _mediaType=nothing) -> Channel{ Vector{ChannelMember} }, OpenAPI.Clients.ApiResponse

Get channel memberships and roles for a user

Get all channel memberships and associated membership roles (i.e. `channel_user`, `channel_admin`) for a user on a specific team. ##### Permissions Logged in as the user and `view_team` permission for the team. Having `manage_system` permission voids the previous requirements. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**team_id** | **String**| Team GUID | [default to nothing]

### Return type

[**Vector{ChannelMember}**](ChannelMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channel_members_timezones**
> get_channel_members_timezones(_api::ChannelsApi, channel_id::String; _mediaType=nothing) -> Vector{String}, OpenAPI.Clients.ApiResponse <br/>
> get_channel_members_timezones(_api::ChannelsApi, response_stream::Channel, channel_id::String; _mediaType=nothing) -> Channel{ Vector{String} }, OpenAPI.Clients.ApiResponse

Get timezones in a channel

Get a list of timezones for the users who are in this channel.  __Minimum server version__: 5.6  ##### Permissions Must have the `read_channel` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]

### Return type

**Vector{String}**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channel_moderations**
> get_channel_moderations(_api::ChannelsApi, channel_id::String; _mediaType=nothing) -> Vector{ChannelModeration}, OpenAPI.Clients.ApiResponse <br/>
> get_channel_moderations(_api::ChannelsApi, response_stream::Channel, channel_id::String; _mediaType=nothing) -> Channel{ Vector{ChannelModeration} }, OpenAPI.Clients.ApiResponse

Get information about channel's moderation.

##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.22 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]

### Return type

[**Vector{ChannelModeration}**](ChannelModeration.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channel_stats**
> get_channel_stats(_api::ChannelsApi, channel_id::String; _mediaType=nothing) -> ChannelStats, OpenAPI.Clients.ApiResponse <br/>
> get_channel_stats(_api::ChannelsApi, response_stream::Channel, channel_id::String; _mediaType=nothing) -> Channel{ ChannelStats }, OpenAPI.Clients.ApiResponse

Get channel statistics

Get statistics for a channel. ##### Permissions Must have the `read_channel` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]

### Return type

[**ChannelStats**](ChannelStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channel_unread**
> get_channel_unread(_api::ChannelsApi, user_id::String, channel_id::String; _mediaType=nothing) -> ChannelUnread, OpenAPI.Clients.ApiResponse <br/>
> get_channel_unread(_api::ChannelsApi, response_stream::Channel, user_id::String, channel_id::String; _mediaType=nothing) -> Channel{ ChannelUnread }, OpenAPI.Clients.ApiResponse

Get unread messages

Get the total unread messages and mentions for a channel for a user. ##### Permissions Must be logged in as user and have the `read_channel` permission, or have `edit_other_usrs` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**channel_id** | **String**| Channel GUID | [default to nothing]

### Return type

[**ChannelUnread**](ChannelUnread.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channels_for_team_for_user**
> get_channels_for_team_for_user(_api::ChannelsApi, user_id::String, team_id::String; include_deleted=nothing, last_delete_at=nothing, _mediaType=nothing) -> Vector{Channel}, OpenAPI.Clients.ApiResponse <br/>
> get_channels_for_team_for_user(_api::ChannelsApi, response_stream::Channel, user_id::String, team_id::String; include_deleted=nothing, last_delete_at=nothing, _mediaType=nothing) -> Channel{ Vector{Channel} }, OpenAPI.Clients.ApiResponse

Get channels for user

Get all the channels on a team for a user. ##### Permissions Logged in as the user, or have `edit_other_users` permission, and `view_team` permission for the team. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**team_id** | **String**| Team GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_deleted** | **Bool**| Defines if deleted channels should be returned or not | [default to false]
 **last_delete_at** | **Int64**| Filters the deleted channels by this time in epoch format. Does not have any effect if include_deleted is set to false. | [default to 0]

### Return type

[**Vector{Channel}**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channels_for_user**
> get_channels_for_user(_api::ChannelsApi, user_id::String; last_delete_at=nothing, include_deleted=nothing, _mediaType=nothing) -> Vector{Channel}, OpenAPI.Clients.ApiResponse <br/>
> get_channels_for_user(_api::ChannelsApi, response_stream::Channel, user_id::String; last_delete_at=nothing, include_deleted=nothing, _mediaType=nothing) -> Channel{ Vector{Channel} }, OpenAPI.Clients.ApiResponse

Get all channels from all teams

Get all channels from all teams that a user is a member of.  __Minimum server version__: 6.1  ##### Permissions  Logged in as the user, or have `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**user_id** | **String**| The ID of the user. This can also be \&quot;me\&quot; which will point to the current user. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **last_delete_at** | **Int64**| Filters the deleted channels by this time in epoch format. Does not have any effect if include_deleted is set to false. | [default to 0]
 **include_deleted** | **Bool**| Defines if deleted channels should be returned or not | [default to false]

### Return type

[**Vector{Channel}**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_deleted_channels_for_team**
> get_deleted_channels_for_team(_api::ChannelsApi, team_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{Channel}, OpenAPI.Clients.ApiResponse <br/>
> get_deleted_channels_for_team(_api::ChannelsApi, response_stream::Channel, team_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{Channel} }, OpenAPI.Clients.ApiResponse

Get deleted channels

Get a page of deleted channels on a team based on query string parameters - team_id, page and per_page.  __Minimum server version__: 3.10 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of public channels per page. | [default to 60]

### Return type

[**Vector{Channel}**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pinned_posts**
> get_pinned_posts(_api::ChannelsApi, channel_id::String; _mediaType=nothing) -> PostList, OpenAPI.Clients.ApiResponse <br/>
> get_pinned_posts(_api::ChannelsApi, response_stream::Channel, channel_id::String; _mediaType=nothing) -> Channel{ PostList }, OpenAPI.Clients.ApiResponse

Get a channel's pinned posts

Get a list of pinned posts for channel.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]

### Return type

[**PostList**](PostList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_private_channels_for_team**
> get_private_channels_for_team(_api::ChannelsApi, team_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{Channel}, OpenAPI.Clients.ApiResponse <br/>
> get_private_channels_for_team(_api::ChannelsApi, response_stream::Channel, team_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{Channel} }, OpenAPI.Clients.ApiResponse

Get private channels

Get a page of private channels on a team based on query string parameters - team_id, page and per_page.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of private channels per page. | [default to 60]

### Return type

[**Vector{Channel}**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_public_channels_by_ids_for_team**
> get_public_channels_by_ids_for_team(_api::ChannelsApi, team_id::String, request_body::Vector{String}; _mediaType=nothing) -> Vector{Channel}, OpenAPI.Clients.ApiResponse <br/>
> get_public_channels_by_ids_for_team(_api::ChannelsApi, response_stream::Channel, team_id::String, request_body::Vector{String}; _mediaType=nothing) -> Channel{ Vector{Channel} }, OpenAPI.Clients.ApiResponse

Get a list of channels by ids

Get a list of public channels on a team by id. ##### Permissions `view_team` for the team the channels are on. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**request_body** | [**Vector{String}**](String.md)| List of channel ids | 

### Return type

[**Vector{Channel}**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_public_channels_for_team**
> get_public_channels_for_team(_api::ChannelsApi, team_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{Channel}, OpenAPI.Clients.ApiResponse <br/>
> get_public_channels_for_team(_api::ChannelsApi, response_stream::Channel, team_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{Channel} }, OpenAPI.Clients.ApiResponse

Get public channels

Get a page of public channels on a team based on query string parameters - page and per_page. ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of public channels per page. | [default to 60]

### Return type

[**Vector{Channel}**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_sidebar_categories_for_team_for_user**
> get_sidebar_categories_for_team_for_user(_api::ChannelsApi, team_id::String, user_id::String; _mediaType=nothing) -> Vector{OrderedSidebarCategories}, OpenAPI.Clients.ApiResponse <br/>
> get_sidebar_categories_for_team_for_user(_api::ChannelsApi, response_stream::Channel, team_id::String, user_id::String; _mediaType=nothing) -> Channel{ Vector{OrderedSidebarCategories} }, OpenAPI.Clients.ApiResponse

Get user's sidebar categories

Get a list of sidebar categories that will appear in the user's sidebar on the given team, including a list of channel IDs in each category. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**Vector{OrderedSidebarCategories}**](OrderedSidebarCategories.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_sidebar_category_for_team_for_user**
> get_sidebar_category_for_team_for_user(_api::ChannelsApi, team_id::String, user_id::String, category_id::String; _mediaType=nothing) -> SidebarCategory, OpenAPI.Clients.ApiResponse <br/>
> get_sidebar_category_for_team_for_user(_api::ChannelsApi, response_stream::Channel, team_id::String, user_id::String, category_id::String; _mediaType=nothing) -> Channel{ SidebarCategory }, OpenAPI.Clients.ApiResponse

Get sidebar category

Returns a single sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**user_id** | **String**| User GUID | [default to nothing]
**category_id** | **String**| Category GUID | [default to nothing]

### Return type

[**SidebarCategory**](SidebarCategory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_sidebar_category_order_for_team_for_user**
> get_sidebar_category_order_for_team_for_user(_api::ChannelsApi, team_id::String, user_id::String; _mediaType=nothing) -> Vector{String}, OpenAPI.Clients.ApiResponse <br/>
> get_sidebar_category_order_for_team_for_user(_api::ChannelsApi, response_stream::Channel, team_id::String, user_id::String; _mediaType=nothing) -> Channel{ Vector{String} }, OpenAPI.Clients.ApiResponse

Get user's sidebar category order

Returns the order of the sidebar categories for a user on the given team as an array of IDs. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**user_id** | **String**| User GUID | [default to nothing]

### Return type

**Vector{String}**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **move_channel**
> move_channel(_api::ChannelsApi, channel_id::String, move_channel_request::MoveChannelRequest; _mediaType=nothing) -> Channel, OpenAPI.Clients.ApiResponse <br/>
> move_channel(_api::ChannelsApi, response_stream::Channel, channel_id::String, move_channel_request::MoveChannelRequest; _mediaType=nothing) -> Channel{ Channel }, OpenAPI.Clients.ApiResponse

Move a channel

Move a channel to another team.  __Minimum server version__: 5.26  ##### Permissions  Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]
**move_channel_request** | [**MoveChannelRequest**](MoveChannelRequest.md)|  | 

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **patch_channel**
> patch_channel(_api::ChannelsApi, channel_id::String, patch_channel_request::PatchChannelRequest; _mediaType=nothing) -> Channel, OpenAPI.Clients.ApiResponse <br/>
> patch_channel(_api::ChannelsApi, response_stream::Channel, channel_id::String, patch_channel_request::PatchChannelRequest; _mediaType=nothing) -> Channel{ Channel }, OpenAPI.Clients.ApiResponse

Patch a channel

Partially update a channel by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions If updating a public channel, `manage_public_channel_members` permission is required. If updating a private channel, `manage_private_channel_members` permission is required. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]
**patch_channel_request** | [**PatchChannelRequest**](PatchChannelRequest.md)| Channel object to be updated | 

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **patch_channel_moderations**
> patch_channel_moderations(_api::ChannelsApi, channel_id::String, channel_moderation_patch::ChannelModerationPatch; _mediaType=nothing) -> Vector{ChannelModeration}, OpenAPI.Clients.ApiResponse <br/>
> patch_channel_moderations(_api::ChannelsApi, response_stream::Channel, channel_id::String, channel_moderation_patch::ChannelModerationPatch; _mediaType=nothing) -> Channel{ Vector{ChannelModeration} }, OpenAPI.Clients.ApiResponse

Update a channel's moderation settings.

##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.22 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]
**channel_moderation_patch** | [**ChannelModerationPatch**](ChannelModerationPatch.md)|  | 

### Return type

[**Vector{ChannelModeration}**](ChannelModeration.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **remove_sidebar_category_for_team_for_user**
> remove_sidebar_category_for_team_for_user(_api::ChannelsApi, team_id::String, user_id::String, category_id::String; _mediaType=nothing) -> SidebarCategory, OpenAPI.Clients.ApiResponse <br/>
> remove_sidebar_category_for_team_for_user(_api::ChannelsApi, response_stream::Channel, team_id::String, user_id::String, category_id::String; _mediaType=nothing) -> Channel{ SidebarCategory }, OpenAPI.Clients.ApiResponse

Delete sidebar category

Deletes a single sidebar category for the user on the given team. Only custom categories can be deleted. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**user_id** | **String**| User GUID | [default to nothing]
**category_id** | **String**| Category GUID | [default to nothing]

### Return type

[**SidebarCategory**](SidebarCategory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **remove_user_from_channel**
> remove_user_from_channel(_api::ChannelsApi, channel_id::String, user_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> remove_user_from_channel(_api::ChannelsApi, response_stream::Channel, channel_id::String, user_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Remove user from channel

Delete a channel member, effectively removing them from a channel.  In server version 5.3 and later, channel members can only be deleted from public or private channels. ##### Permissions `manage_public_channel_members` permission if the channel is public. `manage_private_channel_members` permission if the channel is private. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **restore_channel**
> restore_channel(_api::ChannelsApi, channel_id::String; _mediaType=nothing) -> Channel, OpenAPI.Clients.ApiResponse <br/>
> restore_channel(_api::ChannelsApi, response_stream::Channel, channel_id::String; _mediaType=nothing) -> Channel{ Channel }, OpenAPI.Clients.ApiResponse

Restore a channel

Restore channel from the provided channel id string.  __Minimum server version__: 3.10  ##### Permissions `manage_team` permission for the team of the channel. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search_all_channels**
> search_all_channels(_api::ChannelsApi, search_all_channels_request::SearchAllChannelsRequest; system_console=nothing, _mediaType=nothing) -> SearchAllChannels200Response, OpenAPI.Clients.ApiResponse <br/>
> search_all_channels(_api::ChannelsApi, response_stream::Channel, search_all_channels_request::SearchAllChannelsRequest; system_console=nothing, _mediaType=nothing) -> Channel{ SearchAllChannels200Response }, OpenAPI.Clients.ApiResponse

Search all private and open type channels across all teams

Returns all private and open type channels where 'term' matches on the name, display name, or purpose of the channel.  Configured 'default' channels (ex Town Square and Off-Topic) can be excluded from the results with the `exclude_default_channels` boolean parameter.  Channels that are associated (via GroupChannel records) to a given group can be excluded from the results with the `not_associated_to_group` parameter and a group id string. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**search_all_channels_request** | [**SearchAllChannelsRequest**](SearchAllChannelsRequest.md)| The search terms and logic to use in the search. | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system_console** | **Bool**| Is the request from system_console. If this is set to true, it filters channels by the logged in user.  | [default to true]

### Return type

[**SearchAllChannels200Response**](SearchAllChannels200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search_archived_channels**
> search_archived_channels(_api::ChannelsApi, team_id::String, search_archived_channels_request::SearchArchivedChannelsRequest; _mediaType=nothing) -> Vector{Channel}, OpenAPI.Clients.ApiResponse <br/>
> search_archived_channels(_api::ChannelsApi, response_stream::Channel, team_id::String, search_archived_channels_request::SearchArchivedChannelsRequest; _mediaType=nothing) -> Channel{ Vector{Channel} }, OpenAPI.Clients.ApiResponse

Search archived channels

Search archived channels on a team based on the search term provided in the request body.  __Minimum server version__: 5.18  ##### Permissions Must have the `list_team_channels` permission.  In server version 5.18 and later, a user without the `list_team_channels` permission will be able to use this endpoint, with the search results limited to the channels that the user is a member of. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**search_archived_channels_request** | [**SearchArchivedChannelsRequest**](SearchArchivedChannelsRequest.md)| Search criteria | 

### Return type

[**Vector{Channel}**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search_channels**
> search_channels(_api::ChannelsApi, team_id::String, search_channels_request::SearchChannelsRequest; _mediaType=nothing) -> Vector{Channel}, OpenAPI.Clients.ApiResponse <br/>
> search_channels(_api::ChannelsApi, response_stream::Channel, team_id::String, search_channels_request::SearchChannelsRequest; _mediaType=nothing) -> Channel{ Vector{Channel} }, OpenAPI.Clients.ApiResponse

Search channels

Search public channels on a team based on the search term provided in the request body. ##### Permissions Must have the `list_team_channels` permission.  In server version 5.16 and later, a user without the `list_team_channels` permission will be able to use this endpoint, with the search results limited to the channels that the user is a member of. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**search_channels_request** | [**SearchChannelsRequest**](SearchChannelsRequest.md)| Search criteria | 

### Return type

[**Vector{Channel}**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search_group_channels**
> search_group_channels(_api::ChannelsApi, search_group_channels_request::SearchGroupChannelsRequest; _mediaType=nothing) -> Vector{Channel}, OpenAPI.Clients.ApiResponse <br/>
> search_group_channels(_api::ChannelsApi, response_stream::Channel, search_group_channels_request::SearchGroupChannelsRequest; _mediaType=nothing) -> Channel{ Vector{Channel} }, OpenAPI.Clients.ApiResponse

Search Group Channels

Get a list of group channels for a user which members' usernames match the search term.  __Minimum server version__: 5.14 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**search_group_channels_request** | [**SearchGroupChannelsRequest**](SearchGroupChannelsRequest.md)| Search criteria | 

### Return type

[**Vector{Channel}**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_channel**
> update_channel(_api::ChannelsApi, channel_id::String, update_channel_request::UpdateChannelRequest; _mediaType=nothing) -> Channel, OpenAPI.Clients.ApiResponse <br/>
> update_channel(_api::ChannelsApi, response_stream::Channel, channel_id::String, update_channel_request::UpdateChannelRequest; _mediaType=nothing) -> Channel{ Channel }, OpenAPI.Clients.ApiResponse

Update a channel

Update a channel. The fields that can be updated are listed as parameters. Omitted fields will be treated as blanks. ##### Permissions If updating a public channel, `manage_public_channel_members` permission is required. If updating a private channel, `manage_private_channel_members` permission is required. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]
**update_channel_request** | [**UpdateChannelRequest**](UpdateChannelRequest.md)| Channel object to be updated | 

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_channel_member_scheme_roles**
> update_channel_member_scheme_roles(_api::ChannelsApi, channel_id::String, user_id::String, update_team_member_scheme_roles_request::UpdateTeamMemberSchemeRolesRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> update_channel_member_scheme_roles(_api::ChannelsApi, response_stream::Channel, channel_id::String, user_id::String, update_team_member_scheme_roles_request::UpdateTeamMemberSchemeRolesRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Update the scheme-derived roles of a channel member.

Update a channel member's scheme_admin/scheme_user properties. Typically this should either be `scheme_admin=false, scheme_user=true` for ordinary channel member, or `scheme_admin=true, scheme_user=true` for a channel admin. __Minimum server version__: 5.0 ##### Permissions Must be authenticated and have the `manage_channel_roles` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]
**user_id** | **String**| User GUID | [default to nothing]
**update_team_member_scheme_roles_request** | [**UpdateTeamMemberSchemeRolesRequest**](UpdateTeamMemberSchemeRolesRequest.md)| Scheme properties. | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_channel_notify_props**
> update_channel_notify_props(_api::ChannelsApi, channel_id::String, user_id::String, channel_notify_props::ChannelNotifyProps; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> update_channel_notify_props(_api::ChannelsApi, response_stream::Channel, channel_id::String, user_id::String, channel_notify_props::ChannelNotifyProps; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Update channel notifications

Update a user's notification properties for a channel. Only the provided fields are updated. ##### Permissions Must be logged in as the user or have `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]
**user_id** | **String**| User GUID | [default to nothing]
**channel_notify_props** | [**ChannelNotifyProps**](ChannelNotifyProps.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_channel_privacy**
> update_channel_privacy(_api::ChannelsApi, channel_id::String, update_channel_privacy_request::UpdateChannelPrivacyRequest; _mediaType=nothing) -> Channel, OpenAPI.Clients.ApiResponse <br/>
> update_channel_privacy(_api::ChannelsApi, response_stream::Channel, channel_id::String, update_channel_privacy_request::UpdateChannelPrivacyRequest; _mediaType=nothing) -> Channel{ Channel }, OpenAPI.Clients.ApiResponse

Update channel's privacy

Updates channel's privacy allowing changing a channel from Public to Private and back.  __Minimum server version__: 5.16  ##### Permissions `manage_team` permission for the channels team on version < 5.28. `convert_public_channel_to_private` permission for the channel if updating privacy to 'P' on version >= 5.28. `convert_private_channel_to_public` permission for the channel if updating privacy to 'O' on version >= 5.28. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]
**update_channel_privacy_request** | [**UpdateChannelPrivacyRequest**](UpdateChannelPrivacyRequest.md)|  | 

### Return type

[**Channel**](Channel.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_channel_roles**
> update_channel_roles(_api::ChannelsApi, channel_id::String, user_id::String, update_user_roles_request::UpdateUserRolesRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> update_channel_roles(_api::ChannelsApi, response_stream::Channel, channel_id::String, user_id::String, update_user_roles_request::UpdateUserRolesRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Update channel roles

Update a user's roles for a channel. ##### Permissions Must have `manage_channel_roles` permission for the channel. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]
**user_id** | **String**| User GUID | [default to nothing]
**update_user_roles_request** | [**UpdateUserRolesRequest**](UpdateUserRolesRequest.md)| Space-delimited channel roles to assign to the user | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_channel_scheme**
> update_channel_scheme(_api::ChannelsApi, channel_id::String, update_team_scheme_request::UpdateTeamSchemeRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> update_channel_scheme(_api::ChannelsApi, response_stream::Channel, channel_id::String, update_team_scheme_request::UpdateTeamSchemeRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Set a channel's scheme

Set a channel's scheme, more specifically sets the scheme_id value of a channel record.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 4.10 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**channel_id** | **String**| Channel GUID | [default to nothing]
**update_team_scheme_request** | [**UpdateTeamSchemeRequest**](UpdateTeamSchemeRequest.md)| Scheme GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_sidebar_categories_for_team_for_user**
> update_sidebar_categories_for_team_for_user(_api::ChannelsApi, team_id::String, user_id::String, sidebar_category::Vector{SidebarCategory}; _mediaType=nothing) -> SidebarCategory, OpenAPI.Clients.ApiResponse <br/>
> update_sidebar_categories_for_team_for_user(_api::ChannelsApi, response_stream::Channel, team_id::String, user_id::String, sidebar_category::Vector{SidebarCategory}; _mediaType=nothing) -> Channel{ SidebarCategory }, OpenAPI.Clients.ApiResponse

Update user's sidebar categories

Update any number of sidebar categories for the user on the given team. This can be used to reorder the channels in these categories. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**user_id** | **String**| User GUID | [default to nothing]
**sidebar_category** | [**Vector{SidebarCategory}**](SidebarCategory.md)|  | 

### Return type

[**SidebarCategory**](SidebarCategory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_sidebar_category_for_team_for_user**
> update_sidebar_category_for_team_for_user(_api::ChannelsApi, team_id::String, user_id::String, category_id::String, sidebar_category::SidebarCategory; _mediaType=nothing) -> SidebarCategory, OpenAPI.Clients.ApiResponse <br/>
> update_sidebar_category_for_team_for_user(_api::ChannelsApi, response_stream::Channel, team_id::String, user_id::String, category_id::String, sidebar_category::SidebarCategory; _mediaType=nothing) -> Channel{ SidebarCategory }, OpenAPI.Clients.ApiResponse

Update sidebar category

Updates a single sidebar category for the user on the given team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**user_id** | **String**| User GUID | [default to nothing]
**category_id** | **String**| Category GUID | [default to nothing]
**sidebar_category** | [**SidebarCategory**](SidebarCategory.md)|  | 

### Return type

[**SidebarCategory**](SidebarCategory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_sidebar_category_order_for_team_for_user**
> update_sidebar_category_order_for_team_for_user(_api::ChannelsApi, team_id::String, user_id::String, request_body::Vector{String}; _mediaType=nothing) -> Vector{String}, OpenAPI.Clients.ApiResponse <br/>
> update_sidebar_category_order_for_team_for_user(_api::ChannelsApi, response_stream::Channel, team_id::String, user_id::String, request_body::Vector{String}; _mediaType=nothing) -> Channel{ Vector{String} }, OpenAPI.Clients.ApiResponse

Update user's sidebar category order

Updates the order of the sidebar categories for a user on the given team. The provided array must include the IDs of all categories on the team. __Minimum server version__: 5.26 ##### Permissions Must be authenticated and have the `list_team_channels` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**user_id** | **String**| User GUID | [default to nothing]
**request_body** | [**Vector{String}**](String.md)|  | 

### Return type

**Vector{String}**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **view_channel**
> view_channel(_api::ChannelsApi, user_id::String, view_channel_request::ViewChannelRequest; _mediaType=nothing) -> ViewChannel200Response, OpenAPI.Clients.ApiResponse <br/>
> view_channel(_api::ChannelsApi, response_stream::Channel, user_id::String, view_channel_request::ViewChannelRequest; _mediaType=nothing) -> Channel{ ViewChannel200Response }, OpenAPI.Clients.ApiResponse

View channel

Perform all the actions involved in viewing a channel. This includes marking channels as read, clearing push notifications, and updating the active channel. ##### Permissions Must be logged in as user or have `edit_other_users` permission.  __Response only includes `last_viewed_at_times` in Mattermost server 4.3 and newer.__ 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChannelsApi** | API context | 
**user_id** | **String**| User ID to perform the view action for | [default to nothing]
**view_channel_request** | [**ViewChannelRequest**](ViewChannelRequest.md)| Paremeters affecting how and which channels to view | 

### Return type

[**ViewChannel200Response**](ViewChannel200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

