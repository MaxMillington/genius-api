class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :text_url
      t.string :tag

      t.timestamps null: false
    end
  end
end
