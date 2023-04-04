# CommandsApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_command**](CommandsApi.md#create_command) | **POST** /commands | Create a command
[**delete_command**](CommandsApi.md#delete_command) | **DELETE** /commands/{command_id} | Delete a command
[**execute_command**](CommandsApi.md#execute_command) | **POST** /commands/execute | Execute a command
[**get_command_by_id**](CommandsApi.md#get_command_by_id) | **GET** /commands/{command_id} | Get a command
[**list_autocomplete_commands**](CommandsApi.md#list_autocomplete_commands) | **GET** /teams/{team_id}/commands/autocomplete | List autocomplete commands
[**list_command_autocomplete_suggestions**](CommandsApi.md#list_command_autocomplete_suggestions) | **GET** /teams/{team_id}/commands/autocomplete_suggestions | List commands&#39; autocomplete data
[**list_commands**](CommandsApi.md#list_commands) | **GET** /commands | List commands for a team
[**move_command**](CommandsApi.md#move_command) | **PUT** /commands/{command_id}/move | Move a command
[**regen_command_token**](CommandsApi.md#regen_command_token) | **PUT** /commands/{command_id}/regen_token | Generate a new token
[**update_command**](CommandsApi.md#update_command) | **PUT** /commands/{command_id} | Update a command


# **create_command**
> create_command(_api::CommandsApi, create_command_request::CreateCommandRequest; _mediaType=nothing) -> Command, OpenAPI.Clients.ApiResponse <br/>
> create_command(_api::CommandsApi, response_stream::Channel, create_command_request::CreateCommandRequest; _mediaType=nothing) -> Channel{ Command }, OpenAPI.Clients.ApiResponse

Create a command

Create a command for a team. ##### Permissions `manage_slash_commands` for the team the command is in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CommandsApi** | API context | 
**create_command_request** | [**CreateCommandRequest**](CreateCommandRequest.md)| command to be created | 

### Return type

[**Command**](Command.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_command**
> delete_command(_api::CommandsApi, command_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_command(_api::CommandsApi, response_stream::Channel, command_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Delete a command

Delete a command based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CommandsApi** | API context | 
**command_id** | **String**| ID of the command to delete | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **execute_command**
> execute_command(_api::CommandsApi, execute_command_request::ExecuteCommandRequest; _mediaType=nothing) -> CommandResponse, OpenAPI.Clients.ApiResponse <br/>
> execute_command(_api::CommandsApi, response_stream::Channel, execute_command_request::ExecuteCommandRequest; _mediaType=nothing) -> Channel{ CommandResponse }, OpenAPI.Clients.ApiResponse

Execute a command

Execute a command on a team. ##### Permissions Must have `use_slash_commands` permission for the team the command is in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CommandsApi** | API context | 
**execute_command_request** | [**ExecuteCommandRequest**](ExecuteCommandRequest.md)| command to be executed | 

### Return type

[**CommandResponse**](CommandResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_command_by_id**
> get_command_by_id(_api::CommandsApi, command_id::String; _mediaType=nothing) -> Command, OpenAPI.Clients.ApiResponse <br/>
> get_command_by_id(_api::CommandsApi, response_stream::Channel, command_id::String; _mediaType=nothing) -> Channel{ Command }, OpenAPI.Clients.ApiResponse

Get a command

Get a command definition based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in.  __Minimum server version__: 5.22 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CommandsApi** | API context | 
**command_id** | **String**| ID of the command to get | [default to nothing]

### Return type

[**Command**](Command.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_autocomplete_commands**
> list_autocomplete_commands(_api::CommandsApi, team_id::String; _mediaType=nothing) -> Vector{Command}, OpenAPI.Clients.ApiResponse <br/>
> list_autocomplete_commands(_api::CommandsApi, response_stream::Channel, team_id::String; _mediaType=nothing) -> Channel{ Vector{Command} }, OpenAPI.Clients.ApiResponse

List autocomplete commands

List autocomplete commands in the team. ##### Permissions `view_team` for the team. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CommandsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]

### Return type

[**Vector{Command}**](Command.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_command_autocomplete_suggestions**
> list_command_autocomplete_suggestions(_api::CommandsApi, team_id::String, user_input::String; _mediaType=nothing) -> Vector{AutocompleteSuggestion}, OpenAPI.Clients.ApiResponse <br/>
> list_command_autocomplete_suggestions(_api::CommandsApi, response_stream::Channel, team_id::String, user_input::String; _mediaType=nothing) -> Channel{ Vector{AutocompleteSuggestion} }, OpenAPI.Clients.ApiResponse

List commands' autocomplete data

List commands' autocomplete data for the team. ##### Permissions `view_team` for the team. __Minimum server version__: 5.24 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CommandsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**user_input** | **String**| String inputted by the user. | [default to nothing]

### Return type

[**Vector{AutocompleteSuggestion}**](AutocompleteSuggestion.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_commands**
> list_commands(_api::CommandsApi; team_id=nothing, custom_only=nothing, _mediaType=nothing) -> Vector{Command}, OpenAPI.Clients.ApiResponse <br/>
> list_commands(_api::CommandsApi, response_stream::Channel; team_id=nothing, custom_only=nothing, _mediaType=nothing) -> Channel{ Vector{Command} }, OpenAPI.Clients.ApiResponse

List commands for a team

List commands for a team. ##### Permissions `manage_slash_commands` if need list custom commands. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CommandsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The team id. | [default to nothing]
 **custom_only** | **Bool**| To get only the custom commands. If set to false will get the custom if the user have access plus the system commands, otherwise just the system commands.  | [default to false]

### Return type

[**Vector{Command}**](Command.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **move_command**
> move_command(_api::CommandsApi, command_id::String, move_command_request::MoveCommandRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> move_command(_api::CommandsApi, response_stream::Channel, command_id::String, move_command_request::MoveCommandRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Move a command

Move a command to a different team based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is currently in and the destination team.  __Minimum server version__: 5.22 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CommandsApi** | API context | 
**command_id** | **String**| ID of the command to move | [default to nothing]
**move_command_request** | [**MoveCommandRequest**](MoveCommandRequest.md)|  | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **regen_command_token**
> regen_command_token(_api::CommandsApi, command_id::String; _mediaType=nothing) -> RegenCommandToken200Response, OpenAPI.Clients.ApiResponse <br/>
> regen_command_token(_api::CommandsApi, response_stream::Channel, command_id::String; _mediaType=nothing) -> Channel{ RegenCommandToken200Response }, OpenAPI.Clients.ApiResponse

Generate a new token

Generate a new token for the command based on command id string. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CommandsApi** | API context | 
**command_id** | **String**| ID of the command to generate the new token | [default to nothing]

### Return type

[**RegenCommandToken200Response**](RegenCommandToken200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_command**
> update_command(_api::CommandsApi, command_id::String, command::Command; _mediaType=nothing) -> Command, OpenAPI.Clients.ApiResponse <br/>
> update_command(_api::CommandsApi, response_stream::Channel, command_id::String, command::Command; _mediaType=nothing) -> Channel{ Command }, OpenAPI.Clients.ApiResponse

Update a command

Update a single command based on command id string and Command struct. ##### Permissions Must have `manage_slash_commands` permission for the team the command is in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CommandsApi** | API context | 
**command_id** | **String**| ID of the command to update | [default to nothing]
**command** | [**Command**](Command.md)|  | 

### Return type

[**Command**](Command.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

