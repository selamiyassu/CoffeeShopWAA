package edu.mum.coffee.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import edu.mum.coffee.domain.Person;

import edu.mum.coffee.service.PersonService;

@Controller
public class PersonController {

	@Autowired
	private PersonService personService;

	@GetMapping({ "/user" })
	public String userPage() {
		return "user";
	}

	@PostMapping("/user")
	public String backToUser() {
		return "redirect:/user";
	}

	@GetMapping("/user/profile")
	public String profile(Principal principal, Model model) {
		String userEmail = principal.getName();
		List<Person> persons = personService.findByEmail(userEmail);
		Person user = null;
		for (Person person : persons) {
			if (person.getEmail().equals(userEmail)) {
				user = person;
				break;
			}
		}

		model.addAttribute("person", user);

		return "profile";
	}

	@GetMapping("/user/profile/update")
	public String updateUserProfie() {

		return "updateUserProfile";
	}

	@PostMapping("/user/profile/update")
	public String UpdatePersonProfile(Person person, @ModelAttribute("userData") Person user) {

		person.setEmail(user.getEmail());
		person.setEnable(true);

		personService.removePerson(user);
		personService.savePerson(person);
		return "successUpdateProfile";
	}

	@ModelAttribute("userData")
	public Person userData(Principal principal) {

		String userEmail = principal.getName();
		List<Person> persons = personService.findByEmail(userEmail);
		Person user = null;
		for (Person person : persons) {
			if (person.getEmail().equals(userEmail)) {
				user = person;
				break;
			}
		}

		return user;
	}

}
