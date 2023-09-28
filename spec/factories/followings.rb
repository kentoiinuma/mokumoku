# frozen_string_literal: true

FactoryBot.define do
  factory :following do
    follower_id { 1 }
    followed_id { 1 }
  end
end
