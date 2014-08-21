get '/' do
  filename = params[:filename]
  video_url = "https://s3-us-west-2.amazonaws.com/beauty-test/oceans.mp4"
  erb :player, locals: { video_url: video_url }
end
