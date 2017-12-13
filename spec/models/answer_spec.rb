require 'rails_helper'

RSpec.describe Answer, type: :model do
  describe "db structure" do
    it { is_expected.to have_db_column(:response).of_type(:string) }
    it { is_expected.to have_db_column(:question_id).of_type(:integer) }
    it { is_expected.to have_db_column(:user_id).of_type(:integer) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:response) }
    it { is_expected.to validate_presence_of(:user) }
    it { is_expected.to validate_presence_of(:question) }
  end
end
