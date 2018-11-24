require 'rails_helper'

RSpec.describe "url_mappings/edit", type: :view do
  before(:each) do
    @url_mapping = assign(:url_mapping, UrlMapping.create!(
      :target_url => "MyString",
      :short_path => "",
      :user_id => 1
    ))
  end

  it "renders the edit url_mapping form" do
    render

    assert_select "form[action=?][method=?]", url_mapping_path(@url_mapping), "post" do

      assert_select "input[name=?]", "url_mapping[target_url]"

      assert_select "input[name=?]", "url_mapping[short_path]"

      assert_select "input[name=?]", "url_mapping[user_id]"
    end
  end
end
