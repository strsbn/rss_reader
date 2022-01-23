class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :title
      t.string :link
      t.text :description
      t.text :subject
      t.date :pubdate

      t.timestamps
    end
  end
end
