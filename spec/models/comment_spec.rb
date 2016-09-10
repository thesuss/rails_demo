require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @article = FactoryGirl.create(:article)
  end

  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :commenter }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :body }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :commenter }
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :body }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:comment, article_id: @article.id)).to be_valid
    end
  end

end
