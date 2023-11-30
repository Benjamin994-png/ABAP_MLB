@EndUserText.label: 'Vacation Request'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_MLB_VAC_REQ as projection on ZR_MLB_VAC_REQ
{
    key RequestUuid,
    EmployeeUuid,
    @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_MLB_ApproverVH', element: 'EmployeeUuid' } }]
    Approver,
    StartDate,
    EndDate,
    ReqComment,
    @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_MLB_StatusVH', element: 'Status' } }]
    Status,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    
    /* Transient Data */
    StatusText,
    EmployeeText,
    StatusCriticality,
    
    /* Associations */
    _Employee : redirected to parent ZC_MLB_Employee
}
