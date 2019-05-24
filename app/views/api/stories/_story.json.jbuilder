json.extract! story, :id, :title, :lead_in, :body, :author_id
json.author story.author.username
json.storyClapUserIds []