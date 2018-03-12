package edu.mum.coffee.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import edu.mum.coffee.domain.Person;

import edu.mum.coffee.service.PersonService;


public class PersonWebServiceController {

	@Autowired
	private PersonService personService;
	@Autowired
	
	
  @GetMapping(path="/persons")
  public List<Person> getPersons(@RequestParam("email") String email){	  
	  return personService.findByEmail(email);
      }
  //get person by id
  @GetMapping(path="/persons/{id}")
  public Person getPersons(@PathVariable Long id){	  
	  return personService.findById(id);
      }
	
    //add-person
  @PostMapping(path="/persons/add")
  public String  addPerson(@RequestBody Person person){	  
	  personService.savePerson(person);
	  return "ok";
      }
  
  @DeleteMapping(path="/persons/remove")
  public String  removePerson(@RequestBody Person person){	  
	  personService.removePerson(person);
	  return "ok";
      }
  

  
}
