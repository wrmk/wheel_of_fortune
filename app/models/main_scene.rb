class MainScene < ApplicationRecord
  validates :word, presence: true,length: { maximum: 20 }
end
