class YT < 
  attr_reader :id

  def initialize(id)
    @id = id
  end

  def self.parse(youtube_response)
    id = JSON.parse(youtube_response)["items"]["id"]["videoId"]
    YT.new(id)
  end
end
