# Z Transport Test

Minimal ABAP backend for transport testing, structured like `sap-znlp`.

## Objects

| Type | Name |
|------|------|
| Package | `ZTRANSPORT_TEST` |
| Table | `ZTTRANSPORT_DUMMY` |
| CDS (interface) | `ZI_TRANSPORT_DUMMY` |
| CDS (consumption) | `ZC_TRANSPORT_DUMMY` |
| Behavior (interface) | `ZI_TRANSPORT_DUMMY` |
| Behavior (consumption) | `ZC_TRANSPORT_DUMMY` |
| Handler | `ZBP_I_TRANSPORT_DUMMY` |

## Repo layout (like sap-znlp)

```
src/ztransport_test/
  package.devc.xml
  zttransport_dummy.tabl.xml
  zi_transport_dummy.ddls.asddls
  zi_transport_dummy.ddls.xml
  zi_transport_dummy.ddls.baseinfo
  zc_transport_dummy.ddls.asddls
  zc_transport_dummy.ddls.xml
  zc_transport_dummy.ddls.baseinfo
  zi_transport_dummy.bdef.asbdef
  zi_transport_dummy.bdef.xml
  zc_transport_dummy.bdef.asbdef
  zc_transport_dummy.bdef.xml
  zbp_i_transport_dummy.clas.abap
  zbp_i_transport_dummy.clas.xml
```

## Import into SAP

1. Create transportable package `ZTRANSPORT_TEST`.
2. Pull via abapGit (Online/Offline) with `FOLDER_LOGIC=FULL`.
3. Activate: table → I CDS → C CDS → I bdef → C bdef → handler class.
4. Later in BAS: add OData service from `ZC_TRANSPORT_DUMMY`, then generate Fiori app.

## Notes

- Flat package folder — no `ddic/`, `cds/`, `classes/` subfolders.
- Tables use `.tabl.xml`, behavior uses `.bdef.asbdef`, classes use `.clas.abap` + `.clas.xml`.
- OData service binding not included yet — add when you build the Fiori app in BAS.
