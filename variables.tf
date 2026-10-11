variable "grants" {
  description = <<EOT
Map of grants, attributes below
Required:
    - grant (block):
        - principal (required)
        - privileges (required)
Optional:
    - catalog
    - credential
    - external_location
    - foreign_connection
    - function
    - mcp_service
    - metastore
    - model
    - model_provider_service
    - model_service
    - pipeline
    - recipient
    - schema
    - secret
    - share
    - storage_credential
    - table
    - volume
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    catalog                = optional(string)
    credential             = optional(string)
    external_location      = optional(string)
    foreign_connection     = optional(string)
    function               = optional(string)
    mcp_service            = optional(string)
    metastore              = optional(string)
    model                  = optional(string)
    model_provider_service = optional(string)
    model_service          = optional(string)
    pipeline               = optional(string)
    recipient              = optional(string)
    schema                 = optional(string)
    secret                 = optional(string)
    share                  = optional(string)
    storage_credential     = optional(string)
    table                  = optional(string)
    volume                 = optional(string)
    grant = list(object({
      principal  = string
      privileges = set(string)
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.grants : (
        length(v.grant) >= 1
      )
    ])
    error_message = "Each grant list must contain at least 1 items"
  }
}

