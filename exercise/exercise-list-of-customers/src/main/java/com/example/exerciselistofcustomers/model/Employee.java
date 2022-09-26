package com.example.exerciselistofcustomers.model;

public class Employee {
    private String empName;
    private String empDob;
    private String empAddress;
    private String empImage;

    public Employee(String empname, String empDob, String empAddress, String empImage) {
        super();
        this.empName = empname;
        this.empDob = empDob;
        this.empAddress = empAddress;
        this.empImage = empImage;
    }

    public String getEmpname() {
        return empName;
    }

    public void setEmpname(String empname) {
        this.empName = empname;
    }

    public String getEmpDob() {
        return empDob;
    }

    public void setEmpDob(String empDob) {
        this.empDob = empDob;
    }

    public String getEmpAddress() {
        return empAddress;
    }

    public void setEmpAddress(String empAddress) {
        this.empAddress = empAddress;
    }

    public String getEmpImage() {
        return empImage;
    }

    public void setEmpImage(String empImage) {
        this.empImage = empImage;
    }

    @Override
    public String toString() {
        return this.empName;
    }
}
