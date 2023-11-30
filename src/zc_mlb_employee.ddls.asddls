@EndUserText.label: 'Employee'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_MLB_Employee
  provider contract transactional_query as projection on ZR_MLB_Employee
{
    key EmployeeUuid,
    EmployeeNr,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.7
    FirstName,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.7
    LastName,
    EntryDate,
    
    /*Administrative Data*/
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    
    /*Transient Data*/
    EmployeeText,
    
    /* Association */
    _Requests : redirected to composition child ZC_MLB_VAC_REQ,
    _Demands : redirected to composition child ZC_MLB_VAC_DEM
    
}
