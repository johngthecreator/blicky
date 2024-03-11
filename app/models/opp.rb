class Opp < ApplicationRecord
    belongs_to :user
    serialize :progress, coder: YAML, type: Array

    after_initialize do |b|
        b.progress = [] if b.progress == nil
    end
end
