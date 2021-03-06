# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: mediapackage
using AWS.Compat
using AWS.UUIDs
"""
    ConfigureLogs()

Changes the Channel's properities to configure log subscription

# Required Parameters
- `id`: The ID of the channel to log subscription.

# Optional Parameters
- `egressAccessLogs`: 
- `ingressAccessLogs`: 
"""

configure_logs(id; aws_config::AWSConfig=global_aws_config()) = mediapackage("PUT", "/channels/$(id)/configure_logs"; aws_config=aws_config)
configure_logs(id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("PUT", "/channels/$(id)/configure_logs", args; aws_config=aws_config)

"""
    CreateChannel()

Creates a new Channel.

# Required Parameters
- `id`: The ID of the Channel. The ID must be unique within the region and it
cannot be changed after a Channel is created.


# Optional Parameters
- `description`: A short text description of the Channel.
- `tags`: 
"""

create_channel(id; aws_config::AWSConfig=global_aws_config()) = mediapackage("POST", "/channels", Dict{String, Any}("id"=>id); aws_config=aws_config)
create_channel(id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("POST", "/channels", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("id"=>id), args)); aws_config=aws_config)

"""
    CreateHarvestJob()

Creates a new HarvestJob record.

# Required Parameters
- `endTime`: The end of the time-window which will be harvested

- `id`: The ID of the HarvestJob. The ID must be unique within the region
and it cannot be changed after the HarvestJob is submitted

- `originEndpointId`: The ID of the OriginEndpoint that the HarvestJob will harvest from.
This cannot be changed after the HarvestJob is submitted.

- `s3Destination`: 
- `startTime`: The start of the time-window which will be harvested


"""

