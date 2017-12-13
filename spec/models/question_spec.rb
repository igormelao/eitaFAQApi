require 'rails_helper'

RSpec.describe Question, type: :model do
  describe "db structure" do
    it { is_expected.to have_db_column(:ask).of_type(:string) }
    it { is_expected.to have_db_column(:private).of_type(:boolean) }
    it { is_expected.to have_db_column(:user_id).of_type(:integer) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:ask) }
    it { is_expected.to validate_presence_of(:user) }
  end
end
