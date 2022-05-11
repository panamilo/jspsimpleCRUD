package com.example.jspcrud;


public class Employee {
    protected int id;
    protected String first_name;
    protected String last_name;


    public Employee(){}

    public Employee(String first_name,String last_name){
        super();
        this.first_name=first_name;
        this.last_name=last_name;

    }
    public Employee(int id,String first_name,String last_name){
        super();
        this.id=id;
        this.first_name=first_name;
        this.last_name=last_name;

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

}

