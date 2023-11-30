@EndUserText.label: '2 Employee'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZC_MLB_2_Employee
  provider contract transactional_query as projection on ZR_MLB_Employee
{
    key EmployeeUuid,
    EmployeeNr,
    FirstName,
    LastName,
    EntryDate,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    EmployeeText,
    
    /* Associations */
    _Requests : redirected to composition child ZC_MLB_2_VAC_REQ
    
}
