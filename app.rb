get '/:filename' do
  filename = params[:filename]
  video_url = "http://d1c6ne8ajn3h3m.cloudfront.net/#{filename}.mp4"
  erb :player, locals: { video_url: video_url }
end
