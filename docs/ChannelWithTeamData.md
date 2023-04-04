# ChannelWithTeamData


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [default to nothing]
**create_at** | **Int64** | The time in milliseconds a channel was created | [optional] [default to nothing]
**update_at** | **Int64** | The time in milliseconds a channel was last updated | [optional] [default to nothing]
**delete_at** | **Int64** | The time in milliseconds a channel was deleted | [optional] [default to nothing]
**team_id** | **String** |  | [optional] [default to nothing]
**type** | **String** |  | [optional] [default to nothing]
**display_name** | **String** |  | [optional] [default to nothing]
**name** | **String** |  | [optional] [default to nothing]
**header** | **String** |  | [optional] [default to nothing]
**purpose** | **String** |  | [optional] [default to nothing]
**last_post_at** | **Int64** | The time in milliseconds of the last post of a channel | [optional] [default to nothing]
**total_msg_count** | **Int64** |  | [optional] [default to nothing]
**extra_update_at** | **Int64** | Deprecated in Mattermost 5.0 release | [optional] [default to nothing]
**creator_id** | **String** |  | [optional] [default to nothing]
**team_display_name** | **String** | The display name of the team to which this channel belongs. | [optional] [default to nothing]
**team_name** | **String** | The name of the team to which this channel belongs. | [optional] [default to nothing]
**team_update_at** | **Int64** | The time at which the team to which this channel belongs was last updated. | [optional] [default to nothing]
**policy_id** | **String** | The data retention policy to which this team has been assigned. If no such policy exists, or the caller does not have the &#x60;sysconsole_read_compliance_data_retention&#x60; permission, this field will be null. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


