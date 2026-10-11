resource "databricks_grants" "grants" {
  for_each = var.grants

  catalog                = each.value.catalog
  credential             = each.value.credential
  external_location      = each.value.external_location
  foreign_connection     = each.value.foreign_connection
  function               = each.value.function
  mcp_service            = each.value.mcp_service
  metastore              = each.value.metastore
  model                  = each.value.model
  model_provider_service = each.value.model_provider_service
  model_service          = each.value.model_service
  pipeline               = each.value.pipeline
  recipient              = each.value.recipient
  schema                 = each.value.schema
  secret                 = each.value.secret
  share                  = each.value.share
  storage_credential     = each.value.storage_credential
  table                  = each.value.table
  volume                 = each.value.volume

  dynamic "grant" {
    for_each = each.value.grant
    content {
      principal  = grant.value.principal
      privileges = grant.value.privileges
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

