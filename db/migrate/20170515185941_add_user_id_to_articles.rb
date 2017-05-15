# frozen_string_literal: true

class AddUserIdToArticles < ActiveRecord::Migration
  def change
    add_reference :articles, :user, foreign_key: true
  end
end
