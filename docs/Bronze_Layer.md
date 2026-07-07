# Bronze Layer

## Purpose

The Bronze Layer stores raw business data after ingestion into the Landing layer.

Objectives:

- Preserve source records
- Add ingestion metadata
- Enable auditability
- Support incremental loading
- Preserve historical data

Metadata Columns

- LOAD_TIMESTAMP
- BATCH_ID
- RECORD_STATUS

No business transformations occur in this layer.