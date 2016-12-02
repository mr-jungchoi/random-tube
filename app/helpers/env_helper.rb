helpers do
  def youtube_token
    @youtube_token ||= Dotenv.load["YOUTUBE_TOKEN"]
  end
end
