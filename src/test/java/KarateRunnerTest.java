import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

//@KarateOptions(tags = "@ddt")
//@KarateOptions(tags = "@ddt,@rest")
//@KarateOptions(features = "classpath:featurefiles/karate01.feature")
//@KarateOptions(tags = "@select", features = "classpath:featurefiles/karate15db.feature")
//@KarateOptions(features = "classpath:featurefiles/KarateTestSuite4")


class KarateRunnerTest {
//Batch mode exexcution(running all files at once)
    @Test
    public void testrunAll() {
        Results res = Runner.parallel(getClass(), 2);
         generateReport(res.getReportDir());
    }

    public static void generateReport(String resDir)
    {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(resDir), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), "karateworkspace");
        ReportBuilder rb = new ReportBuilder(jsonPaths, config);
        rb.generateReports();
    }

}


//gradle test -Dkarate.options="--tags @ddt" (git command) (for running using gradle)

//java -jar karate-0.9.6.jar featurefiles\karate01.feature (for running using only karate jar)
//java -jar karate-0.9.6.jar -t "soap" featurefiles  (running using tag name in cmd)
//java -jar karate-0.9.6.jar -h  (all comands list)
//java -jar jenkins.war
