class CreateRssItems < ActiveRecord::Migration[6.1]
  def change
    create_table :rss_items do |t|
      t.string :title, null:false
      t.string :link, null:false
      t.text :description
      t.text :subject
      t.datetime :pubdate, null:false
      t.references :feed, null: false, foreign_key: true

      t.timestamps
    end
  end
end
