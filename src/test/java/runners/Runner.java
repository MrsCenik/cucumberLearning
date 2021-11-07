package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)

@CucumberOptions(
        plugin = {
                "html:target/default-cucumber-reports.html",
                "json:target/json-reports/cucumber.json",
                "junit:target/xml-report/cucumber.xml",
                "rerun:target/failedRerun.txt"
        },

        features = "./src/test/resources/features",
        glue = "stepdefinitions", //Must
        tags = "@wip", //Optional. Without tags, runner runs all features
        dryRun = false //optional
        //Without dreRun(dryRun = false) is default,
        //we can not check completion error without seeing the browser

)
public class Runner {
}
/*
            * Runner           : is used to run feature files
            * @RunWith         : is used to run the class. Without this tag, Runner class will not be runnable
            * @CucumberOptions : is used to add feature path, step definition, tags, dryRun, report plug
            * features         : path of the features folder. this can point path of specific feature file
            * glue             : path of step definition folder. This can pint path of specific step definition
            * tags             : This marks which feature file to run. We add this tag in the  feature files.
            * dryRun           : dryRun is used to check if there is any missing JAVA CODE.
                                 * dryRun takes 2 values, true or false.
                                 * dryRun = false => Runs tests on the browser while checking if there is any JAVA code missing
                                 * dryRun = true  => Runs test without browser while checking if there is any JAVA code missing
 */