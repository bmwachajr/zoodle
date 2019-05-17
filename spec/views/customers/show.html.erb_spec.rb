require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :firstname => "Firstname",
      :lastname => "Lastname",
      :gender => "Gender",
      :email => "Email",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Firstname/)
    expect(rendered).to match(/Lastname/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
  end
end
