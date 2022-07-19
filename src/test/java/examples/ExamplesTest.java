package examples;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;

class ExamplesTest {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:examples")
                // .outputCucumberJson(true)
                .parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

    @Test
    void customPackage() {
        Results results = Runner.path("classpath:bdd/demo").parallel(1);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
