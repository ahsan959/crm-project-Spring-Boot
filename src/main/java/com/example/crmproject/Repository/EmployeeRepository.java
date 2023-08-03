package com.example.crmproject.Repository;

import com.example.crmproject.Models.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepository extends JpaRepository<Employee,Integer>
{

}
