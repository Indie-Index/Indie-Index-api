# frozen_string_literal: true
class Ui < ActiveRecord::Base
  belongs_to :user

  validates :catagory, presence: true
  validates :convention, presence: true
  validates :overview, presence: true
  validates :carousel, presence: true
  validates :body, presence: true
end
