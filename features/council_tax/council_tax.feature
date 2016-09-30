@council_tax
@single_person_discount
@regression
Feature:
  As a Revenues Manager, I want a straightforward application for Single Person Discount to be automatically processed
  by Northgate.So that we can eliminate manual processing of straightforward applications and instead put greater resources
  to difficult cases

  Background:
	Given I visit the Redbridge Council homepage
	And I logged in to the Redbridge Council site

  @707 @691 @wip
  Scenario: Apply for Single Person Discount: two registered, one has died 'straightforward'
	Given I am applying for the Council Tax single person discount
	And I start the process
	And I enter the correct address of the property
	And I enter the account number
	And I select the only person living at that property
	And I select my occupation for the single person discount
	And the other person died living at that property
	And I enter the date of death
	And I select the relationship
	When I enter that nobody is living at that property
	Then I get the summary page with all the information entered
	And all the information entered is correctly displaying