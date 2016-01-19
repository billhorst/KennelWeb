package com.bill.spring4kennel.dao;

import com.bill.spring4kennel.dto.Animal;
import java.util.ArrayList;

/**
 *
 * @author Bill
 */
public interface DAOInterface {
    
    public ArrayList viewAnimals();
    public void addAnimal(Animal a);
    public Animal getAnimal(Integer number);
    public ArrayList searchAnimals(String name);
    public void deleteAnimal(Integer num);
    public void updateAnimal(Animal a);
    public int getMaxAnimalNum();
    
}
