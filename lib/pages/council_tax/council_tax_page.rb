class CouncilTaxPage < SitePrism::Page

  set_url "/counciltaxdiscount/"

  element :start_button, "div[class='button-area'] button[type='button']"
  element :change_address, ".btn.btn-mini"
  element :search_postcode_box, ".searchAddress.input-block-level"
  element :find_address_button, :xpath, "//button[text() = 'Find address']"

  element :select_address_dropdown_menu, :xpath, "//*[@id='div_input_field']/div[2]/div[2]/div/div[1]/ul/li[1]//a"
  element :continue_btn, "button[data-bind='click: next']"
  element :council_tax_account_num, "input[value='Enter account number here']"
  element :account_num_continue_btn, ".float_right.btn.btn-primary.btn-step-continue.btn-get-ct-details"

  element :select_only_person, :xpath, ".//*[@id='Step3-result']/div[2]/input[1]"
  element :single_person_continue_btn, :xpath, ".//*[@id='Step3']/div[3]/button[2]"

  element :non_of_the_above_option, :xpath, "//input[@value = 'None of the above ( you may be entitled to single person discount)']"
  element :occupation_continue_btn, ".btn.btn.btn-primary.float_right.btn-custom-radio-button-continue"

  element :info_about_other_person, "input[value='No']"
  element :info_other_person_continue_btn, "a[currentdivid='dec_26111'].btn.btn-primary.float_right.btn-custom-radio-button-continue"

  element :deceased_option, "input[value='Deceased']"
  element :deceased_option_continue_btn, "a[currentdivid='dec_26114'].btn.btn-primary.float_right.btn-custom-radio-button-continue"

  element :date_of_death, :xpath, ".//*[@id='input_field_dec_26040_101']"
  element :death_date_continue_btn, :xpath, ".//*[@id='dec_26040']/div[2]/a[2]"
  element :relationship, :xpath, ".//*[@id='a_dec_26042_366']"
  element :relationship_continue_btn, :xpath, ".//*[@id='dec_26041']/div[3]/a[2]"

  element :more_people, "input[value='no']"
  element :more_people_continue_btn, ".float_right.btn.btn-primary.btn-step-continue.btn-step-continue-add-more-people"

  element :summary_table, "table[class='ct-summary']"
  element :declaration_checkbox, "input[class='step7-ct-declare']"

  element :summary_declare_continue_btn, ".float_right.btn.btn-primary.btn-step-continue.declare-continue-btn"

end