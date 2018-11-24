require 'rails_helper'

RSpec.describe "url_mappings/new", type: :view do
  before(:each) do
    assign(:url_mapping, UrlMapping.new(
      :target_url => "MyString",
      :short_path => "",
      :user_id => 1
    ))
  end

  it "renders new url_mapping form" do
    render

    assert_select "form[action=?][method=?]", url_mappings_path, "post" do

      assert_select "input[name=?]", "url_mapping[target_url]"

      assert_select "input[name=?]", "url_mapping[short_path]"

      assert_select "input[name=?]", "url_mapping[user_id]"
    end
  end
end
