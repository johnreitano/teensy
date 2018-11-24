class CreateUrlMappings < ActiveRecord::Migration[5.2]
  def change
    create_table :url_mappings do |t|
      t.string :target_url
      t.string :short_path
      t.integer :user_id

      t.timestamps
    end
  end
end
