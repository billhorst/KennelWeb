package com.bill.controllers;

import com.bill.spring4kennel.dao.DAOInterface;
import com.bill.spring4kennel.dao.Spring4KennelFileImpl;
import com.bill.spring4kennel.dto.Animal;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author bill
 */
@Controller
public class DefaultController {

    DAOInterface dao = new Spring4KennelFileImpl();

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(ModelMap map) {
        map.put("msg", "msg from the controller");
        return "index";
    }

    @RequestMapping(value = "/displayAnimalSearchPage", method = RequestMethod.GET)
    public String displayAnimalSearchPage(ModelMap map) {
        map.put("msg", "msg from animal search page");
        return "animalSearchPage";
    }

    @RequestMapping(value = "/displayAddNewAnimalPage", method = RequestMethod.GET)
    public String displayAddNewAnimalPage(ModelMap map) {
        map.put("msg", "msg from the add new animal page");
        return "addNewAnimalPage";
    }

    @RequestMapping(value = "/displayAnimalList", method = RequestMethod.GET)
    public String displayAnimalList(ModelMap map) {

        //hard code an animals for test
        //----------------------------
//        Animal a = new Animal();
//        Animal b = new Animal();
//
//        a.setName("Reitan");
//        a.setBreed("Mix");
//        a.setGender("f");
//        a.setAge(15);
//        a.setDisposition("Nice");
//        a.setWeight(5);
//        //a.setNum(0);
//
//        b.setName("Brooklyn");
//        b.setBreed("Lab");
//        b.setGender("m");
//        b.setAge(8);
//        b.setDisposition("Nice");
//        b.setWeight(50);
//        //b.setNum(1);
//
//        dao.addAnimal(a);
//        dao.addAnimal(b);
        //-----------------------------
        map.put("animalList", dao.viewAnimals());
        return "displayAnimalList";
    }

    @RequestMapping(value = "/getAnimalList", method = RequestMethod.GET)
    public String getAnimalList(HttpServletRequest req, ModelMap map) {

        List<Animal> animalList = dao.viewAnimals();

        map.addAttribute("animalList", animalList);

        return "displayAnimalList";

    }

    @RequestMapping(value = "/addNewAnimal", method = RequestMethod.POST)
    public String addNewAnimal(HttpServletRequest req, RedirectAttributes ra) {

        String name = req.getParameter("name");
        String breed = req.getParameter("breed");
        String gender = req.getParameter("gender");
        String age = req.getParameter("age");
        String disposition = req.getParameter("disposition");
        String weight = req.getParameter("weight");

        Animal a = new Animal();
        a.setName(name);
        a.setBreed(breed);
        a.setGender(gender);
        a.setAge(Integer.parseInt(age));
        a.setDisposition(disposition);
        a.setWeight(Double.parseDouble(weight));

        dao.addAnimal(a);
        ra.addFlashAttribute("addedMessage", "ANIMAL ADDED.");

        return "redirect:displayAnimalList";
    }

    @RequestMapping(value = "/deleteAnimal", method = RequestMethod.GET)
    public String deleteAnimal(HttpServletRequest req, RedirectAttributes ra) {
        int animalNum = Integer.parseInt(req.getParameter("number"));
        dao.deleteAnimal(animalNum);
        ra.addFlashAttribute("deletedMessage", "ANIMAL DELETED");
        return "redirect:displayAnimalList";
    }

    @RequestMapping(value = "/editAnimalPage", method = RequestMethod.GET)
    public String editAnimalPage(HttpServletRequest req, ModelMap map) {
        int animalNum = Integer.parseInt(req.getParameter("number"));
        Animal a = dao.getAnimal(animalNum);
        map.addAttribute("animal", a);
        return "editAnimalPage";
    }

    @RequestMapping(value = "/editAnimal", method = RequestMethod.POST)
    public String editAnimal(@ModelAttribute("animal") Animal a,
            HttpServletRequest req, BindingResult result, RedirectAttributes ra) {   
        if (result.hasErrors()) {
            return "editAnimalPage";
        }
        Animal n = new Animal();
        String name = req.getParameter("name");
        String breed = req.getParameter("breed");
        String gender = req.getParameter("gender");
        String age = req.getParameter("age");
        String disposition = req.getParameter("disposition");
        String weight = req.getParameter("weight");
        String number = req.getParameter("num");
        
        n.setName(name);
        n.setBreed(breed);
        n.setGender(gender);
        n.setAge(Integer.parseInt(age));
        n.setDisposition(disposition);
        n.setWeight(Double.parseDouble(weight));
        n.setNum(Integer.parseInt(number));
        
        dao.deleteAnimal(Integer.parseInt(number));
        dao.updateAnimal(n);
        
        ra.addFlashAttribute("editedMessage", "ANIMAL EDIT SUCCESSFUL");
        
        return "redirect:displayAnimalList";
    }

}
