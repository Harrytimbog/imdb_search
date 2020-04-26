class Movie < ApplicationRecord
  searchkick
  belongs_to :director
  include PgSearch::Model
  multisearchable against: [:title, :syllabus]
end
