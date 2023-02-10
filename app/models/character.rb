# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie
    return Movie.where({ :id => self.movie_id }).at(0)
  end

  def actor
    return Actor.where({ :id => self.actor_id}).at(0)
  end
end
