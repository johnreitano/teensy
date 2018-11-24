json.extract! url_mapping, :id, :target_url, :short_path, :user_id, :created_at, :updated_at
json.url url_mapping_url(url_mapping, format: :json)
