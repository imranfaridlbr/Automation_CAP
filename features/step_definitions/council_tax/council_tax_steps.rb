Given(/^I am applying for the Council Tax single person discount$/) do
  @council_tax_page = CouncilTaxPage.new
  @council_tax_page.load
  expect(@council_tax_page).to have_start_button

end

Given(/^I start the process$/) do
  @council_tax_page.start_button.click
  wait_for_an_element_to_appear
end

Given(/^I enter the correct address of the property$/) do
  @council_tax_page.change_address.click
  @council_tax_page.search_postcode_box.set "FLAT 6, HOLLY HOUSE, 2-8 GOODMAYES ROAD, Goodmayes, ILFORD, IG3 9UN"
  @council_tax_page.find_address_button.click
  @council_tax_page.select_address_dropdown_menu.click
  @council_tax_page.continue_btn.click
  wait_for_an_element_to_appear
end

Given(/^I enter the account number$/) do
  @council_tax_page.council_tax_account_num.set "47307218"
  expect(@council_tax_page).to have_account_num_continue_btn
  @council_tax_page.account_num_continue_btn.click
end

Given(/^I select the only person living at that property$/) do
  wait_for_an_element_to_appear
  @council_tax_page.select_only_person.click
  expect(@council_tax_page).to have_single_person_continue_btn
  @council_tax_page.single_person_continue_btn.click
  wait_for_an_element_to_appear
end

Given(/^I select my occupation for the single person discount$/) do
  @council_tax_page.non_of_the_above_option.click
  expect(@council_tax_page).to have_occupation_continue_btn
  @council_tax_page.occupation_continue_btn.click
  wait_for_an_element_to_appear
end

Given(/^the other person died living at that property$/) do
  @council_tax_page.info_about_other_person.click
  expect(@council_tax_page).to have_info_other_person_continue_btn
  @council_tax_page.info_other_person_continue_btn.click
  wait_for_an_element_to_appear
  @council_tax_page.deceased_option.click
  expect(@council_tax_page).to have_deceased_option_continue_btn
  @council_tax_page.deceased_option_continue_btn.click
  wait_for_an_element_to_appear
end

Given(/^I enter the date of death$/) do
  @council_tax_page.date_of_death.set "15/09/2016"
  wait_for_an_element_to_appear
  @council_tax_page.death_date_continue_btn.click
  wait_for_an_element_to_appear
end

Given(/^I select the relationship$/) do
  @council_tax_page.relationship.click
  expect(@council_tax_page).to have_relationship_continue_btn
  @council_tax_page.relationship_continue_btn.click
  wait_for_an_element_to_appear
end

When(/^I enter that nobody is living at that property$/) do
  @council_tax_page.more_people.click
  expect(@council_tax_page).to have_more_people_continue_btn
  @council_tax_page.more_people_continue_btn.click
  wait_for_an_element_to_appear
end

Then(/^I get the summary page with all the information entered$/) do
  expect(@council_tax_page).to have_summary_table
  wait_for_an_element_to_appear
  @council_tax_page.declaration_checkbox.click
  wait_for_an_element_to_appear
end

Then(/^all the information entered is correctly displaying$/) do
  expect(@council_tax_page).to have_summary_declare_continue_btn
end