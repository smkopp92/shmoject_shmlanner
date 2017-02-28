# ```no-highlight
# As a user
# I want to see the members of each project
# So I know who is working on the project
# ```
#
# Acceptance Criteria:
#
# [x] On a project's show page, I should see the first name, last name, and email (if any) of each user who is working on the project.
require "rails_helper"

feature "user sees project members on show page" do
  let(:project1) { Project.create(name: "Destroy all Humans", description: "Ezra's secret plot") }
  let(:user1) { User.create(first_name: "Ezra", last_name: "Robot", email: "Iamtotallyahuman@please.believeme") }
  let(:user2) { User.create(first_name: "Seb", last_name: "Awesomesauce", email: "Iamtotallyawesome@please.believeme") }
  let!(:assignment1) { Assignment.create(user: user1, project: project1) }
  let!(:assignment2) { Assignment.create(user: user2, project: project1) }

  scenario "user visits show page and sees list of users associated to project" do
    visit project_path(project1)

    expect(page).to have_content user1.first_name
    expect(page).to have_content user1.last_name
    expect(page).to have_content user1.email
    expect(page).to have_content user2.first_name
    expect(page).to have_content user2.last_name
    expect(page).to have_content user2.email
  end
end
