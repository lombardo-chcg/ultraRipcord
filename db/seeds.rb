Tag.create!(description: 'no_preferences')
Tag.create!(description: 'modern_notPicky')
Tag.create!(description: 'modern_dreamyClassical')
Tag.create!(description: 'modern_newAge')
Tag.create!(description: 'modern_dreamyClassical')
Tag.create!(description: 'electronic_notPicky')
Tag.create!(description: 'electronic_active')
Tag.create!(description: 'electronic_dark')
Tag.create!(description: 'electronic_groovy')
Tag.create!(description: 'electronic_dark')
Tag.create!(description: 'sounds_notPicky')
Tag.create!(description: 'sounds_whiteNoise')
Tag.create!(description: 'sounds_rainForest')
Tag.create!(description: 'sounds_ocean')
Tag.create!(description: 'sounds_storm')
Tag.create!(description: 'sounds_flowingWater')

one = Content.create!(
  content_type: "playlist",
  source: 'youtube',
  url: 'PLC8E48ADF2FB63B84',
  short_description: 'mozart piano sonatas',
  long_description: '')
one.tags.create!(description: "classical_notPicky")
one.tags.create!(description: "classical_piano")

two = Content.create!(
  content_type: "playlist",
  source: "youtube",
  url: 'PL2B7B03DC5CF1DBC9',
  short_description: 'haydn piano sonatas',
  long_description: '')
two.tags.create!(description: "classical_notPicky")
two.tags.create!(description: "classical_piano")

three = Content.create!(
  content_type: "playlist",
  source: "youtube",
  url: 'PL3nRAfd-5mJLyouQqa9yAZ6YYjv3wY5Ec',
  short_description: 'mozart piano concertos',
  long_description: '')
three.tags.create!(description: "classical_notPicky")
three.tags.create!(description: "classical_concerto")

a = Content.create!(
  content_type: "playlist",
  source: "youtube",
  url: 'PLUSRfoOcUe4b7Ixkv6zjFs-W1ssHWkRQU',
  short_description: 'haydn piano concertos',
  long_description: '')
a.tags.create!(description: "classical_notPicky")
a.tags.create!(description: "classical_concerto")

b = Content.create!(
  content_type: "playlist",
  source: "youtube",
  url: 'PLYmIAhded4pHYRW3Gz8cI0_r9d1D2DSg8',
  short_description: 'mozart chamber music',
  long_description: '')
b.tags.create!(description: "classical_notPicky")
b.tags.create!(description: "classical_quartets")

c = Content.create!(
  content_type: "playlist",
  source: "youtube",
  url: 'PLF-Nta522GPlfxzGxtRClENWUsn95Pc0a',
  short_description: 'Debussy',
  long_description: '')
c.tags.create!(description: "modern_notPicky")
c.tags.create!(description: "modern_dreamyClassical")


d = Content.create!(
  content_type: "playlist",
  source: "youtube",
  url: 'PLF-Nta522GPlfxzGxtRClENWUsn95Pc0a',
  short_description: 'Satie',
  long_description: '')
d.tags.create!(description: "modern_notPicky")
d.tags.create!(description: "modern_dreamyClassical")

e = Content.create!(
  content_type: "playlist",
  source: "youtube",
  url: 'PLF-Nta522GPnM5_5Dmoj0Bd2p5D_o8TAn',
  short_description: '60 min of new age crap',
  long_description: '')
e.tags.create!(description: "modern_notPicky")
e.tags.create!(description: "modern_newAge")

f = Content.create!(
  content_type: "playlist",
  source: "youtube",
  url: 'PLF-Nta522GPnM5_5Dmoj0Bd2p5D_o8TAn',
  short_description: 'george winston forest',
  long_description: '')
f.tags.create!(description: "modern_notPicky")
f.tags.create!(description: "modern_newAge")

g = Content.create!(
  content_type: "playlist",
  source: "youtube",
  url: 'PLF-Nta522GPknJpADSB5w5_3JOZ0y7Yoo',
  short_description: 'kerri chandler boiler room',
  long_description: '')
g.tags.create!(description: "electronic_notPicky")
g.tags.create!(description: "electronic_active")

