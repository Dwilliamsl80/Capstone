class Rating < ApplicationRecord
  #has_many :rated_by_users
  #has_many :rated_users
  #belongs_to :user, primary_key: :user1_id
  #belongs_to :user, foreign_key: :user2_id

  scope :rated_users, ->(user) { where("user1_id = ?", user) }
  scope :rated_by_users,  ->(user) { where("user2_id = ?", user) }

  def self.avg_rating (user) 
  		sql = "SELECT AVG(rating) FROM ratings WHERE user2_id = " + user.id.to_s + ";"
  		ratings = ActiveRecord::Base.connection.execute(sql).to_a[0][0]
  end

  def self.user_rated_by_user (user1, user2)
    sql = "SELECT * FROM `ratings` WHERE user1_id = " + user1.id.to_s + " AND user2_id = " + user2.id.to_s + " LIMIT 1;"
    @rating = Rating.find_by_sql(sql)
  end
end
