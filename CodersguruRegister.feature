Feature: Regester private user on Codersguru website

  Scenario Outline: Register valid private user with no errors
    Given I'm on website on website "https://men-men-s-01.codersguru.pl/"
    And I click button "Załóż konto"
    When I click on button "Prywatnie"
    And I register user with "<email>" "<name>" "<surname>" "<password>" "<city>" "<postal_code>" "<street>" "<house_number>"
    And I click on checkbox "Zapoznałem się z regulaminem"
    And click on button "Zarejestruj się"
    Then Main website opens with regustered user's name displayed on the left
    And user is registered

    Examples:
      |email       |name |surname |password |city |postal_code|street  | house_number|
      |kuala@gmail.com|Ola  |Kowalska|konfacela|Radom|00-234     |Morelowa|4            |
