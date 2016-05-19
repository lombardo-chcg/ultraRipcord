get '/content_boss/get_content' do
  options = Content.all.count
  chosen_media = Content.find(rand(options))
  chosen_media.short_description
  if request.xhr?
    # vienna.sample
    content_type :json
    { playlist: vienna.sample }.to_json
  else
    "whoops"
  end
end
