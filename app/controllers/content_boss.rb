get '/content_boss/get_content' do
  vienna = ['PL-mSV3w33pTTEELPX-KFH2WjWlUFMYKcJ','RD8NBbI_d72bo']
  if request.xhr?
    # vienna.sample
    content_type :json
    { playlist: vienna.sample }.to_json
  else
    "whoops"
  end
end
