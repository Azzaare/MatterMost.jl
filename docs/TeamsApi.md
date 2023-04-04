# TeamsApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_team_member**](TeamsApi.md#add_team_member) | **POST** /teams/{team_id}/members | Add user to team
[**add_team_member_from_invite**](TeamsApi.md#add_team_member_from_invite) | **POST** /teams/members/invite | Add user to team from invite
[**add_team_members**](TeamsApi.md#add_team_members) | **POST** /teams/{team_id}/members/batch | Add multiple users to team
[**create_team**](TeamsApi.md#create_team) | **POST** /teams | Create a team
[**get_all_teams**](TeamsApi.md#get_all_teams) | **GET** /teams | Get teams
[**get_team**](TeamsApi.md#get_team) | **GET** /teams/{team_id} | Get a team
[**get_team_by_name**](TeamsApi.md#get_team_by_name) | **GET** /teams/name/{name} | Get a team by name
[**get_team_icon**](TeamsApi.md#get_team_icon) | **GET** /teams/{team_id}/image | Get the team icon
[**get_team_invite_info**](TeamsApi.md#get_team_invite_info) | **GET** /teams/invite/{invite_id} | Get invite info for a team
[**get_team_member**](TeamsApi.md#get_team_member) | **GET** /teams/{team_id}/members/{user_id} | Get a team member
[**get_team_members**](TeamsApi.md#get_team_members) | **GET** /teams/{team_id}/members | Get team members
[**get_team_members_by_ids**](TeamsApi.md#get_team_members_by_ids) | **POST** /teams/{team_id}/members/ids | Get team members by ids
[**get_team_members_for_user**](TeamsApi.md#get_team_members_for_user) | **GET** /users/{user_id}/teams/members | Get team members for a user
[**get_team_stats**](TeamsApi.md#get_team_stats) | **GET** /teams/{team_id}/stats | Get a team stats
[**get_team_unread**](TeamsApi.md#get_team_unread) | **GET** /users/{user_id}/teams/{team_id}/unread | Get unreads for a team
[**get_teams_for_user**](TeamsApi.md#get_teams_for_user) | **GET** /users/{user_id}/teams | Get a user&#39;s teams
[**get_teams_unread_for_user**](TeamsApi.md#get_teams_unread_for_user) | **GET** /users/{user_id}/teams/unread | Get team unreads for a user
[**import_team**](TeamsApi.md#import_team) | **POST** /teams/{team_id}/import | Import a Team from other application
[**invalidate_email_invites**](TeamsApi.md#invalidate_email_invites) | **DELETE** /teams/invites/email | Invalidate active email invitations
[**invite_guests_to_team**](TeamsApi.md#invite_guests_to_team) | **POST** /teams/{team_id}/invite-guests/email | Invite guests to the team by email
[**invite_users_to_team**](TeamsApi.md#invite_users_to_team) | **POST** /teams/{team_id}/invite/email | Invite users to the team by email
[**patch_team**](TeamsApi.md#patch_team) | **PUT** /teams/{team_id}/patch | Patch a team
[**regenerate_team_invite_id**](TeamsApi.md#regenerate_team_invite_id) | **POST** /teams/{team_id}/regenerate_invite_id | Regenerate the Invite ID from a Team
[**remove_team_icon**](TeamsApi.md#remove_team_icon) | **DELETE** /teams/{team_id}/image | Remove the team icon
[**remove_team_member**](TeamsApi.md#remove_team_member) | **DELETE** /teams/{team_id}/members/{user_id} | Remove user from team
[**restore_team**](TeamsApi.md#restore_team) | **POST** /teams/{team_id}/restore | Restore a team
[**search_files**](TeamsApi.md#search_files) | **POST** /teams/{team_id}/files/search | Search files in a team
[**search_teams**](TeamsApi.md#search_teams) | **POST** /teams/search | Search teams
[**set_team_icon**](TeamsApi.md#set_team_icon) | **POST** /teams/{team_id}/image | Sets the team icon
[**soft_delete_team**](TeamsApi.md#soft_delete_team) | **DELETE** /teams/{team_id} | Delete a team
[**team_exists**](TeamsApi.md#team_exists) | **GET** /teams/name/{name}/exists | Check if team exists
[**team_members_minus_group_members**](TeamsApi.md#team_members_minus_group_members) | **GET** /teams/{team_id}/members_minus_group_members | Team members minus group members.
[**update_team**](TeamsApi.md#update_team) | **PUT** /teams/{team_id} | Update a team
[**update_team_member_roles**](TeamsApi.md#update_team_member_roles) | **PUT** /teams/{team_id}/members/{user_id}/roles | Update a team member roles
[**update_team_member_scheme_roles**](TeamsApi.md#update_team_member_scheme_roles) | **PUT** /teams/{team_id}/members/{user_id}/schemeRoles | Update the scheme-derived roles of a team member.
[**update_team_privacy**](TeamsApi.md#update_team_privacy) | **PUT** /teams/{team_id}/privacy | Update teams&#39;s privacy
[**update_team_scheme**](TeamsApi.md#update_team_scheme) | **PUT** /teams/{team_id}/scheme | Set a team&#39;s scheme


# **add_team_member**
> add_team_member(_api::TeamsApi, team_id::String, add_team_member_request::AddTeamMemberRequest; _mediaType=nothing) -> TeamMember, OpenAPI.Clients.ApiResponse <br/>
> add_team_member(_api::TeamsApi, response_stream::Channel, team_id::String, add_team_member_request::AddTeamMemberRequest; _mediaType=nothing) -> Channel{ TeamMember }, OpenAPI.Clients.ApiResponse

Add user to team

Add user to the team by user_id. ##### Permissions Must be authenticated and team be open to add self. For adding another user, authenticated user must have the `add_user_to_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**add_team_member_request** | [**AddTeamMemberRequest**](AddTeamMemberRequest.md)|  | 

### Return type

[**TeamMember**](TeamMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **add_team_member_from_invite**
> add_team_member_from_invite(_api::TeamsApi, token::String; _mediaType=nothing) -> TeamMember, OpenAPI.Clients.ApiResponse <br/>
> add_team_member_from_invite(_api::TeamsApi, response_stream::Channel, token::String; _mediaType=nothing) -> Channel{ TeamMember }, OpenAPI.Clients.ApiResponse

Add user to team from invite

Using either an invite id or hash/data pair from an email invite link, add a user to a team. ##### Permissions Must be authenticated. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**token** | **String**| Token id from the invitation | [default to nothing]

### Return type

[**TeamMember**](TeamMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **add_team_members**
> add_team_members(_api::TeamsApi, team_id::String, team_member::Vector{TeamMember}; graceful=nothing, _mediaType=nothing) -> Vector{TeamMember}, OpenAPI.Clients.ApiResponse <br/>
> add_team_members(_api::TeamsApi, response_stream::Channel, team_id::String, team_member::Vector{TeamMember}; graceful=nothing, _mediaType=nothing) -> Channel{ Vector{TeamMember} }, OpenAPI.Clients.ApiResponse

Add multiple users to team

Add a number of users to the team by user_id. ##### Permissions Must be authenticated. Authenticated user must have the `add_user_to_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**team_member** | [**Vector{TeamMember}**](TeamMember.md)|  | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graceful** | **Bool**| Instead of aborting the operation if a user cannot be added, return an arrray that will contain both the success and added members and the ones with error, in form of &#x60;[{\&quot;member\&quot;: {...}, \&quot;user_id\&quot;, \&quot;...\&quot;, \&quot;error\&quot;: {...}}]&#x60; | [default to nothing]

### Return type

[**Vector{TeamMember}**](TeamMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_team**
> create_team(_api::TeamsApi, create_team_request::CreateTeamRequest; _mediaType=nothing) -> Team, OpenAPI.Clients.ApiResponse <br/>
> create_team(_api::TeamsApi, response_stream::Channel, create_team_request::CreateTeamRequest; _mediaType=nothing) -> Channel{ Team }, OpenAPI.Clients.ApiResponse

Create a team

Create a new team on the system. ##### Permissions Must be authenticated and have the `create_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**create_team_request** | [**CreateTeamRequest**](CreateTeamRequest.md)| Team that is to be created | 

### Return type

[**Team**](Team.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_all_teams**
> get_all_teams(_api::TeamsApi; page=nothing, per_page=nothing, include_total_count=nothing, exclude_policy_constrained=nothing, _mediaType=nothing) -> Vector{Team}, OpenAPI.Clients.ApiResponse <br/>
> get_all_teams(_api::TeamsApi, response_stream::Channel; page=nothing, per_page=nothing, include_total_count=nothing, exclude_policy_constrained=nothing, _mediaType=nothing) -> Channel{ Vector{Team} }, OpenAPI.Clients.ApiResponse

Get teams

For regular users only returns open teams. Users with the \"manage_system\" permission will return teams regardless of type. The result is based on query string parameters - page and per_page. ##### Permissions Must be authenticated. \"manage_system\" permission is required to show all teams. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of teams per page. | [default to 60]
 **include_total_count** | **Bool**| Appends a total count of returned teams inside the response object - ex: &#x60;{ \&quot;teams\&quot;: [], \&quot;total_count\&quot; : 0 }&#x60;.       | [default to false]
 **exclude_policy_constrained** | **Bool**| If set to true, teams which are part of a data retention policy will be excluded. The &#x60;sysconsole_read_compliance&#x60; permission is required to use this parameter. __Minimum server version__: 5.35 | [default to false]

### Return type

[**Vector{Team}**](Team.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_team**
> get_team(_api::TeamsApi, team_id::String; _mediaType=nothing) -> Team, OpenAPI.Clients.ApiResponse <br/>
> get_team(_api::TeamsApi, response_stream::Channel, team_id::String; _mediaType=nothing) -> Channel{ Team }, OpenAPI.Clients.ApiResponse

Get a team

Get a team on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]

### Return type

[**Team**](Team.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_team_by_name**
> get_team_by_name(_api::TeamsApi, name::String; _mediaType=nothing) -> Team, OpenAPI.Clients.ApiResponse <br/>
> get_team_by_name(_api::TeamsApi, response_stream::Channel, name::String; _mediaType=nothing) -> Channel{ Team }, OpenAPI.Clients.ApiResponse

Get a team by name

Get a team based on provided name string ##### Permissions Must be authenticated, team type is open and have the `view_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**name** | **String**| Team Name | [default to nothing]

### Return type

[**Team**](Team.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_team_icon**
> get_team_icon(_api::TeamsApi, team_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_team_icon(_api::TeamsApi, response_stream::Channel, team_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Get the team icon

Get the team icon of the team.  __Minimum server version__: 4.9  ##### Permissions User must be authenticated. In addition, team must be open or the user must have the `view_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_team_invite_info**
> get_team_invite_info(_api::TeamsApi, invite_id::String; _mediaType=nothing) -> GetTeamInviteInfo200Response, OpenAPI.Clients.ApiResponse <br/>
> get_team_invite_info(_api::TeamsApi, response_stream::Channel, invite_id::String; _mediaType=nothing) -> Channel{ GetTeamInviteInfo200Response }, OpenAPI.Clients.ApiResponse

Get invite info for a team

Get the `name`, `display_name`, `description` and `id` for a team from the invite id.  __Minimum server version__: 4.0  ##### Permissions No authentication required. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**invite_id** | **String**| Invite id for a team | [default to nothing]

### Return type

[**GetTeamInviteInfo200Response**](GetTeamInviteInfo200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_team_member**
> get_team_member(_api::TeamsApi, team_id::String, user_id::String; _mediaType=nothing) -> TeamMember, OpenAPI.Clients.ApiResponse <br/>
> get_team_member(_api::TeamsApi, response_stream::Channel, team_id::String, user_id::String; _mediaType=nothing) -> Channel{ TeamMember }, OpenAPI.Clients.ApiResponse

Get a team member

Get a team member on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**TeamMember**](TeamMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_team_members**
> get_team_members(_api::TeamsApi, team_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{TeamMember}, OpenAPI.Clients.ApiResponse <br/>
> get_team_members(_api::TeamsApi, response_stream::Channel, team_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{TeamMember} }, OpenAPI.Clients.ApiResponse

Get team members

Get a page team members list based on query string parameters - team id, page and per page. ##### Permissions Must be authenticated and have the `view_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of users per page. | [default to 60]

### Return type

[**Vector{TeamMember}**](TeamMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_team_members_by_ids**
> get_team_members_by_ids(_api::TeamsApi, team_id::String, request_body::Vector{String}; _mediaType=nothing) -> Vector{TeamMember}, OpenAPI.Clients.ApiResponse <br/>
> get_team_members_by_ids(_api::TeamsApi, response_stream::Channel, team_id::String, request_body::Vector{String}; _mediaType=nothing) -> Channel{ Vector{TeamMember} }, OpenAPI.Clients.ApiResponse

Get team members by ids

Get a list of team members based on a provided array of user ids. ##### Permissions Must have `view_team` permission for the team. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**request_body** | [**Vector{String}**](String.md)| List of user ids | 

### Return type

[**Vector{TeamMember}**](TeamMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_team_members_for_user**
> get_team_members_for_user(_api::TeamsApi, user_id::String; _mediaType=nothing) -> Vector{TeamMember}, OpenAPI.Clients.ApiResponse <br/>
> get_team_members_for_user(_api::TeamsApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ Vector{TeamMember} }, OpenAPI.Clients.ApiResponse

Get team members for a user

Get a list of team members for a user. Useful for getting the ids of teams the user is on and the roles they have in those teams. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**Vector{TeamMember}**](TeamMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_team_stats**
> get_team_stats(_api::TeamsApi, team_id::String; _mediaType=nothing) -> TeamStats, OpenAPI.Clients.ApiResponse <br/>
> get_team_stats(_api::TeamsApi, response_stream::Channel, team_id::String; _mediaType=nothing) -> Channel{ TeamStats }, OpenAPI.Clients.ApiResponse

Get a team stats

Get a team stats on the system. ##### Permissions Must be authenticated and have the `view_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]

### Return type

[**TeamStats**](TeamStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_team_unread**
> get_team_unread(_api::TeamsApi, user_id::String, team_id::String; _mediaType=nothing) -> TeamUnread, OpenAPI.Clients.ApiResponse <br/>
> get_team_unread(_api::TeamsApi, response_stream::Channel, user_id::String, team_id::String; _mediaType=nothing) -> Channel{ TeamUnread }, OpenAPI.Clients.ApiResponse

Get unreads for a team

Get the unread mention and message counts for a team for the specified user. ##### Permissions Must be the user or have `edit_other_users` permission and have `view_team` permission for the team. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**team_id** | **String**| Team GUID | [default to nothing]

### Return type

[**TeamUnread**](TeamUnread.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_teams_for_user**
> get_teams_for_user(_api::TeamsApi, user_id::String; _mediaType=nothing) -> Vector{Team}, OpenAPI.Clients.ApiResponse <br/>
> get_teams_for_user(_api::TeamsApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ Vector{Team} }, OpenAPI.Clients.ApiResponse

Get a user's teams

Get a list of teams that a user is on. ##### Permissions Must be authenticated as the user or have the `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**Vector{Team}**](Team.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_teams_unread_for_user**
> get_teams_unread_for_user(_api::TeamsApi, user_id::String, exclude_team::String; include_collapsed_threads=nothing, _mediaType=nothing) -> Vector{TeamUnread}, OpenAPI.Clients.ApiResponse <br/>
> get_teams_unread_for_user(_api::TeamsApi, response_stream::Channel, user_id::String, exclude_team::String; include_collapsed_threads=nothing, _mediaType=nothing) -> Channel{ Vector{TeamUnread} }, OpenAPI.Clients.ApiResponse

Get team unreads for a user

Get the count for unread messages and mentions in the teams the user is a member of. ##### Permissions Must be logged in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**exclude_team** | **String**| Optional team id to be excluded from the results | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_collapsed_threads** | **Bool**| Boolean to determine whether the collapsed threads should be included or not | [default to false]

### Return type

[**Vector{TeamUnread}**](TeamUnread.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **import_team**
> import_team(_api::TeamsApi, team_id::String, file::String, filesize::Int64, import_from::String; _mediaType=nothing) -> ImportTeam200Response, OpenAPI.Clients.ApiResponse <br/>
> import_team(_api::TeamsApi, response_stream::Channel, team_id::String, file::String, filesize::Int64, import_from::String; _mediaType=nothing) -> Channel{ ImportTeam200Response }, OpenAPI.Clients.ApiResponse

Import a Team from other application

Import a team into a existing team. Import users, channels, posts, hooks. ##### Permissions Must have `permission_import_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**file** | **String****String**| A file to be uploaded in zip format. | [default to nothing]
**filesize** | **Int64**| The size of the zip file to be imported. | [default to nothing]
**import_from** | **String**| String that defines from which application the team was exported to be imported into Mattermost. | [default to nothing]

### Return type

[**ImportTeam200Response**](ImportTeam200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **invalidate_email_invites**
> invalidate_email_invites(_api::TeamsApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> invalidate_email_invites(_api::TeamsApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Invalidate active email invitations

Invalidate active email invitations that have not been accepted by the user. ##### Permissions Must have `sysconsole_write_authentication` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **invite_guests_to_team**
> invite_guests_to_team(_api::TeamsApi, team_id::String, invite_guests_to_team_request::InviteGuestsToTeamRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> invite_guests_to_team(_api::TeamsApi, response_stream::Channel, team_id::String, invite_guests_to_team_request::InviteGuestsToTeamRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Invite guests to the team by email

Invite guests to existing team channels usign the user's email.  The number of emails that can be sent is rate limited to 20 per hour with a burst of 20 emails. If the rate limit exceeds, the error message contains details on when to retry and when the timer will be reset.  __Minimum server version__: 5.16  ##### Permissions Must have `invite_guest` permission for the team. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**invite_guests_to_team_request** | [**InviteGuestsToTeamRequest**](InviteGuestsToTeamRequest.md)| Guests invite information | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **invite_users_to_team**
> invite_users_to_team(_api::TeamsApi, team_id::String, request_body::Vector{String}; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> invite_users_to_team(_api::TeamsApi, response_stream::Channel, team_id::String, request_body::Vector{String}; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Invite users to the team by email

Invite users to the existing team using the user's email.  The number of emails that can be sent is rate limited to 20 per hour with a burst of 20 emails. If the rate limit exceeds, the error message contains details on when to retry and when the timer will be reset. ##### Permissions Must have `invite_user` and `add_user_to_team` permissions for the team. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**request_body** | [**Vector{String}**](String.md)| List of user&#39;s email | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **patch_team**
> patch_team(_api::TeamsApi, team_id::String, patch_team_request::PatchTeamRequest; _mediaType=nothing) -> Team, OpenAPI.Clients.ApiResponse <br/>
> patch_team(_api::TeamsApi, response_stream::Channel, team_id::String, patch_team_request::PatchTeamRequest; _mediaType=nothing) -> Channel{ Team }, OpenAPI.Clients.ApiResponse

Patch a team

Partially update a team by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have the `manage_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**patch_team_request** | [**PatchTeamRequest**](PatchTeamRequest.md)| Team object that is to be updated | 

### Return type

[**Team**](Team.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **regenerate_team_invite_id**
> regenerate_team_invite_id(_api::TeamsApi, team_id::String; _mediaType=nothing) -> Team, OpenAPI.Clients.ApiResponse <br/>
> regenerate_team_invite_id(_api::TeamsApi, response_stream::Channel, team_id::String; _mediaType=nothing) -> Channel{ Team }, OpenAPI.Clients.ApiResponse

Regenerate the Invite ID from a Team

Regenerates the invite ID used in invite links of a team ##### Permissions Must be authenticated and have the `manage_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]

### Return type

[**Team**](Team.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **remove_team_icon**
> remove_team_icon(_api::TeamsApi, team_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> remove_team_icon(_api::TeamsApi, response_stream::Channel, team_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Remove the team icon

Remove the team icon for the team.  __Minimum server version__: 4.10  ##### Permissions Must be authenticated and have the `manage_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **remove_team_member**
> remove_team_member(_api::TeamsApi, team_id::String, user_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> remove_team_member(_api::TeamsApi, response_stream::Channel, team_id::String, user_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Remove user from team

Delete the team member object for a user, effectively removing them from a team. ##### Permissions Must be logged in as the user or have the `remove_user_from_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **restore_team**
> restore_team(_api::TeamsApi, team_id::String; _mediaType=nothing) -> Team, OpenAPI.Clients.ApiResponse <br/>
> restore_team(_api::TeamsApi, response_stream::Channel, team_id::String; _mediaType=nothing) -> Channel{ Team }, OpenAPI.Clients.ApiResponse

Restore a team

Restore a team that was previously soft deleted.  __Minimum server version__: 5.24  ##### Permissions Must have the `manage_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]

### Return type

[**Team**](Team.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search_files**
> search_files(_api::TeamsApi, team_id::String, terms::String, is_or_search::Bool; time_zone_offset=nothing, include_deleted_channels=nothing, page=nothing, per_page=nothing, _mediaType=nothing) -> FileInfoList, OpenAPI.Clients.ApiResponse <br/>
> search_files(_api::TeamsApi, response_stream::Channel, team_id::String, terms::String, is_or_search::Bool; time_zone_offset=nothing, include_deleted_channels=nothing, page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ FileInfoList }, OpenAPI.Clients.ApiResponse

Search files in a team

Search for files in a team based on file name, extention and file content (if file content extraction is enabled and supported for the files). __Minimum server version__: 5.34 ##### Permissions Must be authenticated and have the `view_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**terms** | **String**| The search terms as inputed by the user. To search for files from a user include &#x60;from:someusername&#x60;, using a user&#39;s username. To search in a specific channel include &#x60;in:somechannel&#x60;, using the channel name (not the display name). To search for specific extensions included &#x60;ext:extension&#x60;. | [default to nothing]
**is_or_search** | **Bool**| Set to true if an Or search should be performed vs an And search. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_zone_offset** | **Int64**| Offset from UTC of user timezone for date searches. | [default to 0]
 **include_deleted_channels** | **Bool**| Set to true if deleted channels should be included in the search. (archived channels) | [default to nothing]
 **page** | **Int64**| The page to select. (Only works with Elasticsearch) | [default to 0]
 **per_page** | **Int64**| The number of posts per page. (Only works with Elasticsearch) | [default to 60]

### Return type

[**FileInfoList**](FileInfoList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search_teams**
> search_teams(_api::TeamsApi, search_teams_request::SearchTeamsRequest; _mediaType=nothing) -> SearchTeams200Response, OpenAPI.Clients.ApiResponse <br/>
> search_teams(_api::TeamsApi, response_stream::Channel, search_teams_request::SearchTeamsRequest; _mediaType=nothing) -> Channel{ SearchTeams200Response }, OpenAPI.Clients.ApiResponse

Search teams

Search teams based on search term and options provided in the request body.  ##### Permissions Logged in user only shows open teams Logged in user with \"manage_system\" permission shows all teams 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**search_teams_request** | [**SearchTeamsRequest**](SearchTeamsRequest.md)| Search criteria | 

### Return type

[**SearchTeams200Response**](SearchTeams200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **set_team_icon**
> set_team_icon(_api::TeamsApi, team_id::String, image::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> set_team_icon(_api::TeamsApi, response_stream::Channel, team_id::String, image::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Sets the team icon

Sets the team icon for the team.  __Minimum server version__: 4.9  ##### Permissions Must be authenticated and have the `manage_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**image** | **String****String**| The image to be uploaded | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **soft_delete_team**
> soft_delete_team(_api::TeamsApi, team_id::String; permanent=nothing, _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> soft_delete_team(_api::TeamsApi, response_stream::Channel, team_id::String; permanent=nothing, _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Delete a team

Soft deletes a team, by marking the team as deleted in the database. Soft deleted teams will not be accessible in the user interface.  Optionally use the permanent query parameter to hard delete the team for compliance reasons. As of server version 5.0, to use this feature `ServiceSettings.EnableAPITeamDeletion` must be set to `true` in the server's configuration. ##### Permissions Must have the `manage_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permanent** | **Bool**| Permanently delete the team, to be used for compliance reasons only. As of server version 5.0, &#x60;ServiceSettings.EnableAPITeamDeletion&#x60; must be set to &#x60;true&#x60; in the server&#39;s configuration. | [default to false]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **team_exists**
> team_exists(_api::TeamsApi, name::String; _mediaType=nothing) -> TeamExists, OpenAPI.Clients.ApiResponse <br/>
> team_exists(_api::TeamsApi, response_stream::Channel, name::String; _mediaType=nothing) -> Channel{ TeamExists }, OpenAPI.Clients.ApiResponse

Check if team exists

Check if the team exists based on a team name. ##### Permissions Must be authenticated. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**name** | **String**| Team Name | [default to nothing]

### Return type

[**TeamExists**](TeamExists.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **team_members_minus_group_members**
> team_members_minus_group_members(_api::TeamsApi, team_id::String, group_ids::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> team_members_minus_group_members(_api::TeamsApi, response_stream::Channel, team_id::String, group_ids::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Team members minus group members.

Get the set of users who are members of the team minus the set of users who are members of the given groups. Each user object contains an array of group objects representing the group memberships for that user. Each user object contains the boolean fields `scheme_guest`, `scheme_user`, and `scheme_admin` representing the roles that user has for the given team.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.14 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
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

# **update_team**
> update_team(_api::TeamsApi, team_id::String, update_team_request::UpdateTeamRequest; _mediaType=nothing) -> Team, OpenAPI.Clients.ApiResponse <br/>
> update_team(_api::TeamsApi, response_stream::Channel, team_id::String, update_team_request::UpdateTeamRequest; _mediaType=nothing) -> Channel{ Team }, OpenAPI.Clients.ApiResponse

Update a team

Update a team by providing the team object. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have the `manage_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**update_team_request** | [**UpdateTeamRequest**](UpdateTeamRequest.md)| Team to update | 

### Return type

[**Team**](Team.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_team_member_roles**
> update_team_member_roles(_api::TeamsApi, team_id::String, user_id::String, update_user_roles_request::UpdateUserRolesRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> update_team_member_roles(_api::TeamsApi, response_stream::Channel, team_id::String, user_id::String, update_user_roles_request::UpdateUserRolesRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Update a team member roles

Update a team member roles. Valid team roles are \"team_user\", \"team_admin\" or both of them. Overwrites any previously assigned team roles. ##### Permissions Must be authenticated and have the `manage_team_roles` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**user_id** | **String**| User GUID | [default to nothing]
**update_user_roles_request** | [**UpdateUserRolesRequest**](UpdateUserRolesRequest.md)| Space-delimited team roles to assign to the user | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_team_member_scheme_roles**
> update_team_member_scheme_roles(_api::TeamsApi, team_id::String, user_id::String, update_team_member_scheme_roles_request::UpdateTeamMemberSchemeRolesRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> update_team_member_scheme_roles(_api::TeamsApi, response_stream::Channel, team_id::String, user_id::String, update_team_member_scheme_roles_request::UpdateTeamMemberSchemeRolesRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Update the scheme-derived roles of a team member.

Update a team member's scheme_admin/scheme_user properties. Typically this should either be `scheme_admin=false, scheme_user=true` for ordinary team member, or `scheme_admin=true, scheme_user=true` for a team admin.  __Minimum server version__: 5.0  ##### Permissions Must be authenticated and have the `manage_team_roles` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
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

# **update_team_privacy**
> update_team_privacy(_api::TeamsApi, team_id::String, update_team_privacy_request::UpdateTeamPrivacyRequest; _mediaType=nothing) -> Team, OpenAPI.Clients.ApiResponse <br/>
> update_team_privacy(_api::TeamsApi, response_stream::Channel, team_id::String, update_team_privacy_request::UpdateTeamPrivacyRequest; _mediaType=nothing) -> Channel{ Team }, OpenAPI.Clients.ApiResponse

Update teams's privacy

Updates team's privacy allowing changing a team from Public (open) to Private (invitation only) and back.  __Minimum server version__: 5.24  ##### Permissions `manage_team` permission for the team of the team. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**update_team_privacy_request** | [**UpdateTeamPrivacyRequest**](UpdateTeamPrivacyRequest.md)|  | 

### Return type

[**Team**](Team.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_team_scheme**
> update_team_scheme(_api::TeamsApi, team_id::String, update_team_scheme_request::UpdateTeamSchemeRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> update_team_scheme(_api::TeamsApi, response_stream::Channel, team_id::String, update_team_scheme_request::UpdateTeamSchemeRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Set a team's scheme

Set a team's scheme, more specifically sets the scheme_id value of a team record.  ##### Permissions Must have `manage_system` permission.  __Minimum server version__: 5.0 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TeamsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**update_team_scheme_request** | [**UpdateTeamSchemeRequest**](UpdateTeamSchemeRequest.md)| Scheme GUID | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

