require 'action_view'
class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    CAT_COLORS = %W(black white brown orange).freeze

    validates :color, inclusion: CAT_COLORS
    validates :sex, inclusion: %w(M F)
    validates :birth_date, :color, :name, :sex, presence: true

    def age
        time_ago_in_words(birth_date)
    end
end
