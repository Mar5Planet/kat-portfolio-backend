class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :img
      t.string :desc
      t.string :title
      t.string :category

      t.timestamps
    end
  end
end
