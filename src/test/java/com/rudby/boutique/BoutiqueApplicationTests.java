package com.rudby.boutique;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.regex.Pattern;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class BoutiqueApplicationTests {

	@Test
	void PatronNombre() { 
		assertEquals(Pattern.matches("^[a-zA-Z]{4,}(?: [a-zA-Z]+){0,2}$","Cesars Jose"),true);
	}
	@Test
	void PatronEmail() { 
		assertEquals(Pattern.matches("^(.+)@(\\S+)$","cpinedo428@gmail.com"),true);
	}
	

}
