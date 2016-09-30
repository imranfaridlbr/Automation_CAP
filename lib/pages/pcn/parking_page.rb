class ParkingPage < SitePrism::Page
  attr_reader :file_upload_id

  def initialize
    @file_upload_id = ".filename10.file-to-upload"
  end

  set_url "/Parkingpcn/"

  #Parking page elements
  element :parking_permit_area, "form[action='/Parking/SaveApplicantReference']"
  element :pcn_container, ".pcn-info-container.pcn-details.pcn-info-box"
  element :pcn, "input[name='Pcn']"
  element :vrn, "input[name='Vrn']"
  element :submit_button, ".btn.btn-primary.submit-pcn-search"
  element :pcn_details, :xpath, "//a[text() = 'Make a challenge to the council']"
  elements :pcn_challenge, ".pcn-info-box a"

  element :terms_and_conditions_text_para1, :xpath, "html/body/div[2]/div/section[2]/div[2]/div/div/div[3]/p[2]"
  element :terms_and_conditions_text_para2, :xpath, "html/body/div[2]/div/section[2]/div[2]/div/div/div[3]/p[3]"
  element :terms_and_conditions_text_para3, :xpath, "html/body/div[2]/div/section[2]/div[2]/div/div/div[3]/p[4]"
  element :terms_and_conditions_text_para4, :xpath, "html/body/div[2]/div/section[2]/div[2]/div/div/div[3]/p[5]"
  element :terms_and_conditions_text_para5, :xpath, "html/body/div[2]/div/section[2]/div[2]/div/div/div[3]/p[6]"

  element :challenge_penalty_charge_btn, :xpath, "//a[text() = 'Challenge a Penalty Charge Notice using the online form']"
  element :terms_and_cond_checkbox, "label[for='confirm-challenge'] input[type='checkbox']"
  element :challenge_reason_radiobox, "input[currentindex='0']"
  element :challenge_area_next_btn, ".btn.btn-primary.float_right.goto-rep-reason"
  element :goto_rep_reason_next_btn, ".btn.btn-primary.float_right.goto-rep-reason"

  element :challenge_reason_description, ".span6.freetext0.free-text-area"
  element :file_upload_component, ".challenge-textarea0 .control-group.upload-border"
  element :confirmation_checkbox, "div[class='control-group'] input[class='confirm-grounds']"
  element :summarize_next_btn, ".btn.btn-primary.float_left.challenge-summarise"

  element :review_challenge, ".well"
  element :submit_challenge_btn, ".float_right.challenge-submit"

  elements :log_represntation_btn, ".tab-pane.active a"
  element :no_registered_owner, "input[value='noRegister']"
  element :yes_registered_owner, "input[value='yesRegister']"
  element :yes_permission, "input[value='yesPermit']"
  element :proof_of_permission, :xpath, ".//*[@id='vehiclePermissionProof']"
  element :registered_owner_challenge_reason, "label[for='pcnRadio-A'] input[value='A']"
  element :registered_owner_description, "textarea[name='PcnRepresentationReasonCustomViewModel.RepresentationReasonSet[0].FreeText']"
  element :formal_represntation_submit_btn, ".float_left.challenge-submit"
  element :next_btn, ".btn.btn-primary.float_right.challenge-summarise"

end