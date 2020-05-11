package com.zjy.spring.model;

public class test_Stu {
    private String name;
    private String pwd;

    @Override
    public String toString() {
        return "test_Stu{" +
                "name='" + name + '\'' +
                ", pwd='" + pwd + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }
}
