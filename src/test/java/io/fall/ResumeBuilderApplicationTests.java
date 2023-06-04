package io.fall;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ResumeBuilderApplicationTests {

	@Test
	void contextLoads() {
	}

	@Test
	void testAlwaysPasses() {
		assertEquals(1, 1);
	}

	@Test
	void testAlwaysFails() {
		assertEquals(1, 2);
	}
}
