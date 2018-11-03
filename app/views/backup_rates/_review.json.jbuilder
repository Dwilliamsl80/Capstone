json.extract! review, :id, :reviewerID, :userID, :rating, :description, :created_at, :updated_at
json.url review_url(review, format: :json)
