from typing import Union
from SeleniumLibrary import SeleniumLibrary
from SeleniumLibrary.base import LibraryComponent, keyword
from selenium.webdriver.remote.webelement import WebElement

from robot.libraries.BuiltIn import BuiltIn


class MySeleniumKeywords:
    def __init__(self):
        self.selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')

    @keyword(name="Element Contains Text")
    def element_contains_text(
            self,
            locator: Union[WebElement, str],
            expected: str) -> None:
        # self.info(f"Verifying element '{locator}' contains text '{expected}'.")
        text = before_text = self.selenium_lib.find_element(locator).text
        if expected.lower() not in text.lower():
            raise AssertionError(f"The element '{locator}' does not contain the text '{expected}'.")
