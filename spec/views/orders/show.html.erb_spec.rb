require 'spec_helper'

describe "orders/show" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :name => "Name",
      :bunk => "Bunk",
      :white => 1,
      :orange => 2,
      :blue => 3,
      :paid => "",
      :alternate => "Alternate"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Bunk/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(//)
    rendered.should match(/Alternate/)
  end
end
