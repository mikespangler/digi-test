get '/' do
  # cf = AWS::CloudFront.new(
  #   :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
  #   :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'])
  # binding.pry
  # bucket = s3.buckets['beauty-test']
  # video = bucket.objects['oceans.mp4']
  #video = "https://s3-us-west-2.amazonaws.com/beauty-test/oceans.mp4"
  erb :index#, :locals => { :video => video }
end
