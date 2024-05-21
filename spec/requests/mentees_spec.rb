require 'rails_helper'

RSpec.describe 'Mentees', type: :request do
  describe 'GET /index' do
    it 'renders a mentee' do
      Mentee.create!(name: 'Lorena', email: 'lorena@email.com')
      get mentees_path
      expect(Mentee.all.last.name).to eq('Lorena')
      expect(response.body).to include('Lorena')
    end

    it 'returns http success' do
      get '/mentees'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'renders a mentee' do
      mentee = Mentee.create!(name: 'Lorena', email: 'lorena@email.com')
      get mentee_path(mentee.id)
      expect(response.body).not_to include('Lorena')
    end
  end
end
