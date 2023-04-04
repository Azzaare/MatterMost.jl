# PostListWithSearchMatches


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order** | **Vector{String}** |  | [optional] [default to nothing]
**posts** | [**Dict{String, Post}**](Post.md) |  | [optional] [default to nothing]
**matches** | **Dict{String, Vector{String}}** | A mapping of post IDs to a list of matched terms within the post. This field will only be populated on servers running version 5.1 or greater with Elasticsearch enabled. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


