require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :name => "Name",
        :bunk => "Bunk",
        :white => 1,
        :orange => 2,
        :blue => 3,
        :paid => "",
        :alternate => "Alternate"
      ),
      stub_model(Order,
        :name => "Name",
        :bunk => "Bunk",
        :white => 1,
        :orange => 2,
        :blue => 3,
        :paid => "",
        :alternate => "Alternate"
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Bunk".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Alternate".to_s, :count => 2
  end
end
