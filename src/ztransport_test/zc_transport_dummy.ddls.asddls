@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Transport Dummy'

@UI.headerInfo: { typeName: 'Dummy Item',
                  typeNamePlural: 'Dummy Items',
                  title.value: 'Title',
                  description.value: 'Description' }

define root view entity ZC_TRANSPORT_DUMMY
  provider contract transactional_query
  as projection on ZI_TRANSPORT_DUMMY
{
  key Id,

      @EndUserText.label: 'Title'
      @UI.lineItem: [ { position: 10 } ]
      @UI.selectionField: [ { position: 10 } ]
      Title,

      @EndUserText.label: 'Description'
      @UI.lineItem: [ { position: 20 } ]
      @UI.selectionField: [ { position: 20 } ]
      Description,

      @EndUserText.label: 'Status'
      @UI.lineItem: [ { position: 30 } ]
      Status,

      @EndUserText.label: 'Created By'
      @UI.lineItem: [ { position: 40 } ]
      CreatedBy,

      @EndUserText.label: 'Created At'
      @UI.lineItem: [ { position: 50 } ]
      CreatedAt
}
