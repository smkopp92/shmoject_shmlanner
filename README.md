#### Tasks

* Tasks must have a name.
* Tasks can optionally have a description and a due date.
* Tasks can optionally be assigned to a single user. (Tasks can also remain unassigned.)
* A task must belong to a single project.

#### Projects
* A project has a collection of individual tasks assigned to it.

### Satisfy User Stories

Write an acceptance test for each user story and get the tests to pass.

```no-highlight
As a user
I want to view a list of all projects
So I know what projects are ongoing
```

Acceptance Criteria:

* On the projects index page, I should see the name of each project.

```no-highlight
As a user
I want to see the details of a project
So I can learn more about each project
```

Acceptance Criteria:

* On the projects index page, the name of each project should be a link to the project's show page.
* On a project's show page, I should see the name and description (if any) of the project.

```no-highlight
As a user
I want to see the members of each project
So I know who is working on the project
```

Acceptance Criteria:

* On a project's show page, I should see the first name, last name, and email (if any) of each user who is working on the project.

```no-highlight
As a user
I want to see the tasks of each project
So I know what needs to completed in the project
```

Acceptance Criteria:

* On a project's show page, I should see all the name of each task as well as the first and last name of the user assigned to the task (if there is someone assigned to the task).
