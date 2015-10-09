class AddNameToTexts < ActiveRecord::Migration
  def change
    add_column :texts, :name, :string
  end
end
