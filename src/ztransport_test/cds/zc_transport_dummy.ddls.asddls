@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transport Dummy'
@Metadata.allowExtensions: true
@ObjectModel.usageType: { dataClass: #TRANSACTIONAL, serviceQuality: #C, sizeCategory: #S }
@Search.searchable: true
define root view entity ZC_TRANSPORT_DUMMY
  as projection on ZI_TRANSPORT_DUMMY
{
  key id          as Id,

      @EndUserText.label: 'Title'
      @Search.defaultSearchElement: true
      title       as Title,

      @EndUserText.label: 'Description'
      @Search.defaultSearchElement: true
      description as Description,

      @EndUserText.label: 'Status'
      status      as Status,

      @EndUserText.label: 'Created By'
      created_by  as CreatedBy,

      @EndUserText.label: 'Created At'
      created_at  as CreatedAt
}
