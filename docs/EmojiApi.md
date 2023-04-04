# EmojiApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocomplete_emoji**](EmojiApi.md#autocomplete_emoji) | **GET** /emoji/autocomplete | Autocomplete custom emoji
[**create_emoji**](EmojiApi.md#create_emoji) | **POST** /emoji | Create a custom emoji
[**delete_emoji**](EmojiApi.md#delete_emoji) | **DELETE** /emoji/{emoji_id} | Delete a custom emoji
[**get_emoji**](EmojiApi.md#get_emoji) | **GET** /emoji/{emoji_id} | Get a custom emoji
[**get_emoji_by_name**](EmojiApi.md#get_emoji_by_name) | **GET** /emoji/name/{emoji_name} | Get a custom emoji by name
[**get_emoji_image**](EmojiApi.md#get_emoji_image) | **GET** /emoji/{emoji_id}/image | Get custom emoji image
[**get_emoji_list**](EmojiApi.md#get_emoji_list) | **GET** /emoji | Get a list of custom emoji
[**search_emoji**](EmojiApi.md#search_emoji) | **POST** /emoji/search | Search custom emoji


# **autocomplete_emoji**
> autocomplete_emoji(_api::EmojiApi, name::String; _mediaType=nothing) -> Emoji, OpenAPI.Clients.ApiResponse <br/>
> autocomplete_emoji(_api::EmojiApi, response_stream::Channel, name::String; _mediaType=nothing) -> Channel{ Emoji }, OpenAPI.Clients.ApiResponse

Autocomplete custom emoji

Get a list of custom emoji with names starting with or matching the provided name. Returns a maximum of 100 results. ##### Permissions Must be authenticated.  __Minimum server version__: 4.7 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **EmojiApi** | API context | 
**name** | **String**| The emoji name to search. | [default to nothing]

### Return type

[**Emoji**](Emoji.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_emoji**
> create_emoji(_api::EmojiApi, image::String, emoji::String; _mediaType=nothing) -> Emoji, OpenAPI.Clients.ApiResponse <br/>
> create_emoji(_api::EmojiApi, response_stream::Channel, image::String, emoji::String; _mediaType=nothing) -> Channel{ Emoji }, OpenAPI.Clients.ApiResponse

Create a custom emoji

Create a custom emoji for the team. ##### Permissions Must be authenticated. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **EmojiApi** | API context | 
**image** | **String****String**| A file to be uploaded | [default to nothing]
**emoji** | **String**| A JSON object containing a &#x60;name&#x60; field with the name of the emoji and a &#x60;creator_id&#x60; field with the id of the authenticated user. | [default to nothing]

### Return type

[**Emoji**](Emoji.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_emoji**
> delete_emoji(_api::EmojiApi, emoji_id::String; _mediaType=nothing) -> Emoji, OpenAPI.Clients.ApiResponse <br/>
> delete_emoji(_api::EmojiApi, response_stream::Channel, emoji_id::String; _mediaType=nothing) -> Channel{ Emoji }, OpenAPI.Clients.ApiResponse

Delete a custom emoji

Delete a custom emoji. ##### Permissions Must have the `manage_team` or `manage_system` permissions or be the user who created the emoji. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **EmojiApi** | API context | 
**emoji_id** | **String**| Emoji GUID | [default to nothing]

### Return type

[**Emoji**](Emoji.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_emoji**
> get_emoji(_api::EmojiApi, emoji_id::String; _mediaType=nothing) -> Emoji, OpenAPI.Clients.ApiResponse <br/>
> get_emoji(_api::EmojiApi, response_stream::Channel, emoji_id::String; _mediaType=nothing) -> Channel{ Emoji }, OpenAPI.Clients.ApiResponse

Get a custom emoji

Get some metadata for a custom emoji. ##### Permissions Must be authenticated. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **EmojiApi** | API context | 
**emoji_id** | **String**| Emoji GUID | [default to nothing]

### Return type

[**Emoji**](Emoji.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_emoji_by_name**
> get_emoji_by_name(_api::EmojiApi, emoji_name::String; _mediaType=nothing) -> Emoji, OpenAPI.Clients.ApiResponse <br/>
> get_emoji_by_name(_api::EmojiApi, response_stream::Channel, emoji_name::String; _mediaType=nothing) -> Channel{ Emoji }, OpenAPI.Clients.ApiResponse

Get a custom emoji by name

Get some metadata for a custom emoji using its name. ##### Permissions Must be authenticated.  __Minimum server version__: 4.7 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **EmojiApi** | API context | 
**emoji_name** | **String**| Emoji name | [default to nothing]

### Return type

[**Emoji**](Emoji.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_emoji_image**
> get_emoji_image(_api::EmojiApi, emoji_id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_emoji_image(_api::EmojiApi, response_stream::Channel, emoji_id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Get custom emoji image

Get the image for a custom emoji. ##### Permissions Must be authenticated. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **EmojiApi** | API context | 
**emoji_id** | **String**| Emoji GUID | [default to nothing]

### Return type

Nothing

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_emoji_list**
> get_emoji_list(_api::EmojiApi; page=nothing, per_page=nothing, sort=nothing, _mediaType=nothing) -> Emoji, OpenAPI.Clients.ApiResponse <br/>
> get_emoji_list(_api::EmojiApi, response_stream::Channel; page=nothing, per_page=nothing, sort=nothing, _mediaType=nothing) -> Channel{ Emoji }, OpenAPI.Clients.ApiResponse

Get a list of custom emoji

Get a page of metadata for custom emoji on the system. Since server version 4.7, sort using the `sort` query parameter. ##### Permissions Must be authenticated. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **EmojiApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select. | [default to 0]
 **per_page** | **Int64**| The number of emojis per page. | [default to 60]
 **sort** | **String**| Either blank for no sorting or \&quot;name\&quot; to sort by emoji names. Minimum server version for sorting is 4.7. | [default to &quot;&quot;]

### Return type

[**Emoji**](Emoji.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search_emoji**
> search_emoji(_api::EmojiApi, search_emoji_request::SearchEmojiRequest; _mediaType=nothing) -> Vector{Emoji}, OpenAPI.Clients.ApiResponse <br/>
> search_emoji(_api::EmojiApi, response_stream::Channel, search_emoji_request::SearchEmojiRequest; _mediaType=nothing) -> Channel{ Vector{Emoji} }, OpenAPI.Clients.ApiResponse

Search custom emoji

Search for custom emoji by name based on search criteria provided in the request body. A maximum of 200 results are returned. ##### Permissions Must be authenticated.  __Minimum server version__: 4.7 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **EmojiApi** | API context | 
**search_emoji_request** | [**SearchEmojiRequest**](SearchEmojiRequest.md)| Search criteria | 

### Return type

[**Vector{Emoji}**](Emoji.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

