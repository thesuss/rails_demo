Given(/^I am on the landing page$/) do
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

When(/^I click "([^"]*)"$/) do |name|
  @article = Article.find_by(title: name)
  visit article_path(@article.id)
end

Then(/^I should be on "([^"]*)" page$/) do |arg1|
  expect(current_url).to eq article_path
end
