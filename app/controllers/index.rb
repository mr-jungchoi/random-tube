YOUTUBE_URL = "https://www.googleapis.com/youtube/v3/"
SEARCH_QUERY = "search?part=snippet&q="

get '/' do
  @video = Video.new(youtube_id: "M7lc1UVf-VE")

  erb :index
end

get '/videos' do
  youtube_response = open(YOUTUBE_URL + SEARCH_QUERY + params[:search] + "&key=" + youtube_token).read
  binding.pry
  @video = YT.parse(youtube_response)

  erb :index
end
