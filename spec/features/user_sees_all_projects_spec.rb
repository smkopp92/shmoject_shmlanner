# As a user
# I want to view a list of all projects
# So I know what projects are ongoing

# Acceptance Criteria:

# [x] On the projects index page, I should see the name of each project.

require "rails_helper"

feature "user sees all projects" do
  let!(:project1) { Project.create(name: "Destroy all Humans", description: "Ezra's secret plot") }
  let!(:project2) { Project.create(name: "Destroy all Dogs", description: "Sebastian hates dogs") }

  scenario "user visits index page and sees all the projects" do
    visit projects_path

    expect(page).to have_content(project1.name)
    expect(page).to have_content(project2.name)
  end
end
