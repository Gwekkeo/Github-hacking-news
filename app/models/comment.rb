class Comment < ApplicationRecord
	has_many :subcomments
end
