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

Given(/^I am on "([^"]*)"$/) do |name|
  @article = Article.find_by(title: name)
  visit article_path(@article.id)
end

Then(/^I am on "([^"]*)" page$/) do |title|
  expect(find('h1')).to have_content(title)
end

Then(/^I should see a "([^"]*)" button$/) do |button|
  expect(page).to have_button button
end

Then(/^I should see (\d+) comments$/) do |number|
  expect(find('number')).to have_content(number)
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |element, text|
  fill_in element, with: text
end

Given(/^I press "([^"]*)" button$/) do |button|
  click_button button
end

Then(/^My name should be linked to "([^"]*)"$/) do |email|
#found here: http://stackoverflow.com/questions/10740521/how-to-test-mailto-link-in-cucumber
  expect(page).to have_xpath("//a[contains(@href,email)]")
end