h = Content.create!(
  content_type: "track",
  source: "youtube",
  url: 'Bj8425Ma6F8',
  short_description: 'garnier boiler room',
  long_description: '')
h.tags.create!(description: "electronic_notPicky")
h.tags.create!(description: "electronic_active")

i = Content.create!(
  content_type: "track",
  source: "youtube",
  url: 'zmPzbZVUp3g',
  short_description: 'ocean',
  long_description: '')
i.tags.create!(description: "sounds_notPicky")
i.tags.create!(description: "sounds_ocean")

j = Content.create!(
  content_type: "track",
  source: "youtube",
  url: 'jX6kn9_U8qk',
  short_description: 'rain',
  long_description: '')
j.tags.create!(description: "sounds_notPicky")
j.tags.create!(description: "sounds_storm")

h = Content.create!(
  content_type: "track",
  source: "youtube",
  url: 'CSqe8FgnzjM',
  short_description: 'thunderstorm',
  long_description: '')
h.tags.create!(description: "sounds_notPicky")
h.tags.create!(description: "sounds_storm")

i = Content.create!(
  content_type: "track",
  source: "youtube",
  url: 'IAfg_Iy7n8',
  short_description: 'rain forest',
  long_description: '')
i.tags.create!(description: "sounds_notPicky")
i.tags.create!(description: "sounds_rainForest")

j = Content.create!(
  content_type: "track",
  source: "youtube",
  url: '9Nwn-TZfFUI',
  short_description: 'flowing water',
  long_description: '')
j.tags.create!(description: "sounds_notPicky")
j.tags.create!(description: "sounds_flowingWater")

k = Content.create!(
  content_type: "track",
  source: "youtube",
  url: 'wzjWIxXBs_s',
  short_description: 'white noise',
  long_description: '')
k.tags.create!(description: "sounds_notPicky")
k.tags.create!(description: "sounds_whiteNoise")


l = Content.create!(
  content_type: "playlist",
  source: "youtube",
  url: 'PL-mSV3w33pTTEELPX-KFH2WjWlUFMYKcJ',
  short_description: 'mozart string quartets',
  long_description: '')
l.tags.create!(description: "classical_notPicky")
l.tags.create!(description: "classical_quartets")

m = Content.create!(
  content_type: "playlist",
  source: "youtube",
  url: 'RD8NBbI_d72bo',
  short_description: 'haydn string quartets',
  long_description: '')
m.tags.create!(description: "classical_notPicky")
m.tags.create!(description: "classical_quartets")




























# one = Content.create!(
#   content_type: "playlist",
#   source: 'youtube',
#   url: 'PLC8E48ADF2FB63B84',
#   short_description: 'mozart piano sonatas',
#   long_description: '')
# one.tags.create!(description: "classical_notPicky")
# one.tags.create!(description: "classical_piano")

# two = Content.create!(
#   content_type: "playlist",
#   source: "youtube",
#   url: 'PL2B7B03DC5CF1DBC9',
#   short_description: 'haydn piano sonatas',
#   long_description: '')
# two.tags.create!(description: "classical_notPicky")
# two.tags.create!(description: "classical_piano")

# three = Content.create!(
#   content_type: "playlist",
#   source: "youtube",
#   url: 'PL3nRAfd-5mJLyouQqa9yAZ6YYjv3wY5Ec',
#   short_description: 'mozart piano concertos',
#   long_description: '')
# three.tags.create!(description: "classical_notPicky")
# three.tags.create!(description: "classical_concerto")

# a = Content.create!(
#   content_type: "playlist",
#   source: "youtube",
#   url: 'PLUSRfoOcUe4b7Ixkv6zjFs-W1ssHWkRQU',
#   short_description: 'haydn piano concertos',
#   long_description: '')
# a.tags.create!(description: "classical_notPicky")
# a.tags.create!(description: "classical_concerto")

# b = Content.create!(
#   content_type: "playlist",
#   source: "youtube",
#   url: 'PLYmIAhded4pHYRW3Gz8cI0_r9d1D2DSg8',
#   short_description: 'mozart chamber music',
#   long_description: '')
# b.tags.create!(description: "classical_notPicky")
# b.tags.create!(description: "classical_quartets")

