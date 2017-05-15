class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :Title
      t.string :Body

      t.timestamps null: false
    end
  end
end
