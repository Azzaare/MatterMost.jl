# Notice


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Notice ID | [optional] [default to nothing]
**sysAdminOnly** | **Bool** | Does this notice apply only to sysadmins | [optional] [default to nothing]
**teamAdminOnly** | **Bool** | Does this notice apply only to team admins | [optional] [default to nothing]
**action** | **String** | Optional action to perform on action button click. (defaults to closing the notice) | [optional] [default to nothing]
**actionParam** | **String** | Optional action parameter.  Example: {\&quot;action\&quot;: \&quot;url\&quot;, actionParam: \&quot;/console/some-page\&quot;} | [optional] [default to nothing]
**actionText** | **String** | Optional override for the action button text (defaults to OK) | [optional] [default to nothing]
**description** | **String** | Notice content. Use {{Mattermost}} instead of plain text to support white-labeling. Text supports Markdown. | [optional] [default to nothing]
**image** | **String** | URL of image to display | [optional] [default to nothing]
**title** | **String** | Notice title. Use {{Mattermost}} instead of plain text to support white-labeling. Text supports Markdown. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


