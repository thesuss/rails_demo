Feature: As a visitor,
  when I visit the application's landing page,
  I would like to be able to visit the articles page

  Background: Create db tables
  Given the following articles exist
    | title                | content                            |
    | A breaking news item | Some really breaking action        |
    | Learn Rails 5        | Build awesome rails applications   |

  Scenario: Following a link and getting to the article
    When I am on the landing page
    And I click "A breaking news item"
    Then I should be on "article" page
    
