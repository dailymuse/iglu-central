-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.7.0
-- Generated: 2020-12-07 16:58 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.org_ietf_http_client_hints_1 (
    "schema_vendor"    VARCHAR(128)  ENCODE ZSTD      NOT NULL,
    "schema_name"      VARCHAR(128)  ENCODE ZSTD      NOT NULL,
    "schema_format"    VARCHAR(128)  ENCODE ZSTD      NOT NULL,
    "schema_version"   VARCHAR(128)  ENCODE ZSTD      NOT NULL,
    "root_id"          CHAR(36)      ENCODE RAW       NOT NULL,
    "root_tstamp"      TIMESTAMP     ENCODE ZSTD      NOT NULL,
    "ref_root"         VARCHAR(255)  ENCODE ZSTD      NOT NULL,
    "ref_tree"         VARCHAR(1500) ENCODE ZSTD      NOT NULL,
    "ref_parent"       VARCHAR(255)  ENCODE ZSTD      NOT NULL,
    "brands"           VARCHAR(5000) ENCODE ZSTD      NOT NULL,
    "is_mobile"        BOOLEAN       ENCODE RUNLENGTH NOT NULL,
    "architecture"     VARCHAR(4096) ENCODE ZSTD,
    "model"            VARCHAR(4096) ENCODE ZSTD,
    "platform"         VARCHAR(4096) ENCODE ZSTD,
    "platform_version" VARCHAR(4096) ENCODE ZSTD,
    "ua_full_version"  VARCHAR(4096) ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.org_ietf_http_client_hints_1 IS 'iglu:org.ietf/http_client_hints/jsonschema/1-0-0';
