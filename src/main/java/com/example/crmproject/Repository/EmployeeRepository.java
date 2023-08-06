package com.example.crmproject.Repository;

import com.example.crmproject.Models.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee,Integer>
{
      Employee findByEmail(String email);
}
