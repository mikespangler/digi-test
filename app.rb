# def cloudfront
#   AWS::CloudFront.new(
#     access_key_id: ENV['AWS_ACCESS_KEY_ID'],
#     secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
#     ).client
# end

get '/:filename' do
  filename = params[:filename]
  video_url = "d1c6ne8ajn3h3m.cloudfront.net/#{filename}"
  erb :player, :locals => { :video_url => video_url }
end
