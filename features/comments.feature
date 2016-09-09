Feature: As a visitor,
  when I visit the an article landing page,
  I would like to see a comment form

Background: Create db tables
Given the following articles exist
  | title                | content                            |
  | A breaking news item | Some really breaking action        |
  | Learn Rails 5        | Build awesome rails applications   |

Scenario: Following a link and getting to the article
  Given I am on "A breaking news item"
  Then I should see "Add a comment"
  And I should see a "Create Comment" button
