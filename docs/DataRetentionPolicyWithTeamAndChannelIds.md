# DataRetentionPolicyWithTeamAndChannelIds


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **String** | The display name for this retention policy. | [optional] [default to nothing]
**post_duration** | **Int64** | The number of days a message will be retained before being deleted by this policy. If this value is less than 0, the policy has infinite retention (i.e. messages are never deleted).  | [optional] [default to nothing]
**team_ids** | **Vector{String}** | The IDs of the teams to which this policy should be applied. | [optional] [default to nothing]
**channel_ids** | **Vector{String}** | The IDs of the channels to which this policy should be applied. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


