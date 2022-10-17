require 'rails_helper'

RSpec.describe 'foods/show', type: :view do
  before(:each) do
    assign(:food, Food.create!(
                    name: 'Name',
                    measurement_unit: 2,
                    price: 3,
                    quantity: 4
                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
