@EndUserText.label: '2 Vacation Request'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
define view entity ZC_MLB_2_VAC_REQ as projection on ZR_MLB_VAC_REQ
{
    key RequestUuid,
    @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_MLB_EMPLOYEEVH', element: 'EmployeeUuid' } }]
    EmployeeUuid,
    Approver,
    StartDate,
    EndDate,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.7
    ReqComment,
    @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_MLB_StatusVH', element: 'StatusText' } }]
    Status,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    StatusCriticality,
    StatusText,
    EmployeeText,
    /* Associations */
    _Employee : redirected to parent ZC_MLB_2_Employee
}
