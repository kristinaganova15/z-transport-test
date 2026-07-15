class-pool .
*"* class pool for class ZCL_ABAP_CASE

*"* local type definitions
include ZCL_ABAP_CASE=================ccdef.

*"* class ZCL_ABAP_CASE definition
*"* public declarations
  include ZCL_ABAP_CASE=================cu.
*"* protected declarations
  include ZCL_ABAP_CASE=================co.
*"* private declarations
  include ZCL_ABAP_CASE=================ci.
endclass. "ZCL_ABAP_CASE definition

*"* macro definitions
include ZCL_ABAP_CASE=================ccmac.
*"* local class implementation
include ZCL_ABAP_CASE=================ccimp.

*"* test class
include ZCL_ABAP_CASE=================ccau.

class ZCL_ABAP_CASE implementation.
*"* method's implementations
  include methods.
endclass. "ZCL_ABAP_CASE implementation
