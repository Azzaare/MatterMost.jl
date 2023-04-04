# ReactionsApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_reaction**](ReactionsApi.md#delete_reaction) | **DELETE** /users/{user_id}/posts/{post_id}/reactions/{emoji_name} | Remove a reaction from a post
[**get_bulk_reactions**](ReactionsApi.md#get_bulk_reactions) | **POST** /posts/ids/reactions | Bulk get the reaction for posts
[**get_reactions**](ReactionsApi.md#get_reactions) | **GET** /posts/{post_id}/reactions | Get a list of reactions to a post
[**save_reaction**](ReactionsApi.md#save_reaction) | **POST** /reactions | Create a reaction


# **delete_reaction**
> delete_reaction(_api::ReactionsApi, user_id::String, post_id::String, emoji_name::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_reaction(_api::ReactionsApi, response_stream::Channel, user_id::String, post_id::String, emoji_name::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Remove a reaction from a post

Deletes a reaction made by a user from the given post. ##### Permissions Must be user or have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ReactionsApi** | API context | 
**user_id** | **String**| ID of the user | [default to nothing]
**post_id** | **String**| ID of the post | [default to nothing]
**emoji_name** | **String**| emoji name | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_bulk_reactions**
> get_bulk_reactions(_api::ReactionsApi, request_body::Vector{String}; _mediaType=nothing) -> Dict{String, Vector{Reaction}}, OpenAPI.Clients.ApiResponse <br/>
> get_bulk_reactions(_api::ReactionsApi, response_stream::Channel, request_body::Vector{String}; _mediaType=nothing) -> Channel{ Dict{String, Vector{Reaction}} }, OpenAPI.Clients.ApiResponse

Bulk get the reaction for posts

Get a list of reactions made by all users to a given post. ##### Permissions Must have `read_channel` permission for the channel the post is in.  __Minimum server version__: 5.8 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ReactionsApi** | API context | 
**request_body** | [**Vector{String}**](String.md)| Array of post IDs | 

### Return type

**Dict{String, Vector{Reaction}}**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_reactions**
> get_reactions(_api::ReactionsApi, post_id::String; _mediaType=nothing) -> Vector{Reaction}, OpenAPI.Clients.ApiResponse <br/>
> get_reactions(_api::ReactionsApi, response_stream::Channel, post_id::String; _mediaType=nothing) -> Channel{ Vector{Reaction} }, OpenAPI.Clients.ApiResponse

Get a list of reactions to a post

Get a list of reactions made by all users to a given post. ##### Permissions Must have `read_channel` permission for the channel the post is in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ReactionsApi** | API context | 
**post_id** | **String**| ID of a post | [default to nothing]

### Return type

[**Vector{Reaction}**](Reaction.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **save_reaction**
> save_reaction(_api::ReactionsApi, reaction::Reaction; _mediaType=nothing) -> Reaction, OpenAPI.Clients.ApiResponse <br/>
> save_reaction(_api::ReactionsApi, response_stream::Channel, reaction::Reaction; _mediaType=nothing) -> Channel{ Reaction }, OpenAPI.Clients.ApiResponse

Create a reaction

Create a reaction. ##### Permissions Must have `read_channel` permission for the channel the post is in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ReactionsApi** | API context | 
**reaction** | [**Reaction**](Reaction.md)| The user&#39;s reaction with its post_id, user_id, and emoji_name fields set | 

### Return type

[**Reaction**](Reaction.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

