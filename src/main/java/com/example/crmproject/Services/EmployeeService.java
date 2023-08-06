package com.example.crmproject.Services;


import com.example.crmproject.Models.Employee;

import java.util.List;

public interface EmployeeService
{
    public Employee login(String email);
    Employee addEmployee(Employee employee);
    List<Employee> getAllEmployee();

}
