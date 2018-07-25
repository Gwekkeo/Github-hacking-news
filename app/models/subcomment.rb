class Subcomment < ApplicationRecord
	belongs_to :comment, required: false
end
