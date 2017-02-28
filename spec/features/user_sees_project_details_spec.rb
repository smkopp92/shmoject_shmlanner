# As a user
# I want to see the details of a project
# So I can learn more about each project
#
#
# Acceptance Criteria:
#
# [x] On the projects index page, the name of each project should be a link to the project's show page.
# [x] On a project's show page, I should see the name and description (if any) of the project.
require "rails_helper"

feature "user sees projects show page" do
  let!(:project1) { Project.create(name: "Destroy all Humans", description: "Ezra's secret plot") }
  scenario "user visits show page from project index page" do
    visit projects_path

    expect(page).to have_link(project1.name)

    click_link project1.name

    expect(current_path).to eq project_path(project1)
  end
  scenario "user sees project details on show page" do
    visit project_path(project1)

    expect(page).to have_content "Name: #{project1.name}"
    expect(page).to have_content "Description: #{project1.description}"
  end
end
