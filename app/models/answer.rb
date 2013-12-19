class Answer < ActiveRecord::Base
  belongs_to :quest
  validates :text, presence: true
end
