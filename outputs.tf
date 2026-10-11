output "grants_id" {
  description = "Map of id values across all grants, keyed the same as var.grants except keys with no id are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.id if v.id != null && length(v.id) > 0 }
}
output "grants_catalog" {
  description = "Map of catalog values across all grants, keyed the same as var.grants except keys with no catalog are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.catalog if v.catalog != null && length(v.catalog) > 0 }
}
output "grants_credential" {
  description = "Map of credential values across all grants, keyed the same as var.grants except keys with no credential are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.credential if v.credential != null && length(v.credential) > 0 }
}
output "grants_external_location" {
  description = "Map of external_location values across all grants, keyed the same as var.grants except keys with no external_location are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.external_location if v.external_location != null && length(v.external_location) > 0 }
}
output "grants_foreign_connection" {
  description = "Map of foreign_connection values across all grants, keyed the same as var.grants except keys with no foreign_connection are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.foreign_connection if v.foreign_connection != null && length(v.foreign_connection) > 0 }
}
output "grants_function" {
  description = "Map of function values across all grants, keyed the same as var.grants except keys with no function are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.function if v.function != null && length(v.function) > 0 }
}
output "grants_grant" {
  description = "Map of grant values across all grants, keyed the same as var.grants except keys with no grant are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.grant if v.grant != null && length(v.grant) > 0 }
}
output "grants_mcp_service" {
  description = "Map of mcp_service values across all grants, keyed the same as var.grants except keys with no mcp_service are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.mcp_service if v.mcp_service != null && length(v.mcp_service) > 0 }
}
output "grants_metastore" {
  description = "Map of metastore values across all grants, keyed the same as var.grants except keys with no metastore are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.metastore if v.metastore != null && length(v.metastore) > 0 }
}
output "grants_model" {
  description = "Map of model values across all grants, keyed the same as var.grants except keys with no model are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.model if v.model != null && length(v.model) > 0 }
}
output "grants_model_provider_service" {
  description = "Map of model_provider_service values across all grants, keyed the same as var.grants except keys with no model_provider_service are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.model_provider_service if v.model_provider_service != null && length(v.model_provider_service) > 0 }
}
output "grants_model_service" {
  description = "Map of model_service values across all grants, keyed the same as var.grants except keys with no model_service are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.model_service if v.model_service != null && length(v.model_service) > 0 }
}
output "grants_pipeline" {
  description = "Map of pipeline values across all grants, keyed the same as var.grants except keys with no pipeline are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.pipeline if v.pipeline != null && length(v.pipeline) > 0 }
}
output "grants_provider_config" {
  description = "Map of provider_config values across all grants, keyed the same as var.grants except keys with no provider_config are omitted"
  value       = { for k, v in databricks_grants.grants : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "grants_recipient" {
  description = "Map of recipient values across all grants, keyed the same as var.grants except keys with no recipient are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.recipient if v.recipient != null && length(v.recipient) > 0 }
}
output "grants_schema" {
  description = "Map of schema values across all grants, keyed the same as var.grants except keys with no schema are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "grants_secret" {
  description = "Map of secret values across all grants, keyed the same as var.grants except keys with no secret are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.secret if v.secret != null && length(v.secret) > 0 }
}
output "grants_share" {
  description = "Map of share values across all grants, keyed the same as var.grants except keys with no share are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.share if v.share != null && length(v.share) > 0 }
}
output "grants_storage_credential" {
  description = "Map of storage_credential values across all grants, keyed the same as var.grants except keys with no storage_credential are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.storage_credential if v.storage_credential != null && length(v.storage_credential) > 0 }
}
output "grants_table" {
  description = "Map of table values across all grants, keyed the same as var.grants except keys with no table are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.table if v.table != null && length(v.table) > 0 }
}
output "grants_volume" {
  description = "Map of volume values across all grants, keyed the same as var.grants except keys with no volume are omitted"
  value       = { for k, v in databricks_grants.grants : k => v.volume if v.volume != null && length(v.volume) > 0 }
}

