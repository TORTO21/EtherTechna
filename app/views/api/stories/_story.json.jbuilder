json.extract! story, :id, :title, :lead_in, :body, :category, :author_id
json.author story.author.username
json.story_clap_user_ids []
json.image_url url_for(story.image) if story.image.attached?
json.created Story.to_date(story)