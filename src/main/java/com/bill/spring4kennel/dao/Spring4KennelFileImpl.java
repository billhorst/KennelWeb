package com.bill.spring4kennel.dao;

import com.bill.spring4kennel.dto.Animal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

/**
 *
 * @author Bill
 */
public class Spring4KennelFileImpl implements DAOInterface {

    HashMap<Integer, Animal> kennel = new HashMap<>();
    public static Integer number = 0;

    @Override
    public ArrayList viewAnimals() {
        Collection<Animal> animals = kennel.values();
        ArrayList<Animal> list = new ArrayList<>();
        list.addAll(animals);
        return list;
    }

    @Override
    public void addAnimal(Animal a) {
        a.setNum(number);
        kennel.put(number, a);
        number++;
    }

    @Override
    public Animal getAnimal(Integer number) {
        Animal a = kennel.get(number);
        return a;
    }

    @Override
    public ArrayList searchAnimals(String name) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleteAnimal(Integer num) {
        kennel.remove(num);
    }

    @Override
    public void updateAnimal(Animal a) {
        kennel.put(a.getNum(), a);
    }

    @Override
    public int getMaxAnimalNum() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
