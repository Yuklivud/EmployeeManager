package com.spring.mvc.service;

import com.spring.mvc.dao.EmployeeDAO;
import com.spring.mvc.entity.Employee;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private EmployeeDAO employeeDAO;

    @Transactional
    @Override
    public List<Employee> getAllEmployees() {
        return employeeDAO.getAllEmployees();
    }
}
