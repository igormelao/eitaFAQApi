require 'rails_helper'

RSpec.describe Api::V1::QuestionsController, type: :routing do
  it { expect(get: "/api/v1/questions").to   route_to("api/v1/questions#index") }
  it { expect(get: "/api/v1/questions/1").to route_to("api/v1/questions#show", id: "1") }
end
