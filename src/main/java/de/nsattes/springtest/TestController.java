package de.nsattes.springtest;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

	@RequestMapping(value = "/test/", method = RequestMethod.POST)
	public SimplePojo hello(@RequestBody SimplePojo pojo) {
		System.out.println(pojo.getText());

		return new SimplePojo(new Integer(1), "Hello World");
	}

}