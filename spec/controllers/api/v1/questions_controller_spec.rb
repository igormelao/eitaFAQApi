require 'rails_helper'

RSpec.describe Api::V1::QuestionsController, type: :controller do
  include Devise::Test::ControllerHelpers

  let!(:user)             { FactoryBot.create(:user) }
  let!(:question_private) { FactoryBot.create(:question, private: true,  user: user) }
  let!(:question_public)  { FactoryBot.create(:question, private: false, user: user) }

  before(:each) do
    request.env['HTTP_ACCEPT'] = 'application/json'
    @request.env['devise.mapping'] = Devise.mappings[:user]
    sign_in user
  end

  describe "GET #index" do


    before(:each) do
      question_private.save
      question_public.save

      get :index
    end

    it "returns http success" do
      expect(response).to  have_http_status(200)
    end

    it "assigns all public questions as @questions" do
      expect(assigns(:questions)).to eq([question_public])
      expect(assigns(:questions)).to_not eq([question_private])
    end

  end

  describe "GET #show" do
    before(:each) do
      question_public.save

      get :show, params: { id: question_public.id }
    end

    it "returns http success" do
      expect(response).to  have_http_status(200)
    end

    it "assigns the requested question as @question" do
      @question_hash = JSON.parse(response.body)
      expect(@question_hash["question"]["ask"]).to eq(question_public.ask)
    end
  end
end
