require 'rails_helper'

RSpec.describe "wastes/new", type: :view do
  before(:each) do
    assign(:waste, Waste.new(
      :type => "",
      :content => "MyText",
      :rating => 1
    ))
  end

  it "renders new waste form" do
    render

    assert_select "form[action=?][method=?]", wastes_path, "post" do

      assert_select "input[name=?]", "waste[type]"

      assert_select "textarea[name=?]", "waste[content]"

      assert_select "input[name=?]", "waste[rating]"
    end
  end
end
