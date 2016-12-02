class Video < ActiveRecord::Base
  validates :youtube_id, presence: true, uniqueness: true

  def self.parse(youtube_response)
    youtube_id = JSON.parse(youtube_response)["items"]["id"]["videoId"]
    Video.new(youtube_id: youtube_id)
  end
end
