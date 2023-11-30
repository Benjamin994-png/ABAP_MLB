@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee'
define root view entity ZR_MLB_Employee as select from zmlb_employee
composition [0..*] of ZR_MLB_VAC_REQ as _Requests
composition [0..*] of ZR_MLB_VAC_DEM as _Demands
association [1..1] to ZI_MLB_EMPLOYEETEXT    as _EmployeeText on $projection.EmployeeUuid = _EmployeeText.EmployeeUuid
{
    @ObjectModel.text.element: [ 'EmployeeText' ]
    key employee_uuid as EmployeeUuid,
    employee_nr as EmployeeNr,
    first_name as FirstName,
    last_name as LastName,
    entry_date as EntryDate,
    
    /* Administrative Data */
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    
    /*Transient Data */
    _EmployeeText.Name     as EmployeeText,
    
    /* Association */
    _Requests,
    _Demands
}
