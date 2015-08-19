Feature: Deal with Fugitives
	As a bounty hunter
	I want to maintain a list of fugitives
	So that I can help promote national security

Scenario: Add a Fugitive
	Given I am on the Home Screen
	When I touch "Add"
	Then I wait to see "Fugitive Name"
  Then I enter "text" into input field number 1
  Then the text should be "excitement"
	And take picture

Scenario: Select a Fugitive
	Given I am on the Home Screen
	When I touch "Jeff Haynie"
	And take picture


Scenario: Delete a Fugitive
	Given I am on the Home Screen
	When I touch "Nolan Wright"
	And I touch "Delete"
	Then I should not see "Nolan Wright"
	And take picture