create_harvest_job(endTime, id, originEndpointId, s3Destination, startTime; aws_config::AWSConfig=global_aws_config()) = mediapackage("POST", "/harvest_jobs", Dict{String, Any}("endTime"=>endTime, "id"=>id, "originEndpointId"=>originEndpointId, "s3Destination"=>s3Destination, "startTime"=>startTime); aws_config=aws_config)
create_harvest_job(endTime, id, originEndpointId, s3Destination, startTime, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("POST", "/harvest_jobs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("endTime"=>endTime, "id"=>id, "originEndpointId"=>originEndpointId, "s3Destination"=>s3Destination, "startTime"=>startTime), args)); aws_config=aws_config)

"""
    CreateOriginEndpoint()

Creates a new OriginEndpoint record.

# Required Parameters
- `channelId`: The ID of the Channel that the OriginEndpoint will be associated with.
This cannot be changed after the OriginEndpoint is created.

- `id`: The ID of the OriginEndpoint.  The ID must be unique within the region
and it cannot be changed after the OriginEndpoint is created.


# Optional Parameters
- `authorization`: 
- `cmafPackage`: 
- `dashPackage`: 
- `description`: A short text description of the OriginEndpoint.
- `hlsPackage`: 
- `manifestName`: A short string that will be used as the filename of the OriginEndpoint URL (defaults to \"index\").
- `mssPackage`: 
- `origination`: Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination

- `startoverWindowSeconds`: Maximum duration (seconds) of content to retain for startover playback.
If not specified, startover playback will be disabled for the OriginEndpoint.

- `tags`: 
- `timeDelaySeconds`: Amount of delay (seconds) to enforce on the playback of live content.
If not specified, there will be no time delay in effect for the OriginEndpoint.

- `whitelist`: A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
"""

create_origin_endpoint(channelId, id; aws_config::AWSConfig=global_aws_config()) = mediapackage("POST", "/origin_endpoints", Dict{String, Any}("channelId"=>channelId, "id"=>id); aws_config=aws_config)
create_origin_endpoint(channelId, id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("POST", "/origin_endpoints", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("channelId"=>channelId, "id"=>id), args)); aws_config=aws_config)

"""
    DeleteChannel()

Deletes an existing Channel.

# Required Parameters
- `id`: The ID of the Channel to delete.

"""

delete_channel(id; aws_config::AWSConfig=global_aws_config()) = mediapackage("DELETE", "/channels/$(id)"; aws_config=aws_config)
delete_channel(id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("DELETE", "/channels/$(id)", args; aws_config=aws_config)

"""
    DeleteOriginEndpoint()

Deletes an existing OriginEndpoint.

# Required Parameters
- `id`: The ID of the OriginEndpoint to delete.

"""

delete_origin_endpoint(id; aws_config::AWSConfig=global_aws_config()) = mediapackage("DELETE", "/origin_endpoints/$(id)"; aws_config=aws_config)
delete_origin_endpoint(id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("DELETE", "/origin_endpoints/$(id)", args; aws_config=aws_config)

"""
    DescribeChannel()

Gets details about a Channel.

# Required Parameters
- `id`: The ID of a Channel.

"""

describe_channel(id; aws_config::AWSConfig=global_aws_config()) = mediapackage("GET", "/channels/$(id)"; aws_config=aws_config)
describe_channel(id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("GET", "/channels/$(id)", args; aws_config=aws_config)

"""
    DescribeHarvestJob()

Gets details about an existing HarvestJob.

# Required Parameters
- `id`: The ID of the HarvestJob.

"""

describe_harvest_job(id; aws_config::AWSConfig=global_aws_config()) = mediapackage("GET", "/harvest_jobs/$(id)"; aws_config=aws_config)
describe_harvest_job(id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("GET", "/harvest_jobs/$(id)", args; aws_config=aws_config)

"""
    DescribeOriginEndpoint()

Gets details about an existing OriginEndpoint.

# Required Parameters
- `id`: The ID of the OriginEndpoint.

"""

describe_origin_endpoint(id; aws_config::AWSConfig=global_aws_config()) = mediapackage("GET", "/origin_endpoints/$(id)"; aws_config=aws_config)
describe_origin_endpoint(id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("GET", "/origin_endpoints/$(id)", args; aws_config=aws_config)

"""
    ListChannels()

Returns a collection of Channels.

# Optional Parameters
- `maxResults`: Upper bound on number of records to return.
- `nextToken`: A token used to resume pagination from the end of a previous request.
"""

list_channels(; aws_config::AWSConfig=global_aws_config()) = mediapackage("GET", "/channels"; aws_config=aws_config)
list_channels(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("GET", "/channels", args; aws_config=aws_config)

"""
    ListHarvestJobs()

Returns a collection of HarvestJob records.

# Optional Parameters
- `includeChannelId`: When specified, the request will return only HarvestJobs associated with the given Channel ID.
- `includeStatus`: When specified, the request will return only HarvestJobs in the given status.
- `maxResults`: The upper bound on the number of records to return.
- `nextToken`: A token used to resume pagination from the end of a previous request.
"""

list_harvest_jobs(; aws_config::AWSConfig=global_aws_config()) = mediapackage("GET", "/harvest_jobs"; aws_config=aws_config)
list_harvest_jobs(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("GET", "/harvest_jobs", args; aws_config=aws_config)

"""
    ListOriginEndpoints()

Returns a collection of OriginEndpoint records.

# Optional Parameters
- `channelId`: When specified, the request will return only OriginEndpoints associated with the given Channel ID.
- `maxResults`: The upper bound on the number of records to return.
- `nextToken`: A token used to resume pagination from the end of a previous request.
"""

list_origin_endpoints(; aws_config::AWSConfig=global_aws_config()) = mediapackage("GET", "/origin_endpoints"; aws_config=aws_config)
list_origin_endpoints(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("GET", "/origin_endpoints", args; aws_config=aws_config)

"""
    ListTagsForResource()



# Required Parameters
- `resource-arn`: 

"""

list_tags_for_resource(resource_arn; aws_config::AWSConfig=global_aws_config()) = mediapackage("GET", "/tags/$(resource-arn)"; aws_config=aws_config)
list_tags_for_resource(resource_arn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("GET", "/tags/$(resource-arn)", args; aws_config=aws_config)

"""
    RotateChannelCredentials()

Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead

# Required Parameters
- `id`: The ID of the channel to update.

"""

rotate_channel_credentials(id; aws_config::AWSConfig=global_aws_config()) = mediapackage("PUT", "/channels/$(id)/credentials"; aws_config=aws_config)
rotate_channel_credentials(id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("PUT", "/channels/$(id)/credentials", args; aws_config=aws_config)

"""
    RotateIngestEndpointCredentials()

Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.

# Required Parameters
- `id`: The ID of the channel the IngestEndpoint is on.
- `ingest_endpoint_id`: The id of the IngestEndpoint whose credentials should be rotated

"""

rotate_ingest_endpoint_credentials(id, ingest_endpoint_id; aws_config::AWSConfig=global_aws_config()) = mediapackage("PUT", "/channels/$(id)/ingest_endpoints/$(ingest_endpoint_id)/credentials"; aws_config=aws_config)
rotate_ingest_endpoint_credentials(id, ingest_endpoint_id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("PUT", "/channels/$(id)/ingest_endpoints/$(ingest_endpoint_id)/credentials", args; aws_config=aws_config)

"""
    TagResource()



# Required Parameters
- `resource-arn`: 
- `tags`: 

"""

tag_resource(resource_arn, tags; aws_config::AWSConfig=global_aws_config()) = mediapackage("POST", "/tags/$(resource-arn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resource_arn, tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("POST", "/tags/$(resource-arn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), args)); aws_config=aws_config)

"""
    UntagResource()



# Required Parameters
- `resource-arn`: 
- `tagKeys`: The key(s) of tag to be deleted

"""

untag_resource(resource_arn, tagKeys; aws_config::AWSConfig=global_aws_config()) = mediapackage("DELETE", "/tags/$(resource-arn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resource_arn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("DELETE", "/tags/$(resource-arn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)

"""
    UpdateChannel()

Updates an existing Channel.

# Required Parameters
- `id`: The ID of the Channel to update.

# Optional Parameters
- `description`: A short text description of the Channel.
"""

update_channel(id; aws_config::AWSConfig=global_aws_config()) = mediapackage("PUT", "/channels/$(id)"; aws_config=aws_config)
update_channel(id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("PUT", "/channels/$(id)", args; aws_config=aws_config)

"""
    UpdateOriginEndpoint()

Updates an existing OriginEndpoint.

# Required Parameters
- `id`: The ID of the OriginEndpoint to update.

# Optional Parameters
- `authorization`: 
- `cmafPackage`: 
- `dashPackage`: 
- `description`: A short text description of the OriginEndpoint.
- `hlsPackage`: 
- `manifestName`: A short string that will be appended to the end of the Endpoint URL.
- `mssPackage`: 
- `origination`: Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination

- `startoverWindowSeconds`: Maximum duration (in seconds) of content to retain for startover playback.
If not specified, startover playback will be disabled for the OriginEndpoint.

- `timeDelaySeconds`: Amount of delay (in seconds) to enforce on the playback of live content.
If not specified, there will be no time delay in effect for the OriginEndpoint.

- `whitelist`: A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
"""

update_origin_endpoint(id; aws_config::AWSConfig=global_aws_config()) = mediapackage("PUT", "/origin_endpoints/$(id)"; aws_config=aws_config)
update_origin_endpoint(id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediapackage("PUT", "/origin_endpoints/$(id)", args; aws_config=aws_config)
