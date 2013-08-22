require 'spec_helper'

describe "orders/new" do
  before(:each) do
    assign(:order, stub_model(Order,
      :name => "MyString",
      :bunk => "MyString",
      :white => 1,
      :blue => 1,
      :orange => 1,
      :alternate => "MyString",
      :paid => 1
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path, :method => "post" do
      assert_select "input#order_name", :name => "order[name]"
      assert_select "input#order_bunk", :name => "order[bunk]"
      assert_select "input#order_white", :name => "order[white]"
      assert_select "input#order_blue", :name => "order[blue]"
      assert_select "input#order_orange", :name => "order[orange]"
      assert_select "input#order_alternate", :name => "order[alternate]"
      assert_select "input#order_paid", :name => "order[paid]"
    end
  end
end
