require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :firstname => "MyString",
      :lastname => "MyString",
      :gender => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do

      assert_select "input[name=?]", "customer[firstname]"

      assert_select "input[name=?]", "customer[lastname]"

      assert_select "input[name=?]", "customer[gender]"

      assert_select "input[name=?]", "customer[email]"

      assert_select "input[name=?]", "customer[phone]"
    end
  end
end
