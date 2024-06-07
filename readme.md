# Demo project with configured different Robot tests
## Selenium
1. Install Poetry
2. Install dependencies
3. Run [selenium tests](tests/selenium_tests.robot) with `poetry run robot tests/selenium_tests.robot`  

Selenium tests are utilizing SeleniumLibrary. To handle custom steps, create [custom keywords](keywords/selenium_custom_keywords.py)

### Notes
- Not sure how to debug the tests. I have checked log.html file for the info
- PyCharm has [RobotFramework](https://plugins.jetbrains.com/plugin/21066-robotframework-helper) Helper plugin to higlight the syntax
- Example of run command:
```shell
poetry run robot --outputdir test-results/ --variable BROWSER:Chrome --variable SERVER:https://coffee-cart.app/ tests/selenium_tests.robot
```


## Playwright
1. Isntall Node JS ??? 2
2. Install Poetry 
3. Install dependencies
4. Install the node dependencies: `run rfbrowser init` in your shell. [More details](https://github.com/MarketSquare/robotframework-browser)

## Notes
- [Keywords here](https://marketsquare.github.io/robotframework-browser/Browser.html)
- PyCharm plugin highlights Playwright tests as errors, but they run fine
- 