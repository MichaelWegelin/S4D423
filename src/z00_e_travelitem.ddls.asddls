@EndUserText.label: 'Extension View for Travel Item'
@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@AbapCatalog.extensibility: {
  extensible: true,
  allowNewDatasources: false,
  dataSources: [ 'Item' ],
  elementSuffix: 'Z00'
}
@Metadata.ignorePropagatedAnnotations: true
define view entity Z00_E_TravelItem as select from z00_tritem as Item
{
    key item_uuid as ItemUuid
}
