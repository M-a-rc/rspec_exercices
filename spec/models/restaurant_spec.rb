require 'rails_helper'
require 'restaurant'

RSpec.describe Restaurant, type: :model do
  let(:restaurant) { Restaurant.new(name: 'Resto', city: 'Town') }

  it 'Restaurant validation' do
    expect(restaurant.valid?).to eq true
  end

  it 'Should not be valid without a name' do
    restaurant = Restaurant.new(city: 'town')
    expect(restaurant.valid?).to eq false
  end

  it 'Should not be valid without a city' do
    restaurant = Restaurant.new(name: 'bistro')
    expect(restaurant.valid?).to eq false
  end

  it 'Restaurant #full_name' do
    expect(restaurant.full_name).to eq 'Resto, in Town'
  end
end
