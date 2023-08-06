package com.example.crmproject.controllers;

import com.example.crmproject.Models.Employee;
import com.example.crmproject.Services.EmployeeService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class mainController
{
    @Autowired
    EmployeeService employeeService;

    @RequestMapping("/")
    public String welcomePage()
    {
        return "index";
    }

    @GetMapping("/home")
    public String openHomePage()
    {
        return "index";
    }

    @GetMapping("/LoginPage")
    public String openLoginPage()
    {
        return "register";
    }

    @GetMapping("/emplist")
    public String openEmpListPage()
    {
        return "employees-list";
    }

    @GetMapping("/profileAdmin")
    public String openAdminProfilePage()
    {
        return "profile-admin";
    }

    @PostMapping("/loginForm")
    public String loginForm(
            HttpSession httpSession,
            @RequestParam ("email1") String myemail,
            @RequestParam("pass1") String mypass,
            Model model


    )
    {
        String page = "login";
        if(myemail.equals("admin@gmail.com") && mypass.equals("admin123"))
        {

            page = "profile-admin";
        }
        else
        {
            //otherwise this is User
            Employee employee = employeeService.login(myemail);

            if(employee!=null && employee.getPassword().equals(mypass))
            {

                httpSession.setAttribute("session_employee",employee);
                 page = "profile-employee";
            }
            else
            {
                model.addAttribute("model_error", "Email id and password didnt matched");
                page = "login";
            }


        }
        return page;
    }

    @GetMapping("/addEmployee")
    public String openAddEmpPage()
    {
        return "add-employee";
    }
    @GetMapping("/SeeAllEmployee")
    public String openAllEmployeeList()
    {
        return "employees-list";
    }

    @PostMapping("/addEmpForm")
    @ResponseBody
    public ResponseEntity<Employee> registerEmployee(@RequestBody Employee employee) {
        try {
            Employee employee1 = employeeService.addEmployee(employee);

            if (employee1 != null) {
                return new ResponseEntity<>(employee1, HttpStatus.CREATED);
            } else {
                return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @GetMapping("/getAllEmployees")
    @ResponseBody
    public ResponseEntity<List<Employee>> getAllEmployees(Model model) {
        try {
            List<Employee> employees = employeeService.getAllEmployee();
            model.addAttribute("employeeList" ,employees);
            return new ResponseEntity<>(employees, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PostMapping("/logout")
    public String Logout(HttpSession session)
    {
        session.invalidate();
        return "register";


    }
}



