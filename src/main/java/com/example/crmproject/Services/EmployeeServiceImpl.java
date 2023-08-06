package com.example.crmproject.Services;

import com.example.crmproject.Models.Employee;
import com.example.crmproject.Repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService
{
    @Autowired
    EmployeeRepository employeeRepository;



    @Override
    public Employee addEmployee(Employee employee)
    {
        Employee employee1 = employeeRepository.save(employee);
        return employee;

    }

    @Override
    public List<Employee> getAllEmployee() {

            List<Employee> employeeList = employeeRepository.findAll();
            return employeeList;
    }
    @Override
    public Employee login(String email)
    {
        Employee emp = employeeRepository.findByEmail(email);
        return emp;
    }
}

