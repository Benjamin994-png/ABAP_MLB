@EndUserText.label: 'Vacation Demand'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_MLB_VAC_DEM
   as projection on ZR_MLB_VAC_DEM
{
    key DemUuid,
    EmployeeUuid,
    CurrYear,
    VacDays,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    
    /* Associations */
    _Employee : redirected to parent ZC_MLB_Employee
}
