@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transport Dummy'
define root view entity ZI_TRANSPORT_DUMMY
  as select from zttransport_dummy
{
  key id,
      title,
      description,
      status,
      created_by,
      created_at
}
