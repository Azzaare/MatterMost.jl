# UsersApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attach_device_id**](UsersApi.md#attach_device_id) | **PUT** /users/sessions/device | Attach mobile device
[**autocomplete_users**](UsersApi.md#autocomplete_users) | **GET** /users/autocomplete | Autocomplete users
[**check_user_mfa**](UsersApi.md#check_user_mfa) | **POST** /users/mfa | Check MFA
[**convert_bot_to_user**](UsersApi.md#convert_bot_to_user) | **POST** /bots/{bot_user_id}/convert_to_user | Convert a bot into a user
[**convert_user_to_bot**](UsersApi.md#convert_user_to_bot) | **POST** /users/{user_id}/convert_to_bot | Convert a user into a bot
[**create_user**](UsersApi.md#create_user) | **POST** /users | Create a user
[**create_user_access_token**](UsersApi.md#create_user_access_token) | **POST** /users/{user_id}/tokens | Create a user access token
[**delete_user**](UsersApi.md#delete_user) | **DELETE** /users/{user_id} | Deactivate a user account.
[**demote_user_to_guest**](UsersApi.md#demote_user_to_guest) | **POST** /users/{user_id}/demote | Demote a user to a guest
[**disable_user_access_token**](UsersApi.md#disable_user_access_token) | **POST** /users/tokens/disable | Disable personal access token
[**enable_user_access_token**](UsersApi.md#enable_user_access_token) | **POST** /users/tokens/enable | Enable personal access token
[**generate_mfa_secret**](UsersApi.md#generate_mfa_secret) | **POST** /users/{user_id}/mfa/generate | Generate MFA secret
[**get_channel_members_with_team_data_for_user**](UsersApi.md#get_channel_members_with_team_data_for_user) | **GET** /users/{user_id}/channel_members | Get all channel members from all teams for a user
[**get_default_profile_image**](UsersApi.md#get_default_profile_image) | **GET** /users/{user_id}/image/default | Return user&#39;s default (generated) profile image
[**get_known_users**](UsersApi.md#get_known_users) | **GET** /users/known | Get user IDs of known users
[**get_profile_image**](UsersApi.md#get_profile_image) | **GET** /users/{user_id}/image | Get user&#39;s profile image
[**get_sessions**](UsersApi.md#get_sessions) | **GET** /users/{user_id}/sessions | Get user&#39;s sessions
[**get_total_users_stats**](UsersApi.md#get_total_users_stats) | **GET** /users/stats | Get total count of users in the system
[**get_total_users_stats_filtered**](UsersApi.md#get_total_users_stats_filtered) | **GET** /users/stats/filtered | Get total count of users in the system matching the specified filters
[**get_uploads_for_user**](UsersApi.md#get_uploads_for_user) | **GET** /users/{user_id}/uploads | Get uploads for a user
[**get_user**](UsersApi.md#get_user) | **GET** /users/{user_id} | Get a user
[**get_user_access_token**](UsersApi.md#get_user_access_token) | **GET** /users/tokens/{token_id} | Get a user access token
[**get_user_access_tokens**](UsersApi.md#get_user_access_tokens) | **GET** /users/tokens | Get user access tokens
[**get_user_access_tokens_for_user**](UsersApi.md#get_user_access_tokens_for_user) | **GET** /users/{user_id}/tokens | Get user access tokens
[**get_user_audits**](UsersApi.md#get_user_audits) | **GET** /users/{user_id}/audits | Get user&#39;s audits
[**get_user_by_email**](UsersApi.md#get_user_by_email) | **GET** /users/email/{email} | Get a user by email
[**get_user_by_username**](UsersApi.md#get_user_by_username) | **GET** /users/username/{username} | Get a user by username
[**get_user_terms_of_service**](UsersApi.md#get_user_terms_of_service) | **GET** /users/{user_id}/terms_of_service | Fetches user&#39;s latest terms of service action if the latest action was for acceptance.
[**get_users**](UsersApi.md#get_users) | **GET** /users | Get users
[**get_users_by_group_channel_ids**](UsersApi.md#get_users_by_group_channel_ids) | **POST** /users/group_channels | Get users by group channels ids
[**get_users_by_ids**](UsersApi.md#get_users_by_ids) | **POST** /users/ids | Get users by ids
[**get_users_by_usernames**](UsersApi.md#get_users_by_usernames) | **POST** /users/usernames | Get users by usernames
[**login**](UsersApi.md#login) | **POST** /users/login | Login to Mattermost server
[**login_by_cws_token**](UsersApi.md#login_by_cws_token) | **POST** /users/login/cws | Auto-Login to Mattermost server using CWS token
[**logout**](UsersApi.md#logout) | **POST** /users/logout | Logout from the Mattermost server
[**migrate_auth_to_ldap**](UsersApi.md#migrate_auth_to_ldap) | **POST** /users/migrate_auth/ldap | Migrate user accounts authentication type to LDAP.
[**migrate_auth_to_saml**](UsersApi.md#migrate_auth_to_saml) | **POST** /users/migrate_auth/saml | Migrate user accounts authentication type to SAML.
[**patch_user**](UsersApi.md#patch_user) | **PUT** /users/{user_id}/patch | Patch a user
[**permanent_delete_all_users**](UsersApi.md#permanent_delete_all_users) | **DELETE** /users | Permanent delete all users
[**promote_guest_to_user**](UsersApi.md#promote_guest_to_user) | **POST** /users/{user_id}/promote | Promote a guest to user
[**publish_user_typing**](UsersApi.md#publish_user_typing) | **POST** /users/{user_id}/typing | Publish a user typing websocket event.
[**register_terms_of_service_action**](UsersApi.md#register_terms_of_service_action) | **POST** /users/{user_id}/terms_of_service | Records user action when they accept or decline custom terms of service
[**reset_password**](UsersApi.md#reset_password) | **POST** /users/password/reset | Reset password
[**revoke_all_sessions**](UsersApi.md#revoke_all_sessions) | **POST** /users/{user_id}/sessions/revoke/all | Revoke all active sessions for a user
[**revoke_session**](UsersApi.md#revoke_session) | **POST** /users/{user_id}/sessions/revoke | Revoke a user session
[**revoke_sessions_from_all_users**](UsersApi.md#revoke_sessions_from_all_users) | **POST** /users/sessions/revoke/all | Revoke all sessions from all users.
[**revoke_user_access_token**](UsersApi.md#revoke_user_access_token) | **POST** /users/tokens/revoke | Revoke a user access token
[**search_user_access_tokens**](UsersApi.md#search_user_access_tokens) | **POST** /users/tokens/search | Search tokens
[**search_users**](UsersApi.md#search_users) | **POST** /users/search | Search users
[**send_password_reset_email**](UsersApi.md#send_password_reset_email) | **POST** /users/password/reset/send | Send password reset email
[**send_verification_email**](UsersApi.md#send_verification_email) | **POST** /users/email/verify/send | Send verification email
[**set_default_profile_image**](UsersApi.md#set_default_profile_image) | **DELETE** /users/{user_id}/image | Delete user&#39;s profile image
[**set_profile_image**](UsersApi.md#set_profile_image) | **POST** /users/{user_id}/image | Set user&#39;s profile image
[**switch_account_type**](UsersApi.md#switch_account_type) | **POST** /users/login/switch | Switch login method
[**update_user**](UsersApi.md#update_user) | **PUT** /users/{user_id} | Update a user
[**update_user_active**](UsersApi.md#update_user_active) | **PUT** /users/{user_id}/active | Update user active status
[**update_user_auth**](UsersApi.md#update_user_auth) | **PUT** /users/{user_id}/auth | Update a user&#39;s authentication method
[**update_user_mfa**](UsersApi.md#update_user_mfa) | **PUT** /users/{user_id}/mfa | Update a user&#39;s MFA
[**update_user_password**](UsersApi.md#update_user_password) | **PUT** /users/{user_id}/password | Update a user&#39;s password
[**update_user_roles**](UsersApi.md#update_user_roles) | **PUT** /users/{user_id}/roles | Update a user&#39;s roles
[**verify_user_email**](UsersApi.md#verify_user_email) | **POST** /users/email/verify | Verify user email
[**verify_user_email_without_token**](UsersApi.md#verify_user_email_without_token) | **POST** /users/{user_id}/email/verify/member | Verify user email by ID


# **attach_device_id**
> attach_device_id(_api::UsersApi, attach_device_id_request::AttachDeviceIdRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> attach_device_id(_api::UsersApi, response_stream::Channel, attach_device_id_request::AttachDeviceIdRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Attach mobile device

Attach a mobile device id to the currently logged in session. This will enable push notifications for a user, if configured by the server. ##### Permissions Must be authenticated. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**attach_device_id_request** | [**AttachDeviceIdRequest**](AttachDeviceIdRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **autocomplete_users**
> autocomplete_users(_api::UsersApi, name::String; team_id=nothing, channel_id=nothing, limit=nothing, _mediaType=nothing) -> UserAutocomplete, OpenAPI.Clients.ApiResponse <br/>
> autocomplete_users(_api::UsersApi, response_stream::Channel, name::String; team_id=nothing, channel_id=nothing, limit=nothing, _mediaType=nothing) -> Channel{ UserAutocomplete }, OpenAPI.Clients.ApiResponse

Autocomplete users

Get a list of users for the purpose of autocompleting based on the provided search term. Specify a combination of `team_id` and `channel_id` to filter results further. ##### Permissions Requires an active session and `view_team` and `read_channel` on any teams or channels used to filter the results further. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**name** | **String**| Username, nickname first name or last name | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| Team ID | [default to nothing]
 **channel_id** | **String**| Channel ID | [default to nothing]
 **limit** | **Int64**| The maximum number of users to return in each subresult  __Available as of server version 5.6. Defaults to &#x60;100&#x60; if not provided or on an earlier server version.__  | [default to 100]

### Return type

[**UserAutocomplete**](UserAutocomplete.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **check_user_mfa**
> check_user_mfa(_api::UsersApi, check_user_mfa_request::CheckUserMfaRequest; _mediaType=nothing) -> CheckUserMfa200Response, OpenAPI.Clients.ApiResponse <br/>
> check_user_mfa(_api::UsersApi, response_stream::Channel, check_user_mfa_request::CheckUserMfaRequest; _mediaType=nothing) -> Channel{ CheckUserMfa200Response }, OpenAPI.Clients.ApiResponse

Check MFA

Check if a user has multi-factor authentication active on their account by providing a login id. Used to check whether an MFA code needs to be provided when logging in. ##### Permissions No permission required. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**check_user_mfa_request** | [**CheckUserMfaRequest**](CheckUserMfaRequest.md)|  | 

### Return type

[**CheckUserMfa200Response**](CheckUserMfa200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **convert_bot_to_user**
> convert_bot_to_user(_api::UsersApi, bot_user_id::String, convert_bot_to_user_request::ConvertBotToUserRequest; set_system_admin=nothing, _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> convert_bot_to_user(_api::UsersApi, response_stream::Channel, bot_user_id::String, convert_bot_to_user_request::ConvertBotToUserRequest; set_system_admin=nothing, _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Convert a bot into a user

Convert a bot into a user.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**bot_user_id** | **String**| Bot user ID | [default to nothing]
**convert_bot_to_user_request** | [**ConvertBotToUserRequest**](ConvertBotToUserRequest.md)| Data to be used in the user creation | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **set_system_admin** | **Bool**| Whether to give the user the system admin role. | [default to false]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **convert_user_to_bot**
> convert_user_to_bot(_api::UsersApi, user_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> convert_user_to_bot(_api::UsersApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Convert a user into a bot

Convert a user into a bot.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_user**
> create_user(_api::UsersApi, create_user_request::CreateUserRequest; t=nothing, iid=nothing, _mediaType=nothing) -> User, OpenAPI.Clients.ApiResponse <br/>
> create_user(_api::UsersApi, response_stream::Channel, create_user_request::CreateUserRequest; t=nothing, iid=nothing, _mediaType=nothing) -> Channel{ User }, OpenAPI.Clients.ApiResponse

Create a user

Create a new user on the system. Password is required for email login. For other authentication types such as LDAP or SAML, auth_data and auth_service fields are required. ##### Permissions No permission required for creating email/username accounts on an open server. Auth Token is required for other authentication types such as LDAP or SAML. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**create_user_request** | [**CreateUserRequest**](CreateUserRequest.md)| User object to be created | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **t** | **String**| Token id from an email invitation | [default to nothing]
 **iid** | **String**| Token id from an invitation link | [default to nothing]

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_user_access_token**
> create_user_access_token(_api::UsersApi, user_id::String, create_user_access_token_request::CreateUserAccessTokenRequest; _mediaType=nothing) -> UserAccessToken, OpenAPI.Clients.ApiResponse <br/>
> create_user_access_token(_api::UsersApi, response_stream::Channel, user_id::String, create_user_access_token_request::CreateUserAccessTokenRequest; _mediaType=nothing) -> Channel{ UserAccessToken }, OpenAPI.Clients.ApiResponse

Create a user access token

Generate a user access token that can be used to authenticate with the Mattermost REST API.  __Minimum server version__: 4.1  ##### Permissions Must have `create_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**create_user_access_token_request** | [**CreateUserAccessTokenRequest**](CreateUserAccessTokenRequest.md)|  | 

### Return type

[**UserAccessToken**](UserAccessToken.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_user**
> delete_user(_api::UsersApi, user_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_user(_api::UsersApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Deactivate a user account.

Deactivates the user and revokes all its sessions by archiving its user object.  As of server version 5.28, optionally use the `permanent=true` query parameter to permanently delete the user for compliance reasons. To use this feature `ServiceSettings.EnableAPIUserDeletion` must be set to `true` in the server's configuration. ##### Permissions Must be logged in as the user being deactivated or have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **demote_user_to_guest**
> demote_user_to_guest(_api::UsersApi, user_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> demote_user_to_guest(_api::UsersApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Demote a user to a guest

Convert a regular user into a guest. This will convert the user into a guest for the whole system while retaining their existing team and channel memberships.  __Minimum server version__: 5.16  ##### Permissions Must be logged in as the user or have the `demote_to_guest` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **disable_user_access_token**
> disable_user_access_token(_api::UsersApi, disable_user_access_token_request::DisableUserAccessTokenRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> disable_user_access_token(_api::UsersApi, response_stream::Channel, disable_user_access_token_request::DisableUserAccessTokenRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Disable personal access token

Disable a personal access token and delete any sessions using the token. The token can be re-enabled using `/users/tokens/enable`.  __Minimum server version__: 4.4  ##### Permissions Must have `revoke_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**disable_user_access_token_request** | [**DisableUserAccessTokenRequest**](DisableUserAccessTokenRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **enable_user_access_token**
> enable_user_access_token(_api::UsersApi, enable_user_access_token_request::EnableUserAccessTokenRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> enable_user_access_token(_api::UsersApi, response_stream::Channel, enable_user_access_token_request::EnableUserAccessTokenRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Enable personal access token

Re-enable a personal access token that has been disabled.  __Minimum server version__: 4.4  ##### Permissions Must have `create_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**enable_user_access_token_request** | [**EnableUserAccessTokenRequest**](EnableUserAccessTokenRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **generate_mfa_secret**
> generate_mfa_secret(_api::UsersApi, user_id::String; _mediaType=nothing) -> GenerateMfaSecret200Response, OpenAPI.Clients.ApiResponse <br/>
> generate_mfa_secret(_api::UsersApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ GenerateMfaSecret200Response }, OpenAPI.Clients.ApiResponse

Generate MFA secret

Generates an multi-factor authentication secret for a user and returns it as a string and as base64 encoded QR code image. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**GenerateMfaSecret200Response**](GenerateMfaSecret200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channel_members_with_team_data_for_user**
> get_channel_members_with_team_data_for_user(_api::UsersApi, user_id::String; page=nothing, page_size=nothing, _mediaType=nothing) -> Vector{ChannelMemberWithTeamData}, OpenAPI.Clients.ApiResponse <br/>
> get_channel_members_with_team_data_for_user(_api::UsersApi, response_stream::Channel, user_id::String; page=nothing, page_size=nothing, _mediaType=nothing) -> Channel{ Vector{ChannelMemberWithTeamData} }, OpenAPI.Clients.ApiResponse

Get all channel members from all teams for a user

Get all channel members from all teams for a user.  __Minimum server version__: 6.2.0  ##### Permissions Logged in as the user, or have `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| The ID of the user. This can also be \&quot;me\&quot; which will point to the current user. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Page specifies which part of the results to return, by PageSize. | [default to nothing]
 **page_size** | **Int64**| PageSize specifies the size of the returned chunk of results. | [default to nothing]

### Return type

[**Vector{ChannelMemberWithTeamData}**](ChannelMemberWithTeamData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_default_profile_image**
> get_default_profile_image(_api::UsersApi, user_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_default_profile_image(_api::UsersApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Return user's default (generated) profile image

Returns the default (generated) user profile image based on user_id string parameter. ##### Permissions Must be logged in. __Minimum server version__: 5.5 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_known_users**
> get_known_users(_api::UsersApi; _mediaType=nothing) -> Any, OpenAPI.Clients.ApiResponse <br/>
> get_known_users(_api::UsersApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Any }, OpenAPI.Clients.ApiResponse

Get user IDs of known users

Get the list of user IDs of users with any direct relationship with a user. That means any user sharing any channel, including direct and group channels. ##### Permissions Must be authenticated.  __Minimum server version__: 5.23 

### Required Parameters
This endpoint does not need any parameter.

### Return type

**Any**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_profile_image**
> get_profile_image(_api::UsersApi, user_id::String; update_time=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_profile_image(_api::UsersApi, response_stream::Channel, user_id::String; update_time=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Get user's profile image

Get a user's profile image based on user_id string parameter. ##### Permissions Must be logged in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_time** | **Float64**| Not used by the server. Clients can pass in the last picture update time of the user to potentially take advantage of caching | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_sessions**
> get_sessions(_api::UsersApi, user_id::String; _mediaType=nothing) -> Vector{Session}, OpenAPI.Clients.ApiResponse <br/>
> get_sessions(_api::UsersApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ Vector{Session} }, OpenAPI.Clients.ApiResponse

Get user's sessions

Get a list of sessions by providing the user GUID. Sensitive information will be sanitized out. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**Vector{Session}**](Session.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_total_users_stats**
> get_total_users_stats(_api::UsersApi; _mediaType=nothing) -> UsersStats, OpenAPI.Clients.ApiResponse <br/>
> get_total_users_stats(_api::UsersApi, response_stream::Channel; _mediaType=nothing) -> Channel{ UsersStats }, OpenAPI.Clients.ApiResponse

Get total count of users in the system

Get a total count of users in the system. ##### Permissions Must be authenticated. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**UsersStats**](UsersStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_total_users_stats_filtered**
> get_total_users_stats_filtered(_api::UsersApi; in_team=nothing, in_channel=nothing, include_deleted=nothing, include_bots=nothing, roles=nothing, channel_roles=nothing, team_roles=nothing, _mediaType=nothing) -> UsersStats, OpenAPI.Clients.ApiResponse <br/>
> get_total_users_stats_filtered(_api::UsersApi, response_stream::Channel; in_team=nothing, in_channel=nothing, include_deleted=nothing, include_bots=nothing, roles=nothing, channel_roles=nothing, team_roles=nothing, _mediaType=nothing) -> Channel{ UsersStats }, OpenAPI.Clients.ApiResponse

Get total count of users in the system matching the specified filters

Get a count of users in the system matching the specified filters.  __Minimum server version__: 5.26  ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **in_team** | **String**| The ID of the team to get user stats for. | [default to nothing]
 **in_channel** | **String**| The ID of the channel to get user stats for. | [default to nothing]
 **include_deleted** | **Bool**| If deleted accounts should be included in the count. | [default to nothing]
 **include_bots** | **Bool**| If bot accounts should be included in the count. | [default to nothing]
 **roles** | **String**| Comma separated string used to filter users based on any of the specified system roles  Example: &#x60;?roles&#x3D;system_admin,system_user&#x60; will include users that are either system admins or system users  | [default to nothing]
 **channel_roles** | **String**| Comma separated string used to filter users based on any of the specified channel roles, can only be used in conjunction with &#x60;in_channel&#x60;  Example: &#x60;?in_channel&#x3D;4eb6axxw7fg3je5iyasnfudc5y&amp;channel_roles&#x3D;channel_user&#x60; will include users that are only channel users and not admins or guests  | [default to nothing]
 **team_roles** | **String**| Comma separated string used to filter users based on any of the specified team roles, can only be used in conjunction with &#x60;in_team&#x60;  Example: &#x60;?in_team&#x3D;4eb6axxw7fg3je5iyasnfudc5y&amp;team_roles&#x3D;team_user&#x60; will include users that are only team users and not admins or guests  | [default to nothing]

### Return type

[**UsersStats**](UsersStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_uploads_for_user**
> get_uploads_for_user(_api::UsersApi, user_id::String; _mediaType=nothing) -> Vector{UploadSession}, OpenAPI.Clients.ApiResponse <br/>
> get_uploads_for_user(_api::UsersApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ Vector{UploadSession} }, OpenAPI.Clients.ApiResponse

Get uploads for a user

Gets all the upload sessions belonging to a user.  __Minimum server version__: 5.28  ##### Permissions Must be logged in as the user who created the upload sessions. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| The ID of the user. This can also be \&quot;me\&quot; which will point to the current user. | [default to nothing]

### Return type

[**Vector{UploadSession}**](UploadSession.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_user**
> get_user(_api::UsersApi, user_id::String; _mediaType=nothing) -> User, OpenAPI.Clients.ApiResponse <br/>
> get_user(_api::UsersApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ User }, OpenAPI.Clients.ApiResponse

Get a user

Get a user a object. Sensitive information will be sanitized out. ##### Permissions Requires an active session but no other permissions. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID. This can also be \&quot;me\&quot; which will point to the current user. | [default to nothing]

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_user_access_token**
> get_user_access_token(_api::UsersApi, token_id::String; _mediaType=nothing) -> UserAccessTokenSanitized, OpenAPI.Clients.ApiResponse <br/>
> get_user_access_token(_api::UsersApi, response_stream::Channel, token_id::String; _mediaType=nothing) -> Channel{ UserAccessTokenSanitized }, OpenAPI.Clients.ApiResponse

Get a user access token

Get a user access token. Does not include the actual authentication token.  __Minimum server version__: 4.1  ##### Permissions Must have `read_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**token_id** | **String**| User access token GUID | [default to nothing]

### Return type

[**UserAccessTokenSanitized**](UserAccessTokenSanitized.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_user_access_tokens**
> get_user_access_tokens(_api::UsersApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{UserAccessTokenSanitized}, OpenAPI.Clients.ApiResponse <br/>
> get_user_access_tokens(_api::UsersApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{UserAccessTokenSanitized} }, OpenAPI.Clients.ApiResponse

Get user access tokens

Get a page of user access tokens for users on the system. Does not include the actual authentication tokens. Use query parameters for paging.  __Minimum server version__: 4.7  ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of tokens per page. | [default to 60]

### Return type

[**Vector{UserAccessTokenSanitized}**](UserAccessTokenSanitized.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_user_access_tokens_for_user**
> get_user_access_tokens_for_user(_api::UsersApi, user_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{UserAccessTokenSanitized}, OpenAPI.Clients.ApiResponse <br/>
> get_user_access_tokens_for_user(_api::UsersApi, response_stream::Channel, user_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{UserAccessTokenSanitized} }, OpenAPI.Clients.ApiResponse

Get user access tokens

Get a list of user access tokens for a user. Does not include the actual authentication tokens. Use query parameters for paging.  __Minimum server version__: 4.1  ##### Permissions Must have `read_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of tokens per page. | [default to 60]

### Return type

[**Vector{UserAccessTokenSanitized}**](UserAccessTokenSanitized.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_user_audits**
> get_user_audits(_api::UsersApi, user_id::String; _mediaType=nothing) -> Vector{Audit}, OpenAPI.Clients.ApiResponse <br/>
> get_user_audits(_api::UsersApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ Vector{Audit} }, OpenAPI.Clients.ApiResponse

Get user's audits

Get a list of audit by providing the user GUID. ##### Permissions Must be logged in as the user or have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**Vector{Audit}**](Audit.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_user_by_email**
> get_user_by_email(_api::UsersApi, email::String; _mediaType=nothing) -> User, OpenAPI.Clients.ApiResponse <br/>
> get_user_by_email(_api::UsersApi, response_stream::Channel, email::String; _mediaType=nothing) -> Channel{ User }, OpenAPI.Clients.ApiResponse

Get a user by email

Get a user object by providing a user email. Sensitive information will be sanitized out. ##### Permissions Requires an active session and for the current session to be able to view another user's email based on the server's privacy settings. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**email** | **String**| User Email | [default to nothing]

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_user_by_username**
> get_user_by_username(_api::UsersApi, username::String; _mediaType=nothing) -> User, OpenAPI.Clients.ApiResponse <br/>
> get_user_by_username(_api::UsersApi, response_stream::Channel, username::String; _mediaType=nothing) -> Channel{ User }, OpenAPI.Clients.ApiResponse

Get a user by username

Get a user object by providing a username. Sensitive information will be sanitized out. ##### Permissions Requires an active session but no other permissions. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**username** | **String**| Username | [default to nothing]

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_user_terms_of_service**
> get_user_terms_of_service(_api::UsersApi, user_id::String; _mediaType=nothing) -> UserTermsOfService, OpenAPI.Clients.ApiResponse <br/>
> get_user_terms_of_service(_api::UsersApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ UserTermsOfService }, OpenAPI.Clients.ApiResponse

Fetches user's latest terms of service action if the latest action was for acceptance.

Will be deprecated in v6.0 Fetches user's latest terms of service action if the latest action was for acceptance.  __Minimum server version__: 5.6 ##### Permissions Must be logged in as the user being acted on. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**UserTermsOfService**](UserTermsOfService.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_users**
> get_users(_api::UsersApi; page=nothing, per_page=nothing, in_team=nothing, not_in_team=nothing, in_channel=nothing, not_in_channel=nothing, in_group=nothing, group_constrained=nothing, without_team=nothing, active=nothing, inactive=nothing, role=nothing, sort=nothing, roles=nothing, channel_roles=nothing, team_roles=nothing, _mediaType=nothing) -> Vector{User}, OpenAPI.Clients.ApiResponse <br/>
> get_users(_api::UsersApi, response_stream::Channel; page=nothing, per_page=nothing, in_team=nothing, not_in_team=nothing, in_channel=nothing, not_in_channel=nothing, in_group=nothing, group_constrained=nothing, without_team=nothing, active=nothing, inactive=nothing, role=nothing, sort=nothing, roles=nothing, channel_roles=nothing, team_roles=nothing, _mediaType=nothing) -> Channel{ Vector{User} }, OpenAPI.Clients.ApiResponse

Get users

Get a page of a list of users. Based on query string parameters, select users from a team, channel, or select users not in a specific channel.  Since server version 4.0, some basic sorting is available using the `sort` query parameter. Sorting is currently only supported when selecting users on a team. ##### Permissions Requires an active session and (if specified) membership to the channel or team being selected from. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of users per page. There is a maximum limit of 200 users per page. | [default to 60]
 **in_team** | **String**| The ID of the team to get users for. | [default to nothing]
 **not_in_team** | **String**| The ID of the team to exclude users for. Must not be used with \&quot;in_team\&quot; query parameter. | [default to nothing]
 **in_channel** | **String**| The ID of the channel to get users for. | [default to nothing]
 **not_in_channel** | **String**| The ID of the channel to exclude users for. Must be used with \&quot;in_channel\&quot; query parameter. | [default to nothing]
 **in_group** | **String**| The ID of the group to get users for. Must have &#x60;manage_system&#x60; permission. | [default to nothing]
 **group_constrained** | **Bool**| When used with &#x60;not_in_channel&#x60; or &#x60;not_in_team&#x60;, returns only the users that are allowed to join the channel or team based on its group constrains. | [default to nothing]
 **without_team** | **Bool**| Whether or not to list users that are not on any team. This option takes precendence over &#x60;in_team&#x60;, &#x60;in_channel&#x60;, and &#x60;not_in_channel&#x60;. | [default to nothing]
 **active** | **Bool**| Whether or not to list only users that are active. This option cannot be used along with the &#x60;inactive&#x60; option. | [default to nothing]
 **inactive** | **Bool**| Whether or not to list only users that are deactivated. This option cannot be used along with the &#x60;active&#x60; option. | [default to nothing]
 **role** | **String**| Returns users that have this role. | [default to nothing]
 **sort** | **String**| Sort is only available in conjunction with certain options below. The paging parameter is also always available.  ##### &#x60;in_team&#x60; Can be \&quot;\&quot;, \&quot;last_activity_at\&quot; or \&quot;create_at\&quot;. When left blank, sorting is done by username. __Minimum server version__: 4.0 ##### &#x60;in_channel&#x60; Can be \&quot;\&quot;, \&quot;status\&quot;. When left blank, sorting is done by username. &#x60;status&#x60; will sort by User&#39;s current status (Online, Away, DND, Offline), then by Username. __Minimum server version__: 4.7 ##### &#x60;in_group&#x60; Can be \&quot;\&quot;, \&quot;display_name\&quot;. When left blank, sorting is done by username. &#x60;display_name&#x60; will sort alphabetically by user&#39;s display name. __Minimum server version__: 7.7  | [default to nothing]
 **roles** | **String**| Comma separated string used to filter users based on any of the specified system roles  Example: &#x60;?roles&#x3D;system_admin,system_user&#x60; will return users that are either system admins or system users  __Minimum server version__: 5.26  | [default to nothing]
 **channel_roles** | **String**| Comma separated string used to filter users based on any of the specified channel roles, can only be used in conjunction with &#x60;in_channel&#x60;  Example: &#x60;?in_channel&#x3D;4eb6axxw7fg3je5iyasnfudc5y&amp;channel_roles&#x3D;channel_user&#x60; will return users that are only channel users and not admins or guests  __Minimum server version__: 5.26  | [default to nothing]
 **team_roles** | **String**| Comma separated string used to filter users based on any of the specified team roles, can only be used in conjunction with &#x60;in_team&#x60;  Example: &#x60;?in_team&#x3D;4eb6axxw7fg3je5iyasnfudc5y&amp;team_roles&#x3D;team_user&#x60; will return users that are only team users and not admins or guests  __Minimum server version__: 5.26  | [default to nothing]

### Return type

[**Vector{User}**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_users_by_group_channel_ids**
> get_users_by_group_channel_ids(_api::UsersApi, request_body::Vector{String}; _mediaType=nothing) -> GetUsersByGroupChannelIds200Response, OpenAPI.Clients.ApiResponse <br/>
> get_users_by_group_channel_ids(_api::UsersApi, response_stream::Channel, request_body::Vector{String}; _mediaType=nothing) -> Channel{ GetUsersByGroupChannelIds200Response }, OpenAPI.Clients.ApiResponse

Get users by group channels ids

Get an object containing a key per group channel id in the query and its value as a list of users members of that group channel.  The user must be a member of the group ids in the query, or they will be omitted from the response. ##### Permissions Requires an active session but no other permissions.  __Minimum server version__: 5.14 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**request_body** | [**Vector{String}**](String.md)| List of group channel ids | 

### Return type

[**GetUsersByGroupChannelIds200Response**](GetUsersByGroupChannelIds200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_users_by_ids**
> get_users_by_ids(_api::UsersApi, request_body::Vector{String}; since=nothing, _mediaType=nothing) -> Vector{User}, OpenAPI.Clients.ApiResponse <br/>
> get_users_by_ids(_api::UsersApi, response_stream::Channel, request_body::Vector{String}; since=nothing, _mediaType=nothing) -> Channel{ Vector{User} }, OpenAPI.Clients.ApiResponse

Get users by ids

Get a list of users based on a provided list of user ids. ##### Permissions Requires an active session but no other permissions. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**request_body** | [**Vector{String}**](String.md)| List of user ids | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **Int64**| Only return users that have been modified since the given Unix timestamp (in milliseconds).  __Minimum server version__: 5.14  | [default to nothing]

### Return type

[**Vector{User}**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_users_by_usernames**
> get_users_by_usernames(_api::UsersApi, request_body::Vector{String}; _mediaType=nothing) -> Vector{User}, OpenAPI.Clients.ApiResponse <br/>
> get_users_by_usernames(_api::UsersApi, response_stream::Channel, request_body::Vector{String}; _mediaType=nothing) -> Channel{ Vector{User} }, OpenAPI.Clients.ApiResponse

Get users by usernames

Get a list of users based on a provided list of usernames. ##### Permissions Requires an active session but no other permissions. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**request_body** | [**Vector{String}**](String.md)| List of usernames | 

### Return type

[**Vector{User}**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **login**
> login(_api::UsersApi, login_request::LoginRequest; _mediaType=nothing) -> User, OpenAPI.Clients.ApiResponse <br/>
> login(_api::UsersApi, response_stream::Channel, login_request::LoginRequest; _mediaType=nothing) -> Channel{ User }, OpenAPI.Clients.ApiResponse

Login to Mattermost server

##### Permissions No permission required 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**login_request** | [**LoginRequest**](LoginRequest.md)| User authentication object | 

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **login_by_cws_token**
> login_by_cws_token(_api::UsersApi, login_by_cws_token_request::LoginByCwsTokenRequest; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> login_by_cws_token(_api::UsersApi, response_stream::Channel, login_by_cws_token_request::LoginByCwsTokenRequest; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Auto-Login to Mattermost server using CWS token

CWS stands for Customer Web Server which is the cloud service used to manage cloud instances. ##### Permissions A Cloud license is required 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**login_by_cws_token_request** | [**LoginByCwsTokenRequest**](LoginByCwsTokenRequest.md)| User authentication object | 

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **logout**
> logout(_api::UsersApi; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> logout(_api::UsersApi, response_stream::Channel; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Logout from the Mattermost server

##### Permissions An active session is required 

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

# **migrate_auth_to_ldap**
> migrate_auth_to_ldap(_api::UsersApi; migrate_auth_to_ldap_request=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> migrate_auth_to_ldap(_api::UsersApi, response_stream::Channel; migrate_auth_to_ldap_request=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Migrate user accounts authentication type to LDAP.

Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to LDAP. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrate_auth_to_ldap_request** | [**MigrateAuthToLdapRequest**](MigrateAuthToLdapRequest.md)|  | 

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **migrate_auth_to_saml**
> migrate_auth_to_saml(_api::UsersApi; migrate_auth_to_saml_request=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> migrate_auth_to_saml(_api::UsersApi, response_stream::Channel; migrate_auth_to_saml_request=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Migrate user accounts authentication type to SAML.

Migrates accounts from one authentication provider to another. For example, you can upgrade your authentication provider from email to SAML. __Minimum server version__: 5.28 ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrate_auth_to_saml_request** | [**MigrateAuthToSamlRequest**](MigrateAuthToSamlRequest.md)|  | 

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **patch_user**
> patch_user(_api::UsersApi, user_id::String, patch_user_request::PatchUserRequest; _mediaType=nothing) -> User, OpenAPI.Clients.ApiResponse <br/>
> patch_user(_api::UsersApi, response_stream::Channel, user_id::String, patch_user_request::PatchUserRequest; _mediaType=nothing) -> Channel{ User }, OpenAPI.Clients.ApiResponse

Patch a user

Partially update a user by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**patch_user_request** | [**PatchUserRequest**](PatchUserRequest.md)| User object that is to be updated | 

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **permanent_delete_all_users**
> permanent_delete_all_users(_api::UsersApi; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> permanent_delete_all_users(_api::UsersApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Permanent delete all users

Permanently deletes all users and all their related information, including posts.  __Minimum server version__: 5.26.0  __Local mode only__: This endpoint is only available through [local mode](https://docs.mattermost.com/administration/mmctl-cli-tool.html#local-mode). 

### Required Parameters
This endpoint does not need any parameter.

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **promote_guest_to_user**
> promote_guest_to_user(_api::UsersApi, user_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> promote_guest_to_user(_api::UsersApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Promote a guest to user

Convert a guest into a regular user. This will convert the guest into a user for the whole system while retaining any team and channel memberships and automatically joining them to the default channels.  __Minimum server version__: 5.16  ##### Permissions Must be logged in as the user or have the `promote_guest` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **publish_user_typing**
> publish_user_typing(_api::UsersApi, user_id::String; publish_user_typing_request=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> publish_user_typing(_api::UsersApi, response_stream::Channel, user_id::String; publish_user_typing_request=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Publish a user typing websocket event.

Notify users in the given channel via websocket that the given user is typing. __Minimum server version__: 5.26 ##### Permissions Must have `manage_system` permission to publish for any user other than oneself. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publish_user_typing_request** | [**PublishUserTypingRequest**](PublishUserTypingRequest.md)|  | 

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **register_terms_of_service_action**
> register_terms_of_service_action(_api::UsersApi, user_id::String, register_terms_of_service_action_request::RegisterTermsOfServiceActionRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> register_terms_of_service_action(_api::UsersApi, response_stream::Channel, user_id::String, register_terms_of_service_action_request::RegisterTermsOfServiceActionRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Records user action when they accept or decline custom terms of service

Records user action when they accept or decline custom terms of service. Records the action in audit table. Updates user's last accepted terms of service ID if they accepted it.  __Minimum server version__: 5.4 ##### Permissions Must be logged in as the user being acted on. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**register_terms_of_service_action_request** | [**RegisterTermsOfServiceActionRequest**](RegisterTermsOfServiceActionRequest.md)| terms of service details | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **reset_password**
> reset_password(_api::UsersApi, reset_password_request::ResetPasswordRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> reset_password(_api::UsersApi, response_stream::Channel, reset_password_request::ResetPasswordRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Reset password

Update the password for a user using a one-use, timed recovery code tied to the user's account. Only works for non-SSO users. ##### Permissions No permissions required. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**reset_password_request** | [**ResetPasswordRequest**](ResetPasswordRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **revoke_all_sessions**
> revoke_all_sessions(_api::UsersApi, user_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> revoke_all_sessions(_api::UsersApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Revoke all active sessions for a user

Revokes all user sessions from the provided user id and session id strings. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. __Minimum server version__: 4.4 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **revoke_session**
> revoke_session(_api::UsersApi, user_id::String, revoke_session_request::RevokeSessionRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> revoke_session(_api::UsersApi, response_stream::Channel, user_id::String, revoke_session_request::RevokeSessionRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Revoke a user session

Revokes a user session from the provided user id and session id strings. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**revoke_session_request** | [**RevokeSessionRequest**](RevokeSessionRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **revoke_sessions_from_all_users**
> revoke_sessions_from_all_users(_api::UsersApi; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> revoke_sessions_from_all_users(_api::UsersApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Revoke all sessions from all users.

For any session currently on the server (including admin) it will be revoked. Clients will be notified to log out users.  __Minimum server version__: 5.14  ##### Permissions Must have `manage_system` permission. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **revoke_user_access_token**
> revoke_user_access_token(_api::UsersApi, revoke_user_access_token_request::RevokeUserAccessTokenRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> revoke_user_access_token(_api::UsersApi, response_stream::Channel, revoke_user_access_token_request::RevokeUserAccessTokenRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Revoke a user access token

Revoke a user access token and delete any sessions using the token.  __Minimum server version__: 4.1  ##### Permissions Must have `revoke_user_access_token` permission. For non-self requests, must also have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**revoke_user_access_token_request** | [**RevokeUserAccessTokenRequest**](RevokeUserAccessTokenRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search_user_access_tokens**
> search_user_access_tokens(_api::UsersApi, search_user_access_tokens_request::SearchUserAccessTokensRequest; _mediaType=nothing) -> Vector{UserAccessTokenSanitized}, OpenAPI.Clients.ApiResponse <br/>
> search_user_access_tokens(_api::UsersApi, response_stream::Channel, search_user_access_tokens_request::SearchUserAccessTokensRequest; _mediaType=nothing) -> Channel{ Vector{UserAccessTokenSanitized} }, OpenAPI.Clients.ApiResponse

Search tokens

Get a list of tokens based on search criteria provided in the request body. Searches are done against the token id, user id and username.  __Minimum server version__: 4.7  ##### Permissions Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**search_user_access_tokens_request** | [**SearchUserAccessTokensRequest**](SearchUserAccessTokensRequest.md)| Search criteria | 

### Return type

[**Vector{UserAccessTokenSanitized}**](UserAccessTokenSanitized.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search_users**
> search_users(_api::UsersApi, search_users_request::SearchUsersRequest; _mediaType=nothing) -> Vector{User}, OpenAPI.Clients.ApiResponse <br/>
> search_users(_api::UsersApi, response_stream::Channel, search_users_request::SearchUsersRequest; _mediaType=nothing) -> Channel{ Vector{User} }, OpenAPI.Clients.ApiResponse

Search users

Get a list of users based on search criteria provided in the request body. Searches are typically done against username, full name, nickname and email unless otherwise configured by the server. ##### Permissions Requires an active session and `read_channel` and/or `view_team` permissions for any channels or teams specified in the request body. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**search_users_request** | [**SearchUsersRequest**](SearchUsersRequest.md)| Search criteria | 

### Return type

[**Vector{User}**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **send_password_reset_email**
> send_password_reset_email(_api::UsersApi, send_password_reset_email_request::SendPasswordResetEmailRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> send_password_reset_email(_api::UsersApi, response_stream::Channel, send_password_reset_email_request::SendPasswordResetEmailRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Send password reset email

Send an email containing a link for resetting the user's password. The link will contain a one-use, timed recovery code tied to the user's account. Only works for non-SSO users. ##### Permissions No permissions required. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**send_password_reset_email_request** | [**SendPasswordResetEmailRequest**](SendPasswordResetEmailRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **send_verification_email**
> send_verification_email(_api::UsersApi, send_verification_email_request::SendVerificationEmailRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> send_verification_email(_api::UsersApi, response_stream::Channel, send_verification_email_request::SendVerificationEmailRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Send verification email

Send an email with a verification link to a user that has an email matching the one in the request body. This endpoint will return success even if the email does not match any users on the system. ##### Permissions No permissions required. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**send_verification_email_request** | [**SendVerificationEmailRequest**](SendVerificationEmailRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **set_default_profile_image**
> set_default_profile_image(_api::UsersApi, user_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> set_default_profile_image(_api::UsersApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Delete user's profile image

Delete user's profile image and reset to default image based on user_id string parameter. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. __Minimum server version__: 5.5 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **set_profile_image**
> set_profile_image(_api::UsersApi, user_id::String, image::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> set_profile_image(_api::UsersApi, response_stream::Channel, user_id::String, image::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Set user's profile image

Set a user's profile image based on user_id string parameter. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**image** | **String****String**| The image to be uploaded | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **switch_account_type**
> switch_account_type(_api::UsersApi, switch_account_type_request::SwitchAccountTypeRequest; _mediaType=nothing) -> SwitchAccountType200Response, OpenAPI.Clients.ApiResponse <br/>
> switch_account_type(_api::UsersApi, response_stream::Channel, switch_account_type_request::SwitchAccountTypeRequest; _mediaType=nothing) -> Channel{ SwitchAccountType200Response }, OpenAPI.Clients.ApiResponse

Switch login method

Switch a user's login method from using email to OAuth2/SAML/LDAP or back to email. When switching to OAuth2/SAML, account switching is not complete until the user follows the returned link and completes any steps on the OAuth2/SAML service provider.  To switch from email to OAuth2/SAML, specify `current_service`, `new_service`, `email` and `password`.  To switch from OAuth2/SAML to email, specify `current_service`, `new_service`, `email` and `new_password`.  To switch from email to LDAP/AD, specify `current_service`, `new_service`, `email`, `password`, `ldap_ip` and `new_password` (this is the user's LDAP password).  To switch from LDAP/AD to email, specify `current_service`, `new_service`, `ldap_ip`, `password` (this is the user's LDAP password), `email`  and `new_password`.  Additionally, specify `mfa_code` when trying to switch an account on LDAP/AD or email that has MFA activated.  ##### Permissions No current authentication required except when switching from OAuth2/SAML to email. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**switch_account_type_request** | [**SwitchAccountTypeRequest**](SwitchAccountTypeRequest.md)|  | 

### Return type

[**SwitchAccountType200Response**](SwitchAccountType200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_user**
> update_user(_api::UsersApi, user_id::String, update_user_request::UpdateUserRequest; _mediaType=nothing) -> User, OpenAPI.Clients.ApiResponse <br/>
> update_user(_api::UsersApi, response_stream::Channel, user_id::String, update_user_request::UpdateUserRequest; _mediaType=nothing) -> Channel{ User }, OpenAPI.Clients.ApiResponse

Update a user

Update a user by providing the user object. The fields that can be updated are defined in the request body, all other provided fields will be ignored. Any fields not included in the request body will be set to null or reverted to default values. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**update_user_request** | [**UpdateUserRequest**](UpdateUserRequest.md)| User object that is to be updated | 

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_user_active**
> update_user_active(_api::UsersApi, user_id::String, update_user_active_request::UpdateUserActiveRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> update_user_active(_api::UsersApi, response_stream::Channel, user_id::String, update_user_active_request::UpdateUserActiveRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Update user active status

Update user active or inactive status.  __Since server version 4.6, users using a SSO provider to login can be activated or deactivated with this endpoint. However, if their activation status in Mattermost does not reflect their status in the SSO provider, the next synchronization or login by that user will reset the activation status to that of their account in the SSO provider. Server versions 4.5 and before do not allow activation or deactivation of SSO users from this endpoint.__ ##### Permissions User can deactivate themselves. User with `manage_system` permission can activate or deactivate a user. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**update_user_active_request** | [**UpdateUserActiveRequest**](UpdateUserActiveRequest.md)| Use &#x60;true&#x60; to set the user active, &#x60;false&#x60; for inactive | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_user_auth**
> update_user_auth(_api::UsersApi, user_id::String, user_auth_data::UserAuthData; _mediaType=nothing) -> UserAuthData, OpenAPI.Clients.ApiResponse <br/>
> update_user_auth(_api::UsersApi, response_stream::Channel, user_id::String, user_auth_data::UserAuthData; _mediaType=nothing) -> Channel{ UserAuthData }, OpenAPI.Clients.ApiResponse

Update a user's authentication method

Updates a user's authentication method. This can be used to change them to/from LDAP authentication for example.  __Minimum server version__: 4.6 ##### Permissions Must have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**user_auth_data** | [**UserAuthData**](UserAuthData.md)|  | 

### Return type

[**UserAuthData**](UserAuthData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_user_mfa**
> update_user_mfa(_api::UsersApi, user_id::String, update_user_mfa_request::UpdateUserMfaRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> update_user_mfa(_api::UsersApi, response_stream::Channel, user_id::String, update_user_mfa_request::UpdateUserMfaRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Update a user's MFA

Activates multi-factor authentication for the user if `activate` is true and a valid `code` is provided. If activate is false, then `code` is not required and multi-factor authentication is disabled for the user. ##### Permissions Must be logged in as the user being updated or have the `edit_other_users` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**update_user_mfa_request** | [**UpdateUserMfaRequest**](UpdateUserMfaRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_user_password**
> update_user_password(_api::UsersApi, user_id::String, update_user_password_request::UpdateUserPasswordRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> update_user_password(_api::UsersApi, response_stream::Channel, user_id::String, update_user_password_request::UpdateUserPasswordRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Update a user's password

Update a user's password. New password must meet password policy set by server configuration. Current password is required if you're updating your own password. ##### Permissions Must be logged in as the user the password is being changed for or have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**update_user_password_request** | [**UpdateUserPasswordRequest**](UpdateUserPasswordRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_user_roles**
> update_user_roles(_api::UsersApi, user_id::String, update_user_roles_request::UpdateUserRolesRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> update_user_roles(_api::UsersApi, response_stream::Channel, user_id::String, update_user_roles_request::UpdateUserRolesRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Update a user's roles

Update a user's system-level roles. Valid user roles are \"system_user\", \"system_admin\" or both of them. Overwrites any previously assigned system-level roles. ##### Permissions Must have the `manage_roles` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**update_user_roles_request** | [**UpdateUserRolesRequest**](UpdateUserRolesRequest.md)| Space-delimited system roles to assign to the user | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **verify_user_email**
> verify_user_email(_api::UsersApi, verify_user_email_request::VerifyUserEmailRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> verify_user_email(_api::UsersApi, response_stream::Channel, verify_user_email_request::VerifyUserEmailRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Verify user email

Verify the email used by a user to sign-up their account with. ##### Permissions No permissions required. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**verify_user_email_request** | [**VerifyUserEmailRequest**](VerifyUserEmailRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **verify_user_email_without_token**
> verify_user_email_without_token(_api::UsersApi, user_id::String; _mediaType=nothing) -> User, OpenAPI.Clients.ApiResponse <br/>
> verify_user_email_without_token(_api::UsersApi, response_stream::Channel, user_id::String; _mediaType=nothing) -> Channel{ User }, OpenAPI.Clients.ApiResponse

Verify user email by ID

Verify the email used by a user without a token.  __Minimum server version__: 5.24  ##### Permissions  Must have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

