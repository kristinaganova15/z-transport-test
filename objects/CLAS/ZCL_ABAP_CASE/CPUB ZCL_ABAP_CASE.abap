CLASS zcl_abap_case DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC ABSTRACT.


  PUBLIC SECTION.

    CLASS-METHODS:
      snake RETURNING VALUE(result) TYPE REF TO zif_abap_case,
      kebab RETURNING VALUE(result) TYPE REF TO zif_abap_case,
      camel RETURNING VALUE(result) TYPE REF TO zif_abap_case.
