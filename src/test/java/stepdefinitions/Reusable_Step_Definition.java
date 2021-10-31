package stepdefinitions;

import io.cucumber.java.en.Then;
import utilities.ReusableMethods;

import java.io.IOException;

public class Reusable_Step_Definition {
    @Then("take a screenshot")
    public void takeAScreenshot() throws IOException {

        ReusableMethods.getScreenshot("capturing_screenhot");

    }
}
