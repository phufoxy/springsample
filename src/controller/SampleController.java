package controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.EmpDao;
import model.Emp;

@Controller
public class SampleController {
	@Autowired
	private EmpDao dao;

	@RequestMapping("/list")
	public ModelAndView showall() {
		List<Emp> list = dao.getEmployees();
		return new ModelAndView("index", "list", list);
	}

	@RequestMapping("empform")
	public ModelAndView showform() {
		return new ModelAndView("addform", "commnad", new Emp());
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("emp") Emp emp) {
		dao.save(emp);
		return new ModelAndView("redirect:/list");
	}

	@RequestMapping(value = "/deleteemp/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable int id) {
		dao.delete(id);
		return new ModelAndView("redirect:/list");
	}

	@RequestMapping(value = "/editemp/{id}")
	public ModelAndView edit(@PathVariable int id) {
		Emp emp = dao.getEmpById(id);
		return new ModelAndView("edit", "command", emp);
	}

	/* It updates model object. */
	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public ModelAndView editsave(@ModelAttribute("emp") Emp emp) throws SQLException {
		System.out.println(emp.getName());
		dao.update(emp);
		return new ModelAndView("redirect:/list");
	}
}
