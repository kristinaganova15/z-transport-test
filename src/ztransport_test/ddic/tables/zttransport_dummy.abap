@EndUserText.label : 'Dummy table for Fiori transport test'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #ALLOWED
define table zttransport_dummy {

  key mandt       : abap.clnt not null;
  key id          : abap.char(10) not null;
      title       : abap.char(40);
      description : abap.char(100);
      status      : abap.char(1);
      created_by  : syuname;
      created_at  : timestampl;

}
