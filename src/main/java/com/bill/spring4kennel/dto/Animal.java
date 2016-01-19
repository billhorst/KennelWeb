package com.bill.spring4kennel.dto;

import java.util.Objects;

/**
 *
 * @author Bill
 */
public class Animal {
    
    private Integer num;
    private String name;
    private String breed;
    private String gender;
    private int age;
    private String disposition;
    private double weight;

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getDisposition() {
        return disposition;
    }

    public void setDisposition(String disposition) {
        this.disposition = disposition;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 79 * hash + Objects.hashCode(this.num);
        hash = 79 * hash + Objects.hashCode(this.name);
        hash = 79 * hash + Objects.hashCode(this.breed);
        hash = 79 * hash + Objects.hashCode(this.gender);
        hash = 79 * hash + this.age;
        hash = 79 * hash + Objects.hashCode(this.disposition);
        hash = 79 * hash + (int) (Double.doubleToLongBits(this.weight) ^ (Double.doubleToLongBits(this.weight) >>> 32));
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Animal other = (Animal) obj;
        if (this.age != other.age) {
            return false;
        }
        if (Double.doubleToLongBits(this.weight) != Double.doubleToLongBits(other.weight)) {
            return false;
        }
        if (!Objects.equals(this.name, other.name)) {
            return false;
        }
        if (!Objects.equals(this.breed, other.breed)) {
            return false;
        }
        if (!Objects.equals(this.gender, other.gender)) {
            return false;
        }
        if (!Objects.equals(this.disposition, other.disposition)) {
            return false;
        }
        if (!Objects.equals(this.num, other.num)) {
            return false;
        }
        return true;
    }
    
    
    
}