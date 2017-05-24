class AddUserIdToUis < ActiveRecord::Migration
  def change
    add_reference :uis, :user, foreign_key: true
  end
end
