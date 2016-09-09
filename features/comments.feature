Feature: As a visitor,
  when I visit the an article landing page,
  I would like to see a comment form

Background: Create db tables
Given the following articles exist
  | title                | content                            |
  | A breaking news item | Some really breaking action        |
  | Learn Rails 5        | Build awesome rails applications   |

Scenario: Seeing the comment section
  Given I am on "A breaking news item"
  Then I should see 0 comments
  Then I should see "Add a comment"
  And I should see a "Create Comment" button


Scenario: Adding a comment
  Given I am on "A breaking news item"
  And I fill in "Commenter" with "thesuss"
  And I fill in "Email" with "thesuss"
  And I fill in "Body" with "thesuss comments"
  And I press "Create Comment" button
  When I am on "A breaking news item"
  Then I should see 1 comments
