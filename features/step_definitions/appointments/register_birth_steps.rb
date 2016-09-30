Given(/^I am at the appointments section$/) do
  @register_page = BirthRegistrationPage.new
  @register_page.load
  expect(@register_page).to have_appointment_landing_confirmation
end

Given(/^I select the registrar office$/) do
  @register_page.register_office.click
  @register_page.select_register_office.click
  wait_for_an_element_to_appear
end

Given(/^I select the register a birth option$/) do
  expect(@register_page).to have_register_a_birth
  @register_page.register_a_birth.click
  @register_page.select_register_a_birth.click
  wait_for_an_element_to_appear
end

Given(/^I select the Redbridge \(Home birth\)$/) do
  expect(@register_page).to have_redbridge_home_birth_option
  @register_page.redbridge_home_birth_option.click
  wait_for_an_element_to_appear
end

Given(/^I fill in all the required information$/) do
  @register_page.contact_number.set "0123456789"
  sleep 2
  page.find_by_id('input_field_dec_783_6').find("option[value='1']").select_option
  sleep 2
  #@register_page.num_of_birth_dropdown_menu.click
  #@register_page.num_of_birth_option.click
  @register_page.date_of_birth.set "20/09/2016"
  @register_page.next_button.click
  wait_for_an_element_to_appear
  sleep 2
end

Given(/^I select mother as a relationship with the child$/) do
  @register_page.relation_to_child.click
  wait_for_an_element_to_appear
  @register_page.yes_answer_at_birth_time.click
  sleep 5
end

Given(/^I select the appointment date$/) do
  expect(@register_page).to have_confirming_appointment_date
  @register_page.confirming_appointment_date.click
  wait_for_an_element_to_appear
end

Given(/^I cancel the appointment$/) do
  expect(@register_page).to have_cancel_appointment
  @register_page.cancel_appointment.click
  wait_for_an_element_to_appear
end

When(/^I book the appointment date with time$/) do
  @register_page.booking_date_and_time.click
  sleep 1
  @register_page.booking_date_and_time_confirmation.first.click
  sleep 1
  expect(@register_page).to have_book_appointment_btn
  @register_page.book_appointment_btn.click
  wait_for_an_element_to_appear
end

When(/^I confirm to cancel the appointment$/) do
  expect(@register_page).to have_yes_answer_cancel_appointment
  @register_page.yes_answer_cancel_appointment.click
  wait_for_an_element_to_appear
end

Then(/^I should get the appointment confirmation summary details$/) do
  expect(@register_page).to have_appointment_confirmation_message
  expect(@register_page).to have_confirmed_breadcrumb_value
end

Then(/^I should get the appointment cancellation confirmation$/) do
  expect(@register_page).to have_cancel_confirmation_message
  expect(@register_page).to have_future_appointments_message
end