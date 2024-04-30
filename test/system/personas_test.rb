require "application_system_test_case"

class PersonasTest < ApplicationSystemTestCase
  setup do
    @persona = personas(:one)
  end

  test "visiting the index" do
    visit personas_url
    assert_selector "h1", text: "Personas"
  end

  test "should create persona" do
    visit personas_url
    click_on "New persona"

    fill_in "Avatarurl", with: @persona.avatarUrl
    fill_in "Color", with: @persona.color
    fill_in "Guidanceprompt", with: @persona.guidancePrompt
    fill_in "Model", with: @persona.model
    fill_in "Name", with: @persona.name
    fill_in "Personalprompt", with: @persona.personalPrompt
    fill_in "Voice", with: @persona.voice
    click_on "Create Persona"

    assert_text "Persona was successfully created"
    click_on "Back"
  end

  test "should update Persona" do
    visit persona_url(@persona)
    click_on "Edit this persona", match: :first

    fill_in "Avatarurl", with: @persona.avatarUrl
    fill_in "Color", with: @persona.color
    fill_in "Guidanceprompt", with: @persona.guidancePrompt
    fill_in "Model", with: @persona.model
    fill_in "Name", with: @persona.name
    fill_in "Personalprompt", with: @persona.personalPrompt
    fill_in "Voice", with: @persona.voice
    click_on "Update Persona"

    assert_text "Persona was successfully updated"
    click_on "Back"
  end

  test "should destroy Persona" do
    visit persona_url(@persona)
    click_on "Destroy this persona", match: :first

    assert_text "Persona was successfully destroyed"
  end
end
