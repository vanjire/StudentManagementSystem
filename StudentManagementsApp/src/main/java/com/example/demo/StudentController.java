package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ch.qos.logback.core.model.Model;

@Controller
public class StudentController {
	@Autowired
	StudentRepository repo;
		@RequestMapping("/ex")
		public String hello() {
			return "ex.jsp";
		}
		@RequestMapping("/admin")
		public String admin()
		{
			return "admin.jsp";
		}
		@RequestMapping("/addsdata")
		public String hpi(){
			return "addstudent.jsp";
		}
		@PostMapping("/addstudent")
		public String addStudent(StudentEntity student) {
			int cou=repo.countByCourseAndAdmissionYear(student.getCourse(), student.getAdmissionYear())+1;
			student.setRollNumber(cou);
			repo.save(student);
			return "redirect:/allstudents";
		}
		@RequestMapping("/allstudents")
		public String allStudents(ModelMap mp) {
			mp.put("students", repo.findByDeletedFalse());
			return "alstudents.jsp";
		}
		
		@PostMapping("/findName")
		public String findByName(@RequestParam String name,ModelMap mp) {
			mp.put("students", repo.findByFirstName(name));
			return "alstudents.jsp";
		}
		@PostMapping("/findId")
		public String findByName(@RequestParam long id,ModelMap mp) {
			StudentEntity st= repo.findById(id).orElse(null);
			mp.put("s",st);
			return "fndid.jsp";
		}
		@RequestMapping("/update")
		public String up(){
			return "update.jsp";
		}
		@PostMapping("/updateHere")
		public String uph(@RequestParam Integer rollNumber,@RequestParam String course, @RequestParam String firstName,
				@RequestParam String lastName,
				@RequestParam String middleName,
				@RequestParam String dateOfBirth,
				@RequestParam String email ) {
			StudentEntity student=repo.findByRollNumberAndCourse(rollNumber,course);
			
				student.setEmail(email);
				student.setFirstName(firstName);
				student.setLastName(lastName);
				student.setMiddleName(middleName);
				student.setDateOfBirth(dateOfBirth);
				repo.save(student);
		
			return "redirect:/allstudents";
}
		@PostMapping("/delete")
		public String delete(@RequestParam long id ){
			StudentEntity student=repo.findById(id).orElse(null);
			if(student!=null) {
			student.setDeleted(true);
			repo.save(student);
			}return "redirect:/allstudents";
		}
		@RequestMapping("/de")
		public String gd() {
			return "delete.jsp";
		}
}
