get '/content_boss/get_content' do
  # vienna = ['PL-mSV3w33pTTEELPX-KFH2WjWlUFMYKcJ','RD8NBbI_d72bo']
  # count = Content.all.count
  # content = Content.find(rand(1...count))
  # p content.url

  # classical_quartets = []
  # classical_piano = ['ck2KqficXoU']
  # classical_concerto = []
  # no_preferences = ['ck2KqficXoU']
  # modern_dreamyClassical = ['OUx6ZY60uiI', 'mk2SNcpTNbs']
  # modern_newAge = ['6F-NJcgOetE', 'y7VyP4sZOkE' ]
  # electronic_active = ['iwew9TzWY3M']
  # electronic_dark = ['ck2KqficXoU']
  # electronic_groovy = ['hf_7yUzT5Rw']
  # electronic_dark = ['XqT_HHKPiXw' '3wPJPintfrM']
  # sounds_whiteNoise = ['wzjWIxXBs_s']
  # sounds_rainForest = ['IAfg_Iy7n8']
  # sounds_ocean = ['zmPzbZVUp3g']
  # sounds_storm = ['CSqe8FgnzjM']
  # sounds_flowingWater = ['9Nwn-TZfFUI']

  # tags = current_user.preferred_tags
  # tag_count = current_user.preferred_tags.count
  # theTag = tags.find(rand(tag_count)).description

# url: content.url, #content.url,

  if request.xhr?
    # vienna.sample
    content_type :json
    { url: 'OUx6ZY60uiI',
      # content_type: content.content_type,
      # description: content.short_description,
    }.to_json
  else
    "whoops"
  end
end
