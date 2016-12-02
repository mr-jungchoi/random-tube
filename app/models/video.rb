class Video < ActiveRecord::Base
  validates :youtube_id, presence: true, uniqueness: true

  def self.parse(youtube_response)
    youtube_hash = JSON.parse(youtube_response)
    youtube_id = youtube_hash["items"][rand(0..49)]["id"]["videoId"]
    self.new(youtube_id: youtube_id)
  end
end
