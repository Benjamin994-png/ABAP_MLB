@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Text'

define view entity ZI_MLB_EMPLOYEETEXT as select from zmlb_employee
{
    key employee_uuid as EmployeeUuid,
    first_name as FirstName,
    last_name as LastName,
    
    concat_with_space(first_name, last_name, 1) as Name
}
