Feature: Identify all elements on form and submit

  Scenario: Complete the registration form
  	Given Chrome browser is opened
    When testcodecontest website is launched
    And the form is submitted with all fields filled
    Then Successfully submitted message should be shown

  Scenario Outline: Open testcodecontest.com website and fill multiple values
  	Given Chrome browser is opened
    When testcodecontest website is launched
    And the form is filled with "<firstname>" "<lastname>" "<sex>" "<yrs>" "<date_stopped>"
    And the form is filled with "<tea>" "<excited_about>" "<continent>" and "<selenium_commands>"
    And clicked on submit button
    Then Go back to Welcome page and verify title
    Examples: 
      | firstname | lastname | sex    | yrs | date_stopped | tea        | excited_about      | continent | selenium_commands   |
      | Pradeep   | kumar    | Male   | 2   | 1/1/2000     | Red Tea    | Break              | Europe    | Navigation Commands |
      | Greg      | Mont     | Male   | 1   | 1/1/2001     | Black Tea  | Harmless Addiction | Asia      | Browser Commands    |
      | Rex       | Morg     | Male   | 3   | 3/1/2010     | oolong tea | Harmless Addiction | USA       | Wait Commands       |
      | Captain   | Cook     | Male   | 5   | 5/2/2010     | Red Tea    | Harmless Addiction | USA       | Switch Commands     |
      | Michele   | Bing     | Female | 5   | 5/2/2011     | Black Tea  | Harmless Addiction | USA       | Switch Commands     |

  Scenario: Open testcodecontest.com website and fill sample data
  	Given Chrome browser is opened
    When testcodecontest website is launched
    And the form is filled with invalid values
    And clicked on submit button
    Then Go back to Welcome page and verify title
    
   Scenario: Open testcodecontest.com website and attempt to submit form without filling mandatory fields
   	Given Chrome browser is opened
    When testcodecontest website is launched
    And Clicked on submit button without filling mandatory fields
    Then Error message should be shown
