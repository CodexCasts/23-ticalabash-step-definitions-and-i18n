Given /^I am on the Home Screen$/ do
  element_exists("view")
 
end


And(/^I turn (on|off) auto correct$/) do |on_or_off|
  set_auto_correct_type(on_or_off.to_sym)
end

Then(/^I touch the text field$/) do
  touch('UITextField')
  wait_for_keyboard
end

When(/^I type "([^"]*)" and touch done$/) do |typed|
  keyboard_enter_text typed
  tap_keyboard_action_key
end

Then(/^the text should be "([^"]*)"$/) do |expected|
  actual = query('UITextField', :text).first
  expect(actual).to be == expected
end

When(/^I (tap|double tap) the shift key$/) do |tap_type|
  if tap_type == 'tap'
    gesture = 'tap()'
  else
    gesture = 'doubleTap()'
  end
  result = uia("uia.keyboard().buttons()['shift'].#{gesture}")

  # There is no property on the Shift button that can tell us if it is inactive,
  # active, or locked.
  expect(result['status']).to be == 'success'
  #sleep(0.4)
end

 