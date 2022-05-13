package com.example.jspcrud;

import java.time.LocalDate;

public class Employee {
    protected int id;
    protected String first_name;
    protected String last_name;

    protected LocalDate date_of_birth;


    public Employee(){}

    public Employee(String first_name,String last_name,LocalDate date_of_birth){
        super();
        this.first_name=first_name;
        this.last_name=last_name;
        this.date_of_birth=date_of_birth;

    }
    public Employee(int id, String first_name, String last_name,LocalDate date_of_birth){
        super();
        this.id=id;
        this.first_name=first_name;
        this.last_name=last_name;
        this.date_of_birth=date_of_birth;

    }

    public int getId(){
        return id;
    }

    public void SetId(int id) {
        this.id=id;
    }

    public String getFirst_name(){
        return first_name;
    }
    public void setFirst_name(String first_name){
        this.first_name=first_name;
    }

    public String getLast_name(){
        return last_name;
    }

    public void setLast_name(String last_name){
        this.last_name=last_name;
    }

    public LocalDate getDate_of_birth(){ return date_of_birth;}

    public void setDate_of_birth(LocalDate date_of_birth){this.date_of_birth=date_of_birth;}

}

