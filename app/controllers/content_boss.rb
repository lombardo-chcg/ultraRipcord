get '/content_boss/get_content' do
  # vienna = ['PL-mSV3w33pTTEELPX-KFH2WjWlUFMYKcJ','RD8NBbI_d72bo']
  count = Content.all.count
  content = Content.find(rand(1...count))
  p content.url
  if request.xhr?
    # vienna.sample
    content_type :json
    { url: content.url, #content.url,
      content_type: content.content_type,
      description: content.short_description,
    }.to_json
  else
    "whoops"
  end
end
