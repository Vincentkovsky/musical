/* This file was generated by upbc (the upb compiler) from the input
 * file:
 *
 *     envoy/config/endpoint/v3/endpoint_components.proto
 *
 * Do not edit -- your changes will be discarded when the file is
 * regenerated. */

#include <stddef.h>
#include "upb/msg_internal.h"
#include "envoy/config/endpoint/v3/endpoint_components.upb.h"
#include "envoy/config/core/v3/address.upb.h"
#include "envoy/config/core/v3/base.upb.h"
#include "envoy/config/core/v3/config_source.upb.h"
#include "envoy/config/core/v3/health_check.upb.h"
#include "google/protobuf/wrappers.upb.h"
#include "udpa/annotations/status.upb.h"
#include "udpa/annotations/versioning.upb.h"
#include "validate/validate.upb.h"

#include "upb/port_def.inc"

static const upb_msglayout_sub envoy_config_endpoint_v3_Endpoint_submsgs[2] = {
  {.submsg = &envoy_config_core_v3_Address_msginit},
  {.submsg = &envoy_config_endpoint_v3_Endpoint_HealthCheckConfig_msginit},
};

static const upb_msglayout_field envoy_config_endpoint_v3_Endpoint__fields[3] = {
  {1, UPB_SIZE(12, 24), 1, 0, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {2, UPB_SIZE(16, 32), 2, 1, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {3, UPB_SIZE(4, 8), 0, 0, 9, _UPB_MODE_SCALAR | (_UPB_REP_STRVIEW << _UPB_REP_SHIFT)},
};

const upb_msglayout envoy_config_endpoint_v3_Endpoint_msginit = {
  &envoy_config_endpoint_v3_Endpoint_submsgs[0],
  &envoy_config_endpoint_v3_Endpoint__fields[0],
  UPB_SIZE(24, 48), 3, _UPB_MSGEXT_NONE, 3, 255,
};

static const upb_msglayout_field envoy_config_endpoint_v3_Endpoint_HealthCheckConfig__fields[2] = {
  {1, UPB_SIZE(0, 0), 0, 0, 13, _UPB_MODE_SCALAR | (_UPB_REP_4BYTE << _UPB_REP_SHIFT)},
  {2, UPB_SIZE(4, 8), 0, 0, 9, _UPB_MODE_SCALAR | (_UPB_REP_STRVIEW << _UPB_REP_SHIFT)},
};

const upb_msglayout envoy_config_endpoint_v3_Endpoint_HealthCheckConfig_msginit = {
  NULL,
  &envoy_config_endpoint_v3_Endpoint_HealthCheckConfig__fields[0],
  UPB_SIZE(16, 32), 2, _UPB_MSGEXT_NONE, 2, 255,
};

static const upb_msglayout_sub envoy_config_endpoint_v3_LbEndpoint_submsgs[3] = {
  {.submsg = &envoy_config_core_v3_Metadata_msginit},
  {.submsg = &envoy_config_endpoint_v3_Endpoint_msginit},
  {.submsg = &google_protobuf_UInt32Value_msginit},
};

static const upb_msglayout_field envoy_config_endpoint_v3_LbEndpoint__fields[5] = {
  {1, UPB_SIZE(16, 24), UPB_SIZE(-25, -41), 1, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {2, UPB_SIZE(4, 4), 0, 0, 14, _UPB_MODE_SCALAR | (_UPB_REP_4BYTE << _UPB_REP_SHIFT)},
  {3, UPB_SIZE(8, 8), 1, 0, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {4, UPB_SIZE(12, 16), 2, 2, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {5, UPB_SIZE(16, 24), UPB_SIZE(-25, -41), 0, 9, _UPB_MODE_SCALAR | (_UPB_REP_STRVIEW << _UPB_REP_SHIFT)},
};

const upb_msglayout envoy_config_endpoint_v3_LbEndpoint_msginit = {
  &envoy_config_endpoint_v3_LbEndpoint_submsgs[0],
  &envoy_config_endpoint_v3_LbEndpoint__fields[0],
  UPB_SIZE(32, 48), 5, _UPB_MSGEXT_NONE, 5, 255,
};

static const upb_msglayout_sub envoy_config_endpoint_v3_LedsClusterLocalityConfig_submsgs[1] = {
  {.submsg = &envoy_config_core_v3_ConfigSource_msginit},
};

static const upb_msglayout_field envoy_config_endpoint_v3_LedsClusterLocalityConfig__fields[2] = {
  {1, UPB_SIZE(12, 24), 1, 0, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {2, UPB_SIZE(4, 8), 0, 0, 9, _UPB_MODE_SCALAR | (_UPB_REP_STRVIEW << _UPB_REP_SHIFT)},
};

const upb_msglayout envoy_config_endpoint_v3_LedsClusterLocalityConfig_msginit = {
  &envoy_config_endpoint_v3_LedsClusterLocalityConfig_submsgs[0],
  &envoy_config_endpoint_v3_LedsClusterLocalityConfig__fields[0],
  UPB_SIZE(16, 32), 2, _UPB_MSGEXT_NONE, 2, 255,
};

static const upb_msglayout_sub envoy_config_endpoint_v3_LocalityLbEndpoints_submsgs[5] = {
  {.submsg = &envoy_config_core_v3_Locality_msginit},
  {.submsg = &envoy_config_endpoint_v3_LbEndpoint_msginit},
  {.submsg = &envoy_config_endpoint_v3_LedsClusterLocalityConfig_msginit},
  {.submsg = &envoy_config_endpoint_v3_LocalityLbEndpoints_LbEndpointList_msginit},
  {.submsg = &google_protobuf_UInt32Value_msginit},
};

static const upb_msglayout_field envoy_config_endpoint_v3_LocalityLbEndpoints__fields[7] = {
  {1, UPB_SIZE(8, 8), 1, 0, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {2, UPB_SIZE(20, 32), 0, 1, 11, _UPB_MODE_ARRAY | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {3, UPB_SIZE(12, 16), 2, 4, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {5, UPB_SIZE(4, 4), 0, 0, 13, _UPB_MODE_SCALAR | (_UPB_REP_4BYTE << _UPB_REP_SHIFT)},
  {6, UPB_SIZE(16, 24), 3, 4, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {7, UPB_SIZE(24, 40), UPB_SIZE(-29, -49), 3, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {8, UPB_SIZE(24, 40), UPB_SIZE(-29, -49), 2, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
};

const upb_msglayout envoy_config_endpoint_v3_LocalityLbEndpoints_msginit = {
  &envoy_config_endpoint_v3_LocalityLbEndpoints_submsgs[0],
  &envoy_config_endpoint_v3_LocalityLbEndpoints__fields[0],
  UPB_SIZE(32, 56), 7, _UPB_MSGEXT_NONE, 3, 255,
};

static const upb_msglayout_sub envoy_config_endpoint_v3_LocalityLbEndpoints_LbEndpointList_submsgs[1] = {
  {.submsg = &envoy_config_endpoint_v3_LbEndpoint_msginit},
};

static const upb_msglayout_field envoy_config_endpoint_v3_LocalityLbEndpoints_LbEndpointList__fields[1] = {
  {1, UPB_SIZE(0, 0), 0, 0, 11, _UPB_MODE_ARRAY | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
};

const upb_msglayout envoy_config_endpoint_v3_LocalityLbEndpoints_LbEndpointList_msginit = {
  &envoy_config_endpoint_v3_LocalityLbEndpoints_LbEndpointList_submsgs[0],
  &envoy_config_endpoint_v3_LocalityLbEndpoints_LbEndpointList__fields[0],
  UPB_SIZE(8, 8), 1, _UPB_MSGEXT_NONE, 1, 255,
};

static const upb_msglayout *messages_layout[6] = {
  &envoy_config_endpoint_v3_Endpoint_msginit,
  &envoy_config_endpoint_v3_Endpoint_HealthCheckConfig_msginit,
  &envoy_config_endpoint_v3_LbEndpoint_msginit,
  &envoy_config_endpoint_v3_LedsClusterLocalityConfig_msginit,
  &envoy_config_endpoint_v3_LocalityLbEndpoints_msginit,
  &envoy_config_endpoint_v3_LocalityLbEndpoints_LbEndpointList_msginit,
};

const upb_msglayout_file envoy_config_endpoint_v3_endpoint_components_proto_upb_file_layout = {
  messages_layout,
  NULL,
  6,
  0,
};

#include "upb/port_undef.inc"

