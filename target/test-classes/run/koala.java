package run;

import com.intuit.karate.junit5.Karate;

public class koala {
	@Karate.Test
	Karate testRunner() {
		return Karate.run("classpath:features/koala.feature");
		
	}

}
