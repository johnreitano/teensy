FactoryBot.define do
  factory :url_mapping do
    target_url { "MyString" }
    short_path { "" }
    user_id { 1 }
  end
end
