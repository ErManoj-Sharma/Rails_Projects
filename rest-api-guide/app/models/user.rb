class User < ApplicationRecord
  has_many :facts, class_name: "fact", foreign_key: "reference_id"
end
