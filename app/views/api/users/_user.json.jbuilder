json.extract! user, :id, :username, :description
json.created User.to_date(user)
json.authoredStoryIds []
json.followingIds []
json.followerIds []