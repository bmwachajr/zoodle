require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :firstname => "Firstname",
        :lastname => "Lastname",
        :gender => "Gender",
        :email => "Email",
        :phone => "Phone"
      ),
      Customer.create!(
        :firstname => "Firstname",
        :lastname => "Lastname",
        :gender => "Gender",
        :email => "Email",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
