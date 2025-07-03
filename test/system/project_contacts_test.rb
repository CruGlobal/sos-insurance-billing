require "application_system_test_case"

class ProjectContactsTest < ApplicationSystemTestCase
  setup do
    @project_contact = project_contacts(:one)
  end

  test "visiting the index" do
    visit project_contacts_url
    assert_selector "h1", text: "Project contacts"
  end

  test "should create project contact" do
    visit project_contacts_url
    click_on "New project contact"

    fill_in "Email", with: @project_contact.email
    fill_in "Name", with: @project_contact.name
    fill_in "Phone", with: @project_contact.phone
    fill_in "Project", with: @project_contact.project_id
    click_on "Create Project contact"

    assert_text "Project contact was successfully created"
    click_on "Back"
  end

  test "should update Project contact" do
    visit project_contact_url(@project_contact)
    click_on "Edit this project contact", match: :first

    fill_in "Email", with: @project_contact.email
    fill_in "Name", with: @project_contact.name
    fill_in "Phone", with: @project_contact.phone
    fill_in "Project", with: @project_contact.project_id
    click_on "Update Project contact"

    assert_text "Project contact was successfully updated"
    click_on "Back"
  end

  test "should destroy Project contact" do
    visit project_contact_url(@project_contact)
    click_on "Destroy this project contact", match: :first

    assert_text "Project contact was successfully destroyed"
  end
end
