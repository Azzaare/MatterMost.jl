# DataRetentionApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_channels_to_retention_policy**](DataRetentionApi.md#add_channels_to_retention_policy) | **POST** /data_retention/policies/{policy_id}/channels | Add channels to a granular data retention policy
[**add_teams_to_retention_policy**](DataRetentionApi.md#add_teams_to_retention_policy) | **POST** /data_retention/policies/{policy_id}/teams | Add teams to a granular data retention policy
[**create_data_retention_policy**](DataRetentionApi.md#create_data_retention_policy) | **POST** /data_retention/policies | Create a new granular data retention policy
[**delete_data_retention_policy**](DataRetentionApi.md#delete_data_retention_policy) | **DELETE** /data_retention/policies/{policy_id} | Delete a granular data retention policy
[**get_channel_policies_for_user**](DataRetentionApi.md#get_channel_policies_for_user) | **GET** /users/{user_id}/data_retention/channel_policies | Get the policies which are applied to a user&#39;s channels
[**get_channels_for_retention_policy**](DataRetentionApi.md#get_channels_for_retention_policy) | **GET** /data_retention/policies/{policy_id}/channels | Get the channels for a granular data retention policy
[**get_data_retention_policies**](DataRetentionApi.md#get_data_retention_policies) | **GET** /data_retention/policies | Get the granular data retention policies
[**get_data_retention_policies_count**](DataRetentionApi.md#get_data_retention_policies_count) | **GET** /data_retention/policies_count | Get the number of granular data retention policies
[**get_data_retention_policy**](DataRetentionApi.md#get_data_retention_policy) | **GET** /data_retention/policy | Get the global data retention policy
[**get_data_retention_policy_by_i_d**](DataRetentionApi.md#get_data_retention_policy_by_i_d) | **GET** /data_retention/policies/{policy_id} | Get a granular data retention policy
[**get_team_policies_for_user**](DataRetentionApi.md#get_team_policies_for_user) | **GET** /users/{user_id}/data_retention/team_policies | Get the policies which are applied to a user&#39;s teams
[**get_teams_for_retention_policy**](DataRetentionApi.md#get_teams_for_retention_policy) | **GET** /data_retention/policies/{policy_id}/teams | Get the teams for a granular data retention policy
[**patch_data_retention_policy**](DataRetentionApi.md#patch_data_retention_policy) | **PATCH** /data_retention/policies/{policy_id} | Patch a granular data retention policy
[**remove_channels_from_retention_policy**](DataRetentionApi.md#remove_channels_from_retention_policy) | **DELETE** /data_retention/policies/{policy_id}/channels | Delete channels from a granular data retention policy
[**remove_teams_from_retention_policy**](DataRetentionApi.md#remove_teams_from_retention_policy) | **DELETE** /data_retention/policies/{policy_id}/teams | Delete teams from a granular data retention policy
[**search_channels_for_retention_policy**](DataRetentionApi.md#search_channels_for_retention_policy) | **POST** /data_retention/policies/{policy_id}/channels/search | Search for the channels in a granular data retention policy
[**search_teams_for_retention_policy**](DataRetentionApi.md#search_teams_for_retention_policy) | **POST** /data_retention/policies/{policy_id}/teams/search | Search for the teams in a granular data retention policy


# **add_channels_to_retention_policy**
> add_channels_to_retention_policy(_api::DataRetentionApi, policy_id::String, request_body::Vector{String}; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> add_channels_to_retention_policy(_api::DataRetentionApi, response_stream::Channel, policy_id::String, request_body::Vector{String}; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Add channels to a granular data retention policy

Adds channels to a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataRetentionApi** | API context | 
**policy_id** | **String**| The ID of the granular retention policy. | [default to nothing]
**request_body** | [**Vector{String}**](String.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **add_teams_to_retention_policy**
> add_teams_to_retention_policy(_api::DataRetentionApi, policy_id::String, request_body::Vector{String}; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> add_teams_to_retention_policy(_api::DataRetentionApi, response_stream::Channel, policy_id::String, request_body::Vector{String}; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Add teams to a granular data retention policy

Adds teams to a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataRetentionApi** | API context | 
**policy_id** | **String**| The ID of the granular retention policy. | [default to nothing]
**request_body** | [**Vector{String}**](String.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_data_retention_policy**
> create_data_retention_policy(_api::DataRetentionApi, data_retention_policy_create::DataRetentionPolicyCreate; _mediaType=nothing) -> DataRetentionPolicyWithTeamAndChannelCounts, OpenAPI.Clients.ApiResponse <br/>
> create_data_retention_policy(_api::DataRetentionApi, response_stream::Channel, data_retention_policy_create::DataRetentionPolicyCreate; _mediaType=nothing) -> Channel{ DataRetentionPolicyWithTeamAndChannelCounts }, OpenAPI.Clients.ApiResponse

Create a new granular data retention policy

Creates a new granular data retention policy with the specified display name and post duration.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataRetentionApi** | API context | 
**data_retention_policy_create** | [**DataRetentionPolicyCreate**](DataRetentionPolicyCreate.md)|  | 

### Return type

[**DataRetentionPolicyWithTeamAndChannelCounts**](DataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_data_retention_policy**
> delete_data_retention_policy(_api::DataRetentionApi, policy_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_data_retention_policy(_api::DataRetentionApi, response_stream::Channel, policy_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Delete a granular data retention policy

Deletes a granular data retention policy.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataRetentionApi** | API context | 
**policy_id** | **String**| The ID of the granular retention policy. | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channel_policies_for_user**
> get_channel_policies_for_user(_api::DataRetentionApi, user_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> RetentionPolicyForChannelList, OpenAPI.Clients.ApiResponse <br/>
> get_channel_policies_for_user(_api::DataRetentionApi, response_stream::Channel, user_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ RetentionPolicyForChannelList }, OpenAPI.Clients.ApiResponse

Get the policies which are applied to a user's channels

Gets the policies which are applied to the all of the channels to which a user belongs.  __Minimum server version__: 5.35  ##### Permissions Must be logged in as the user or have the `manage_system` permission.  ##### License Requires an E20 license. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataRetentionApi** | API context | 
**user_id** | **String**| The ID of the user. This can also be \&quot;me\&quot; which will point to the current user. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of policies per page. There is a maximum limit of 200 per page. | [default to 60]

### Return type

[**RetentionPolicyForChannelList**](RetentionPolicyForChannelList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_channels_for_retention_policy**
> get_channels_for_retention_policy(_api::DataRetentionApi, policy_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{ChannelWithTeamData}, OpenAPI.Clients.ApiResponse <br/>
> get_channels_for_retention_policy(_api::DataRetentionApi, response_stream::Channel, policy_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{ChannelWithTeamData} }, OpenAPI.Clients.ApiResponse

Get the channels for a granular data retention policy

Gets the channels to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataRetentionApi** | API context | 
**policy_id** | **String**| The ID of the granular retention policy. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of channels per page. There is a maximum limit of 200 per page. | [default to 60]

### Return type

[**Vector{ChannelWithTeamData}**](ChannelWithTeamData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_data_retention_policies**
> get_data_retention_policies(_api::DataRetentionApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{DataRetentionPolicyWithTeamAndChannelCounts}, OpenAPI.Clients.ApiResponse <br/>
> get_data_retention_policies(_api::DataRetentionApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{DataRetentionPolicyWithTeamAndChannelCounts} }, OpenAPI.Clients.ApiResponse

Get the granular data retention policies

Gets details about the granular (i.e. team or channel-specific) data retention policies from the server.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataRetentionApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of policies per page. There is a maximum limit of 200 per page. | [default to 60]

### Return type

[**Vector{DataRetentionPolicyWithTeamAndChannelCounts}**](DataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_data_retention_policies_count**
> get_data_retention_policies_count(_api::DataRetentionApi; _mediaType=nothing) -> GetDataRetentionPoliciesCount200Response, OpenAPI.Clients.ApiResponse <br/>
> get_data_retention_policies_count(_api::DataRetentionApi, response_stream::Channel; _mediaType=nothing) -> Channel{ GetDataRetentionPoliciesCount200Response }, OpenAPI.Clients.ApiResponse

Get the number of granular data retention policies

Gets the number of granular (i.e. team or channel-specific) data retention policies from the server.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**GetDataRetentionPoliciesCount200Response**](GetDataRetentionPoliciesCount200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_data_retention_policy**
> get_data_retention_policy(_api::DataRetentionApi; _mediaType=nothing) -> GlobalDataRetentionPolicy, OpenAPI.Clients.ApiResponse <br/>
> get_data_retention_policy(_api::DataRetentionApi, response_stream::Channel; _mediaType=nothing) -> Channel{ GlobalDataRetentionPolicy }, OpenAPI.Clients.ApiResponse

Get the global data retention policy

Gets the current global data retention policy details from the server, including what data should be purged and the cutoff times for each data type that should be purged.  __Minimum server version__: 4.3  ##### Permissions Requires an active session but no other permissions.  ##### License Requires an E20 license. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**GlobalDataRetentionPolicy**](GlobalDataRetentionPolicy.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_data_retention_policy_by_i_d**
> get_data_retention_policy_by_i_d(_api::DataRetentionApi, policy_id::String; _mediaType=nothing) -> DataRetentionPolicyWithTeamAndChannelCounts, OpenAPI.Clients.ApiResponse <br/>
> get_data_retention_policy_by_i_d(_api::DataRetentionApi, response_stream::Channel, policy_id::String; _mediaType=nothing) -> Channel{ DataRetentionPolicyWithTeamAndChannelCounts }, OpenAPI.Clients.ApiResponse

Get a granular data retention policy

Gets details about a granular data retention policies by ID.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataRetentionApi** | API context | 
**policy_id** | **String**| The ID of the granular retention policy. | [default to nothing]

### Return type

[**DataRetentionPolicyWithTeamAndChannelCounts**](DataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_team_policies_for_user**
> get_team_policies_for_user(_api::DataRetentionApi, user_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> RetentionPolicyForTeamList, OpenAPI.Clients.ApiResponse <br/>
> get_team_policies_for_user(_api::DataRetentionApi, response_stream::Channel, user_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ RetentionPolicyForTeamList }, OpenAPI.Clients.ApiResponse

Get the policies which are applied to a user's teams

Gets the policies which are applied to the all of the teams to which a user belongs.  __Minimum server version__: 5.35  ##### Permissions Must be logged in as the user or have the `manage_system` permission.  ##### License Requires an E20 license. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataRetentionApi** | API context | 
**user_id** | **String**| The ID of the user. This can also be \&quot;me\&quot; which will point to the current user. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of policies per page. There is a maximum limit of 200 per page. | [default to 60]

### Return type

[**RetentionPolicyForTeamList**](RetentionPolicyForTeamList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_teams_for_retention_policy**
> get_teams_for_retention_policy(_api::DataRetentionApi, policy_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{Team}, OpenAPI.Clients.ApiResponse <br/>
> get_teams_for_retention_policy(_api::DataRetentionApi, response_stream::Channel, policy_id::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{Team} }, OpenAPI.Clients.ApiResponse

Get the teams for a granular data retention policy

Gets the teams to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataRetentionApi** | API context | 
**policy_id** | **String**| The ID of the granular retention policy. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of teams per page. There is a maximum limit of 200 per page. | [default to 60]

### Return type

[**Vector{Team}**](Team.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **patch_data_retention_policy**
> patch_data_retention_policy(_api::DataRetentionApi, policy_id::String, data_retention_policy_with_team_and_channel_ids::DataRetentionPolicyWithTeamAndChannelIds; _mediaType=nothing) -> DataRetentionPolicyWithTeamAndChannelCounts, OpenAPI.Clients.ApiResponse <br/>
> patch_data_retention_policy(_api::DataRetentionApi, response_stream::Channel, policy_id::String, data_retention_policy_with_team_and_channel_ids::DataRetentionPolicyWithTeamAndChannelIds; _mediaType=nothing) -> Channel{ DataRetentionPolicyWithTeamAndChannelCounts }, OpenAPI.Clients.ApiResponse

Patch a granular data retention policy

Patches (i.e. replaces the fields of) a granular data retention policy. If any fields are omitted, they will not be changed.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataRetentionApi** | API context | 
**policy_id** | **String**| The ID of the granular retention policy. | [default to nothing]
**data_retention_policy_with_team_and_channel_ids** | [**DataRetentionPolicyWithTeamAndChannelIds**](DataRetentionPolicyWithTeamAndChannelIds.md)|  | 

### Return type

[**DataRetentionPolicyWithTeamAndChannelCounts**](DataRetentionPolicyWithTeamAndChannelCounts.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **remove_channels_from_retention_policy**
> remove_channels_from_retention_policy(_api::DataRetentionApi, policy_id::String, request_body::Vector{String}; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> remove_channels_from_retention_policy(_api::DataRetentionApi, response_stream::Channel, policy_id::String, request_body::Vector{String}; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Delete channels from a granular data retention policy

Delete channels from a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataRetentionApi** | API context | 
**policy_id** | **String**| The ID of the granular retention policy. | [default to nothing]
**request_body** | [**Vector{String}**](String.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **remove_teams_from_retention_policy**
> remove_teams_from_retention_policy(_api::DataRetentionApi, policy_id::String, request_body::Vector{String}; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> remove_teams_from_retention_policy(_api::DataRetentionApi, response_stream::Channel, policy_id::String, request_body::Vector{String}; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Delete teams from a granular data retention policy

Delete teams from a granular data retention policy.   __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_write_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataRetentionApi** | API context | 
**policy_id** | **String**| The ID of the granular retention policy. | [default to nothing]
**request_body** | [**Vector{String}**](String.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search_channels_for_retention_policy**
> search_channels_for_retention_policy(_api::DataRetentionApi, policy_id::String, search_channels_for_retention_policy_request::SearchChannelsForRetentionPolicyRequest; _mediaType=nothing) -> Vector{ChannelWithTeamData}, OpenAPI.Clients.ApiResponse <br/>
> search_channels_for_retention_policy(_api::DataRetentionApi, response_stream::Channel, policy_id::String, search_channels_for_retention_policy_request::SearchChannelsForRetentionPolicyRequest; _mediaType=nothing) -> Channel{ Vector{ChannelWithTeamData} }, OpenAPI.Clients.ApiResponse

Search for the channels in a granular data retention policy

Searches for the channels to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataRetentionApi** | API context | 
**policy_id** | **String**| The ID of the granular retention policy. | [default to nothing]
**search_channels_for_retention_policy_request** | [**SearchChannelsForRetentionPolicyRequest**](SearchChannelsForRetentionPolicyRequest.md)|  | 

### Return type

[**Vector{ChannelWithTeamData}**](ChannelWithTeamData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search_teams_for_retention_policy**
> search_teams_for_retention_policy(_api::DataRetentionApi, policy_id::String, search_teams_for_retention_policy_request::SearchTeamsForRetentionPolicyRequest; _mediaType=nothing) -> Vector{Team}, OpenAPI.Clients.ApiResponse <br/>
> search_teams_for_retention_policy(_api::DataRetentionApi, response_stream::Channel, policy_id::String, search_teams_for_retention_policy_request::SearchTeamsForRetentionPolicyRequest; _mediaType=nothing) -> Channel{ Vector{Team} }, OpenAPI.Clients.ApiResponse

Search for the teams in a granular data retention policy

Searches for the teams to which a granular data retention policy is applied.  __Minimum server version__: 5.35  ##### Permissions Must have the `sysconsole_read_compliance_data_retention` permission.  ##### License Requires an E20 license. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DataRetentionApi** | API context | 
**policy_id** | **String**| The ID of the granular retention policy. | [default to nothing]
**search_teams_for_retention_policy_request** | [**SearchTeamsForRetentionPolicyRequest**](SearchTeamsForRetentionPolicyRequest.md)|  | 

### Return type

[**Vector{Team}**](Team.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

