require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      :firstname => "MyString",
      :lastname => "MyString",
      :gender => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input[name=?]", "customer[firstname]"

      assert_select "input[name=?]", "customer[lastname]"

      assert_select "input[name=?]", "customer[gender]"

      assert_select "input[name=?]", "customer[email]"

      assert_select "input[name=?]", "customer[phone]"
    end
  end
end
