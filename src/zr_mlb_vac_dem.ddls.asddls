@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vacation Demand'

define view entity ZR_MLB_VAC_DEM as select from zmlb_vac_dem
association to parent ZR_MLB_Employee as _Employee on $projection.EmployeeUuid = _Employee.EmployeeUuid
{
    key dem_uuid as DemUuid,
    employee_uuid as EmployeeUuid,
    curr_year as CurrYear,
    vac_days as VacDays,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    
    /* Association */
    _Employee
}
