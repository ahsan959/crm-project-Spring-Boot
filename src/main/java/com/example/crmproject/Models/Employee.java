package com.example.crmproject.Models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Primary;

@Entity
public class Employee
{
     @Id
     @GeneratedValue(strategy = GenerationType.IDENTITY)
     private int empId;

     private String name;

     private String email;

     private String phone;

     public int getEmpId() {
          return empId;
     }

     public void setEmpId(int empId) {
          this.empId = empId;
     }

     public String getName() {
          return name;
     }

     public void setName(String name) {
          this.name = name;
     }

     public String getEmail() {
          return email;
     }

     public void setEmail(String email) {
          this.email = email;
     }

     public String getPhone() {
          return phone;
     }

     public void setPhone(String phone) {
          this.phone = phone;
     }
}
