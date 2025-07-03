require "test_helper"

class ProjectContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_contact = project_contacts(:one)
  end

  test "should get index" do
    get project_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_project_contact_url
    assert_response :success
  end

  test "should create project_contact" do
    assert_difference("ProjectContact.count") do
      post project_contacts_url, params: { project_contact: { email: @project_contact.email, name: @project_contact.name, phone: @project_contact.phone, project_id: @project_contact.project_id } }
    end

    assert_redirected_to project_contact_url(ProjectContact.last)
  end

  test "should show project_contact" do
    get project_contact_url(@project_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_contact_url(@project_contact)
    assert_response :success
  end

  test "should update project_contact" do
    patch project_contact_url(@project_contact), params: { project_contact: { email: @project_contact.email, name: @project_contact.name, phone: @project_contact.phone, project_id: @project_contact.project_id } }
    assert_redirected_to project_contact_url(@project_contact)
  end

  test "should destroy project_contact" do
    assert_difference("ProjectContact.count", -1) do
      delete project_contact_url(@project_contact)
    end

    assert_redirected_to project_contacts_url
  end
end
