# DataRetentionPolicyWithTeamAndChannelCounts


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **String** | The display name for this retention policy. | [optional] [default to nothing]
**post_duration** | **Int64** | The number of days a message will be retained before being deleted by this policy. If this value is less than 0, the policy has infinite retention (i.e. messages are never deleted).  | [optional] [default to nothing]
**id** | **String** | The ID of this retention policy. | [optional] [default to nothing]
**team_count** | **Int64** | The number of teams to which this policy is applied. | [optional] [default to nothing]
**channel_count** | **Int64** | The number of channels to which this policy is applied. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


