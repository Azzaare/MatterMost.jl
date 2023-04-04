# PostsApi

All URIs are relative to *http://your-mattermost-url.com/api/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_post**](PostsApi.md#create_post) | **POST** /posts | Create a post
[**create_post_ephemeral**](PostsApi.md#create_post_ephemeral) | **POST** /posts/ephemeral | Create a ephemeral post
[**delete_post**](PostsApi.md#delete_post) | **DELETE** /posts/{post_id} | Delete a post
[**do_post_action**](PostsApi.md#do_post_action) | **POST** /posts/{post_id}/actions/{action_id} | Perform a post action
[**get_file_infos_for_post**](PostsApi.md#get_file_infos_for_post) | **GET** /posts/{post_id}/files/info | Get file info for post
[**get_flagged_posts_for_user**](PostsApi.md#get_flagged_posts_for_user) | **GET** /users/{user_id}/posts/flagged | Get a list of flagged posts
[**get_post**](PostsApi.md#get_post) | **GET** /posts/{post_id} | Get a post
[**get_post_thread**](PostsApi.md#get_post_thread) | **GET** /posts/{post_id}/thread | Get a thread
[**get_posts_around_last_unread**](PostsApi.md#get_posts_around_last_unread) | **GET** /users/{user_id}/channels/{channel_id}/posts/unread | Get posts around oldest unread
[**get_posts_by_ids**](PostsApi.md#get_posts_by_ids) | **POST** /posts/ids | Get posts by a list of ids
[**get_posts_for_channel**](PostsApi.md#get_posts_for_channel) | **GET** /channels/{channel_id}/posts | Get posts for a channel
[**patch_post**](PostsApi.md#patch_post) | **PUT** /posts/{post_id}/patch | Patch a post
[**pin_post**](PostsApi.md#pin_post) | **POST** /posts/{post_id}/pin | Pin a post to the channel
[**search_posts**](PostsApi.md#search_posts) | **POST** /teams/{team_id}/posts/search | Search for team posts
[**set_post_reminder**](PostsApi.md#set_post_reminder) | **POST** /users/{user_id}/posts/{post_id}/reminder | Set a post reminder
[**set_post_unread**](PostsApi.md#set_post_unread) | **POST** /users/{user_id}/posts/{post_id}/set_unread | Mark as unread from a post.
[**unpin_post**](PostsApi.md#unpin_post) | **POST** /posts/{post_id}/unpin | Unpin a post to the channel
[**update_post**](PostsApi.md#update_post) | **PUT** /posts/{post_id} | Update a post


# **create_post**
> create_post(_api::PostsApi, create_post_request::CreatePostRequest; set_online=nothing, _mediaType=nothing) -> Post, OpenAPI.Clients.ApiResponse <br/>
> create_post(_api::PostsApi, response_stream::Channel, create_post_request::CreatePostRequest; set_online=nothing, _mediaType=nothing) -> Channel{ Post }, OpenAPI.Clients.ApiResponse

Create a post

Create a new post in a channel. To create the post as a comment on another post, provide `root_id`. ##### Permissions Must have `create_post` permission for the channel the post is being created in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**create_post_request** | [**CreatePostRequest**](CreatePostRequest.md)| Post object to create | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **set_online** | **Bool**| Whether to set the user status as online or not. | [default to nothing]

### Return type

[**Post**](Post.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_post_ephemeral**
> create_post_ephemeral(_api::PostsApi, create_post_ephemeral_request::CreatePostEphemeralRequest; _mediaType=nothing) -> Post, OpenAPI.Clients.ApiResponse <br/>
> create_post_ephemeral(_api::PostsApi, response_stream::Channel, create_post_ephemeral_request::CreatePostEphemeralRequest; _mediaType=nothing) -> Channel{ Post }, OpenAPI.Clients.ApiResponse

Create a ephemeral post

Create a new ephemeral post in a channel. ##### Permissions Must have `create_post_ephemeral` permission (currently only given to system admin) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**create_post_ephemeral_request** | [**CreatePostEphemeralRequest**](CreatePostEphemeralRequest.md)| Ephemeral Post object to send | 

### Return type

[**Post**](Post.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_post**
> delete_post(_api::PostsApi, post_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> delete_post(_api::PostsApi, response_stream::Channel, post_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Delete a post

Soft deletes a post, by marking the post as deleted in the database. Soft deleted posts will not be returned in post queries. ##### Permissions Must be logged in as the user or have `delete_others_posts` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**post_id** | **String**| ID of the post to delete | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **do_post_action**
> do_post_action(_api::PostsApi, post_id::String, action_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> do_post_action(_api::PostsApi, response_stream::Channel, post_id::String, action_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Perform a post action

Perform a post action, which allows users to interact with integrations through posts. ##### Permissions Must be authenticated and have the `read_channel` permission to the channel the post is in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**post_id** | **String**| Post GUID | [default to nothing]
**action_id** | **String**| Action GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_file_infos_for_post**
> get_file_infos_for_post(_api::PostsApi, post_id::String; include_deleted=nothing, _mediaType=nothing) -> Vector{FileInfo}, OpenAPI.Clients.ApiResponse <br/>
> get_file_infos_for_post(_api::PostsApi, response_stream::Channel, post_id::String; include_deleted=nothing, _mediaType=nothing) -> Channel{ Vector{FileInfo} }, OpenAPI.Clients.ApiResponse

Get file info for post

Gets a list of file information objects for the files attached to a post. ##### Permissions Must have `read_channel` permission for the channel the post is in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**post_id** | **String**| ID of the post | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_deleted** | **Bool**| Defines if result should include deleted posts, must have &#39;manage_system&#39; (admin) permission. | [default to false]

### Return type

[**Vector{FileInfo}**](FileInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_flagged_posts_for_user**
> get_flagged_posts_for_user(_api::PostsApi, user_id::String; team_id=nothing, channel_id=nothing, page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{PostList}, OpenAPI.Clients.ApiResponse <br/>
> get_flagged_posts_for_user(_api::PostsApi, response_stream::Channel, user_id::String; team_id=nothing, channel_id=nothing, page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{PostList} }, OpenAPI.Clients.ApiResponse

Get a list of flagged posts

Get a page of flagged posts of a user provided user id string. Selects from a channel, team, or all flagged posts by a user. Will only return posts from channels in which the user is member. ##### Permissions Must be user or have `manage_system` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**user_id** | **String**| ID of the user | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| Team ID | [default to nothing]
 **channel_id** | **String**| Channel ID | [default to nothing]
 **page** | **Int64**| The page to select | [default to 0]
 **per_page** | **Int64**| The number of posts per page | [default to 60]

### Return type

[**Vector{PostList}**](PostList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_post**
> get_post(_api::PostsApi, post_id::String; include_deleted=nothing, _mediaType=nothing) -> Post, OpenAPI.Clients.ApiResponse <br/>
> get_post(_api::PostsApi, response_stream::Channel, post_id::String; include_deleted=nothing, _mediaType=nothing) -> Channel{ Post }, OpenAPI.Clients.ApiResponse

Get a post

Get a single post. ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**post_id** | **String**| ID of the post to get | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_deleted** | **Bool**| Defines if result should include deleted posts, must have &#39;manage_system&#39; (admin) permission. | [default to false]

### Return type

[**Post**](Post.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_post_thread**
> get_post_thread(_api::PostsApi, post_id::String; per_page=nothing, from_post=nothing, from_create_at=nothing, direction=nothing, skip_fetch_threads=nothing, collapsed_threads=nothing, collapsed_threads_extended=nothing, _mediaType=nothing) -> PostList, OpenAPI.Clients.ApiResponse <br/>
> get_post_thread(_api::PostsApi, response_stream::Channel, post_id::String; per_page=nothing, from_post=nothing, from_create_at=nothing, direction=nothing, skip_fetch_threads=nothing, collapsed_threads=nothing, collapsed_threads_extended=nothing, _mediaType=nothing) -> Channel{ PostList }, OpenAPI.Clients.ApiResponse

Get a thread

Get a post and the rest of the posts in the same thread. ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**post_id** | **String**| ID of a post in the thread | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **per_page** | **Int64**| The number of posts per page | [default to 0]
 **from_post** | **String**| The post_id to return the next page of posts from | [default to &quot;&quot;]
 **from_create_at** | **Int64**| The create_at timestamp to return the next page of posts from | [default to 0]
 **direction** | **String**| The direction to return the posts. Either up or down. | [default to &quot;&quot;]
 **skip_fetch_threads** | **Bool**| Whether to skip fetching threads or not | [default to false]
 **collapsed_threads** | **Bool**| Whether the client uses CRT or not | [default to false]
 **collapsed_threads_extended** | **Bool**| Whether to return the associated users as part of the response or not | [default to false]

### Return type

[**PostList**](PostList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_posts_around_last_unread**
> get_posts_around_last_unread(_api::PostsApi, user_id::String, channel_id::String; limit_before=nothing, limit_after=nothing, skip_fetch_threads=nothing, collapsed_threads=nothing, collapsed_threads_extended=nothing, _mediaType=nothing) -> PostList, OpenAPI.Clients.ApiResponse <br/>
> get_posts_around_last_unread(_api::PostsApi, response_stream::Channel, user_id::String, channel_id::String; limit_before=nothing, limit_after=nothing, skip_fetch_threads=nothing, collapsed_threads=nothing, collapsed_threads_extended=nothing, _mediaType=nothing) -> Channel{ PostList }, OpenAPI.Clients.ApiResponse

Get posts around oldest unread

Get the oldest unread post in the channel for the given user as well as the posts around it. The returned list is sorted in descending order (most recent post first). ##### Permissions Must be logged in as the user or have `edit_other_users` permission, and must have `read_channel` permission for the channel. __Minimum server version__: 5.14 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**user_id** | **String**| ID of the user | [default to nothing]
**channel_id** | **String**| The channel ID to get the posts for | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit_before** | **Int64**| Number of posts before the oldest unread posts. Maximum is 200 posts if limit is set greater than that. | [default to 60]
 **limit_after** | **Int64**| Number of posts after and including the oldest unread post. Maximum is 200 posts if limit is set greater than that. | [default to 60]
 **skip_fetch_threads** | **Bool**| Whether to skip fetching threads or not | [default to false]
 **collapsed_threads** | **Bool**| Whether the client uses CRT or not | [default to false]
 **collapsed_threads_extended** | **Bool**| Whether to return the associated users as part of the response or not | [default to false]

### Return type

[**PostList**](PostList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_posts_by_ids**
> get_posts_by_ids(_api::PostsApi, request_body::Vector{String}; _mediaType=nothing) -> Vector{Post}, OpenAPI.Clients.ApiResponse <br/>
> get_posts_by_ids(_api::PostsApi, response_stream::Channel, request_body::Vector{String}; _mediaType=nothing) -> Channel{ Vector{Post} }, OpenAPI.Clients.ApiResponse

Get posts by a list of ids

Fetch a list of posts based on the provided postIDs ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**request_body** | [**Vector{String}**](String.md)| List of post ids | 

### Return type

[**Vector{Post}**](Post.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_posts_for_channel**
> get_posts_for_channel(_api::PostsApi, channel_id::String; page=nothing, per_page=nothing, since=nothing, before=nothing, after=nothing, include_deleted=nothing, _mediaType=nothing) -> PostList, OpenAPI.Clients.ApiResponse <br/>
> get_posts_for_channel(_api::PostsApi, response_stream::Channel, channel_id::String; page=nothing, per_page=nothing, since=nothing, before=nothing, after=nothing, include_deleted=nothing, _mediaType=nothing) -> Channel{ PostList }, OpenAPI.Clients.ApiResponse

Get posts for a channel

Get a page of posts in a channel. Use the query parameters to modify the behaviour of this endpoint. The parameter `since` must not be used with any of `before`, `after`, `page`, and `per_page` parameters. If `since` is used, it will always return all posts modified since that time, ordered by their create time limited till 1000. A caveat with this parameter is that there is no guarantee that the returned posts will be consecutive. It is left to the clients to maintain state and fill any missing holes in the post order. ##### Permissions Must have `read_channel` permission for the channel. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**channel_id** | **String**| The channel ID to get the posts for | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| The page to select | [default to 0]
 **per_page** | **Int64**| The number of posts per page | [default to 60]
 **since** | **Int64**| Provide a non-zero value in Unix time milliseconds to select posts modified after that time | [default to nothing]
 **before** | **String**| A post id to select the posts that came before this one | [default to nothing]
 **after** | **String**| A post id to select the posts that came after this one | [default to nothing]
 **include_deleted** | **Bool**| Whether to include deleted posts or not. Must have system admin permissions. | [default to false]

### Return type

[**PostList**](PostList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **patch_post**
> patch_post(_api::PostsApi, post_id::String, patch_post_request::PatchPostRequest; _mediaType=nothing) -> Post, OpenAPI.Clients.ApiResponse <br/>
> patch_post(_api::PostsApi, response_stream::Channel, post_id::String, patch_post_request::PatchPostRequest; _mediaType=nothing) -> Channel{ Post }, OpenAPI.Clients.ApiResponse

Patch a post

Partially update a post by providing only the fields you want to update. Omitted fields will not be updated. The fields that can be updated are defined in the request body, all other provided fields will be ignored. ##### Permissions Must have the `edit_post` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**post_id** | **String**| Post GUID | [default to nothing]
**patch_post_request** | [**PatchPostRequest**](PatchPostRequest.md)| Post object that is to be updated | 

### Return type

[**Post**](Post.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **pin_post**
> pin_post(_api::PostsApi, post_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> pin_post(_api::PostsApi, response_stream::Channel, post_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Pin a post to the channel

Pin a post to a channel it is in based from the provided post id string. ##### Permissions Must be authenticated and have the `read_channel` permission to the channel the post is in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**post_id** | **String**| Post GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search_posts**
> search_posts(_api::PostsApi, team_id::String, search_posts_request::SearchPostsRequest; _mediaType=nothing) -> PostListWithSearchMatches, OpenAPI.Clients.ApiResponse <br/>
> search_posts(_api::PostsApi, response_stream::Channel, team_id::String, search_posts_request::SearchPostsRequest; _mediaType=nothing) -> Channel{ PostListWithSearchMatches }, OpenAPI.Clients.ApiResponse

Search for team posts

Search posts in the team and from the provided terms string. ##### Permissions Must be authenticated and have the `view_team` permission. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**team_id** | **String**| Team GUID | [default to nothing]
**search_posts_request** | [**SearchPostsRequest**](SearchPostsRequest.md)| The search terms and logic to use in the search. | 

### Return type

[**PostListWithSearchMatches**](PostListWithSearchMatches.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **set_post_reminder**
> set_post_reminder(_api::PostsApi, user_id::String, post_id::String, set_post_reminder_request::SetPostReminderRequest; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> set_post_reminder(_api::PostsApi, response_stream::Channel, user_id::String, post_id::String, set_post_reminder_request::SetPostReminderRequest; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Set a post reminder

Set a reminder for the user for the post. ##### Permissions Must have `read_channel` permission for the channel the post is in.  __Minimum server version__: 7.2 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**post_id** | **String**| Post GUID | [default to nothing]
**set_post_reminder_request** | [**SetPostReminderRequest**](SetPostReminderRequest.md)| Target time for the reminder | 

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **set_post_unread**
> set_post_unread(_api::PostsApi, user_id::String, post_id::String; _mediaType=nothing) -> ChannelUnreadAt, OpenAPI.Clients.ApiResponse <br/>
> set_post_unread(_api::PostsApi, response_stream::Channel, user_id::String, post_id::String; _mediaType=nothing) -> Channel{ ChannelUnreadAt }, OpenAPI.Clients.ApiResponse

Mark as unread from a post.

Mark a channel as being unread from a given post. ##### Permissions Must have `read_channel` permission for the channel the post is in or if the channel is public, have the `read_public_channels` permission for the team. Must have `edit_other_users` permission if the user is not the one marking the post for himself.  __Minimum server version__: 5.18 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**user_id** | **String**| User GUID | [default to nothing]
**post_id** | **String**| Post GUID | [default to nothing]

### Return type

[**ChannelUnreadAt**](ChannelUnreadAt.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **unpin_post**
> unpin_post(_api::PostsApi, post_id::String; _mediaType=nothing) -> StatusOK, OpenAPI.Clients.ApiResponse <br/>
> unpin_post(_api::PostsApi, response_stream::Channel, post_id::String; _mediaType=nothing) -> Channel{ StatusOK }, OpenAPI.Clients.ApiResponse

Unpin a post to the channel

Unpin a post to a channel it is in based from the provided post id string. ##### Permissions Must be authenticated and have the `read_channel` permission to the channel the post is in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**post_id** | **String**| Post GUID | [default to nothing]

### Return type

[**StatusOK**](StatusOK.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_post**
> update_post(_api::PostsApi, post_id::String, update_post_request::UpdatePostRequest; _mediaType=nothing) -> Post, OpenAPI.Clients.ApiResponse <br/>
> update_post(_api::PostsApi, response_stream::Channel, post_id::String, update_post_request::UpdatePostRequest; _mediaType=nothing) -> Channel{ Post }, OpenAPI.Clients.ApiResponse

Update a post

Update a post. Only the fields listed below are updatable, omitted fields will be treated as blank. ##### Permissions Must have `edit_post` permission for the channel the post is in. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PostsApi** | API context | 
**post_id** | **String**| ID of the post to update | [default to nothing]
**update_post_request** | [**UpdatePostRequest**](UpdatePostRequest.md)| Post object that is to be updated | 

### Return type

[**Post**](Post.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

