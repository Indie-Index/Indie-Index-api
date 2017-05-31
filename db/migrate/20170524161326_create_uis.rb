class CreateUis < ActiveRecord::Migration
  def change
    create_table :uis do |t|
      t.string :catagory
      t.string :convention
      t.string :overview
      t.string :carousel
      t.string :body

      t.timestamps null: false
    end
  end
end
