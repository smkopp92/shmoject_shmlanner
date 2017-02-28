# As a user
# I want to see the tasks of each project
# So I know what needs to completed in the project
# ```
#
# Acceptance Criteria:
#
# [] On a project's show page, I should see all the name of each task as well as the first and last name of the user assigned to the task (if there is someone assigned to the task).
require "rails_helper"

feature "user sees project tasks on show page" do
  let(:project1) { Project.create(name: "Destroy all Humans", description: "Ezra's secret plot") }
  let(:user1) { User.create(first_name: "Ezra", last_name: "Robot", email: "Iamtotallyahuman@please.believeme") }
  let(:user2) { User.create(first_name: "Seb", last_name: "Awesomesauce", email: "Iamtotallyawesome@please.believeme") }
  let!(:assignment1) { Assignment.create(user: user1, project: project1) }
  let!(:assignment2) { Assignment.create(user: user2, project: project1) }
  let!(:task1) { Task.create(name: "Assemble Robot Army", project: project1, user: nil) }
  let!(:task2) { Task.create(name: "Harness Solar Energy", project: project1, user: user1) }

  scenario "user visits show page and sees list of tasks associated to project" do
    visit project_path(project1)

    expect(page).to have_content task1.name
    expect(page).to have_content task2.name
    within ".tasks" do
      expect(page).to have_content user1.first_name
      expect(page).to have_content user1.last_name
    end
  end
end
