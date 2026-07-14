# Z Transport Test

Minimal ABAP backend for transport testing. Dummy table + RAP layer; build the Fiori app later in BAS.

## Objects

| Type | Name |
|------|------|
| Package | `ZTRANSPORT_TEST` |
| Table | `ZTTRANSPORT_DUMMY` |
| CDS (interface) | `ZI_TRANSPORT_DUMMY` |
| CDS (consumption) | `ZC_TRANSPORT_DUMMY` |
| Behavior | Managed BO on `ZI_TRANSPORT_DUMMY` |

## Import into SAP

1. Create a **transportable package** `ZTRANSPORT_TEST` in SE80/ADT.
2. Pull this repo via **abapGit**, or copy `src/ztransport_test/` into ADT.
3. Activate in order: table → CDS views → behavior → handler class.
4. Later in BAS: create OData service from `ZC_TRANSPORT_DUMMY`, then generate the Fiori app.

## Quick smoke test

```abap
INSERT zttransport_dummy FROM @( VALUE #(
  id          = 'TEST000001'
  title       = 'Hello transport'
  description = 'Dummy row for transport test'
  status      = 'N'
  created_by  = sy-uname
  created_at  = cl_abap_tstmp=>utclong_current( )
) ).
COMMIT WORK.
```

## Transport test checklist

- [ ] Assign objects to a transport request in dev
- [ ] Change a field label on `ZC_TRANSPORT_DUMMY`
- [ ] Insert a test row
- [ ] Release and import transport in target system
- [ ] Activate all objects in target
- [ ] Verify table data in `SE16` / `SE16N`

## Layout

```
src/ztransport_test/
  package.devc.xml
  ddic/tables/zttransport_dummy.abap
  cds/
    zi_transport_dummy.ddls.asddls
    zc_transport_dummy.ddls.asddls
    zi_transport_dummy.bdef.abdef
  classes/
    zbp_i_transport_dummy.abap
```

## Notes

- No OData service or Fiori UI yet — add those in ADT/BAS when ready.
- Package name is not stored in git; map the repo folder to your package on import.
