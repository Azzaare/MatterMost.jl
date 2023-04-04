# PostMetadata


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**embeds** | [**Vector{PostMetadataEmbedsInner}**](PostMetadataEmbedsInner.md) | Information about content embedded in the post including OpenGraph previews, image link previews, and message attachments. This field will be null if the post does not contain embedded content.  | [optional] [default to nothing]
**emojis** | [**Vector{Emoji}**](Emoji.md) | The custom emojis that appear in this point or have been used in reactions to this post. This field will be null if the post does not contain custom emojis.  | [optional] [default to nothing]
**files** | [**Vector{FileInfo}**](FileInfo.md) | The FileInfo objects for any files attached to the post. This field will be null if the post does not have any file attachments.  | [optional] [default to nothing]
**images** | [**Vector{PostMetadataImagesInner}**](PostMetadataImagesInner.md) | An object mapping the URL of an external image to an object containing the dimensions of that image. This field will be null if the post or its embedded content does not reference any external images.  | [optional] [default to nothing]
**reactions** | [**Vector{Reaction}**](Reaction.md) | Any reactions made to this point. This field will be null if no reactions have been made to this post.  | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


