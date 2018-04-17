class MarsDb < ApplicationRecord
	validates :marsarr, uniqueness: true
end
