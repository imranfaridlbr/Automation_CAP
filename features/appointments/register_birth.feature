@register
@appointments
@register_birth
@regression
Feature: As a user, I want to make an appointment to register my child's birth

  Background:
	Given I visit the Redbridge Council homepage
	And I am logged in as a user to the Redbridge Council site

  @register @register_birth @cancel_appointment @wip
  Scenario: Register a child's birth
	Given I am at the appointments section
	And I select the registrar office
	And I select the register a birth option
	And I select the Redbridge (Home birth)
	And I fill in all the required information
	And I select mother as a relationship with the child
	And I select the appointment date
	When I book the appointment date with time
	Then I should get the appointment confirmation summary details
	And I am at the appointments section
	And I cancel the appointment
	When I confirm to cancel the appointment
	Then I should get the appointment cancellation confirmation