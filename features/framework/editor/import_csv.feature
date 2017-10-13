Feature: The framework can be uploaded as CSV
  In order to copy a framework from csv file
  As an editor
  I need to upload a CSV file of the framework

  @smoke @editor @framework @case-file @csv
  Scenario: 1013-1215 A CSV file can be uploaded and downloaded
    Given I log in as a user with role "Editor"
    And I am on the homepage
    When I click "Import framework"
    Then I should see the import dialogue
    When I click "Import Spreadsheet file"
    And I upload the "ccsso_ela_item" file
    And I go to the uploaded framework
    And I download the framework "ccsso_ela_item" file
    Then the downloaded framework should match the uploaded one

