@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Transport Dummy'

define root view entity ZI_TRANSPORT_DUMMY
  as select from zttransport_dummy
{
  key id          as Id,
      title       as Title,
      description as Description,
      status      as Status,
      created_by  as CreatedBy,
      created_at  as CreatedAt
}
