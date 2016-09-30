class BirthRegistrationPage < SitePrism::Page

  set_url "/appointment/"

  element :appointment_landing_confirmation, :xpath, "//h2[text() = 'Book appointments']"
  element :register_office, :xpath, "//div[text() = 'Register Office']"
  element :select_register_office, "a[href='/appointment/Services?serviceArea=Register%20Office']"

  element :register_a_birth, :xpath, "//h3[text() = 'Register a birth']"
  element :select_register_a_birth, "a[href='/appointment/ServiceNextStepSelector?serviceId=48342']"

  element :redbridge_home_birth_option, :xpath, "//a[text() = 'Redbridge (Home birth)']"

  element :contact_number, "input[placeholder='Contact number']"
  element :num_of_birth_dropdown_menu, :xpath, "//div[@class='controls']//select"
  element :num_of_birth_option, "option[value='1']"
  element :date_of_birth, :xpath,  "//input[@data-val-required = 'Date of birth is required']"
  element :next_button, :xpath , "//a[text() = 'next']"
  element :relation_to_child, :xpath, "//a[text() = 'Mother']"
  element :yes_answer_at_birth_time, :xpath, "//a[text() = 'Yes']"

  element :confirming_appointment_date, "input[value='Select your appointment date']"

  element :morning_booking_date_and_time, :xpath, ".//*[@id='scroll-appointment-detail']/div[2]/div[2]/div[5]/div[1]/h3"
  element :afternoon_booking_date_and_time, :xpath, ".//*[@id='scroll-appointment-detail']/div[2]/div[2]/div[5]/div[2]/h3"
  elements :booking_date_and_time_confirmation, ".no-list-type.ui-accordion-content.ui-helper-reset.ui-widget-content.ui-corner-bottom.ui-accordion-content-active>li>a"

  element :book_appointment_btn, "form[method='post'] input[value='Book']"

  element :appointment_confirmation_message, :xpath, "//h2[text() = 'Appointment successfully booked']"
  element :confirmed_breadcrumb_value, :xpath, "//div[@class='breadcrumb']//li[text() = 'Confirmed']"

  element :cancel_appointment, :xpath, "//td[@class='bookings-actions']//a[text() = 'Cancel']"
  element :yes_answer_cancel_appointment, :xpath, "//div[@class='cancel-confirmation']//a[text() = 'Yes']"
  element :cancel_confirmation_message, :xpath, "//div[@class='information']"
  element :future_appointments_message, :xpath, "//p[text() = 'You do not have any upcoming appointments']"

end