# c = Content.create!(
#   content_type: "playlist",
#   source: "youtube",
#   url: 'PLF-Nta522GPlfxzGxtRClENWUsn95Pc0a',
#   short_description: 'Debussy',
#   long_description: '')
# c.tags.create!(description: "modern_notPicky")
# c.tags.create!(description: "modern_dreamyClassical")


# d = Content.create!(
#   content_type: "playlist",
#   source: "youtube",
#   url: 'PLF-Nta522GPlfxzGxtRClENWUsn95Pc0a',
#   short_description: 'Satie',
#   long_description: '')
# d.tags.create!(description: "modern_notPicky")
# d.tags.create!(description: "modern_dreamyClassical")

# e = Content.create!(
#   content_type: "playlist",
#   source: "youtube",
#   url: 'PLF-Nta522GPnM5_5Dmoj0Bd2p5D_o8TAn',
#   short_description: '60 min of new age crap',
#   long_description: '')
# e.tags.create!(description: "modern_notPicky")
# e.tags.create!(description: "modern_newAge")

# f = Content.create!(
#   content_type: "playlist",
#   source: "youtube",
#   url: 'PLF-Nta522GPnM5_5Dmoj0Bd2p5D_o8TAn',
#   short_description: 'george winston forest',
#   long_description: '')
# f.tags.create!(description: "modern_notPicky")
# f.tags.create!(description: "modern_newAge")

# g = Content.create!(
#   content_type: "playlist",
#   source: "youtube",
#   url: 'PLF-Nta522GPknJpADSB5w5_3JOZ0y7Yoo',
#   short_description: 'kerri chandler boiler room',
#   long_description: '')
# g.tags.create!(description: "electronic_notPicky")
# g.tags.create!(description: "electronic_active")

# # h = Content.create!(
# #   content_type: "track",
# #   source: "youtube",
# #   url: 'Bj8425Ma6F8',
# #   short_description: 'garnier boiler room',
# #   long_description: '')
# # h.tags.create!(description: "electronic_notPicky")
# # h.tags.create!(description: "electronic_active")

# i = Content.create!(
#   content_type: "playlist",
#   source: "youtube",
#   url: 'PLF-Nta522GPldePuXjCmJLIL1SKrq7RqD',
#   short_description: 'ocean',
#   long_description: '')
# i.tags.create!(description: "sounds_notPicky")
# i.tags.create!(description: "sounds_ocean")

# j = Content.create!(
#   content_type: "playlist",
#   source: "youtube",
#   url: 'PLF-Nta522GPm7vRG_eLVyKsFYb5PJKeEW',
#   short_description: 'rain',
#   long_description: '')
# j.tags.create!(description: "sounds_notPicky")
# j.tags.create!(description: "sounds_storm")

# h = Content.create!(
#   content_type: "playlist",
#   source: "youtube",
#   url: 'PLF-Nta522GPmSZ71jhGMOWRPpZlEXo_YC',
#   short_description: 'thunderstorm',
#   long_description: '')
# h.tags.create!(description: "sounds_notPicky")
# h.tags.create!(description: "sounds_storm")

# i = Content.create!(
#   content_type: "playlist",
#   source: "youtube",
#   url: 'PLF-Nta522GPnUgg63UkcsjHyQGsXW_6Wp',
#   short_description: 'rain forest',
#   long_description: '')
# i.tags.create!(description: "sounds_notPicky")
# i.tags.create!(description: "sounds_rainForest")

# j = Content.create!(
#   content_type: "playlist",
#   source: "youtube",
#   url: 'PLF-Nta522GPk6wg3qRCwJ9VyPAc4ADaji',
#   short_description: 'flowing water',
#   long_description: '')
# j.tags.create!(description: "sounds_notPicky")
# j.tags.create!(description: "sounds_flowingWater")

# k = Content.create!(
#   content_type: "playlist",
#   source: "youtube",
#   url: 'PLF-Nta522GPnAZGQ9hLcWVV1A6Hz2XDXa',
#   short_description: 'white noise',
#   long_description: '')
# k.tags.create!(description: "sounds_notPicky")
# k.tags.create!(description: "sounds_whiteNoise")
