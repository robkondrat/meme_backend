
User.create!([
  {first_name: "Rob", last_name: "Kondratowicz", email: "rob@gmail.com", password_digest: "$2a$12$QarSzgjWWXYL3F18izD.u.XgRazAAaazaOrdEAwR2oPOUMUMEFSOK"},
  {first_name: "John", last_name: "Doe", email: "john@gmail.com", password_digest: "$2a$12$eCxSrtxkm6NgMPDr874rauuRf3kHIu9k0pSB4eqfaM9wvZRGSymgK"},
  {first_name: "Christine", last_name: "Redhead", email: "christine@gmail.com", password_digest: "$2a$12$3kWokZK0C9PNaDiwiQs3k.LmoSB79Hr5yUwLQgxBoT3xHHWiQ8X1O"},
  {first_name: "Jeneen", last_name: "Lemar", email: "jeneen@gmail.com", password_digest: "$2a$12$rtto2v8viYWvP6TfnkFIL.kub3mOJcEtrDMvIb/5pEQevgO4aFqnK"}
])
Meme.create!([
  {top_text: "test 1 top", bottom_text: "test 1 bottom", img: "https://i.pinimg.com/564x/97/31/a6/9731a687e8233e7c18ea937d718810f6.jpg", user_id: 1},
  {top_text: "test 2 top", bottom_text: "test 2 bottom", img: "https://www.iconfinder.com/icons/3886218/hapiness_smile_smiley_smiley_face_icon", user_id: 2},
  {top_text: "test 3 top", bottom_text: "test 3 bottom", img: "https://usatftw.files.wordpress.com/2017/05/spongebob.jpg", user_id: 3},
  {top_text: "test 4 top", bottom_text: "test 4 bottom", img: "https://opinionstage-res.cloudinary.com/image/upload/c_lfill,dpr_3.0,f_auto,fl_lossy,q_auto:good,w_500/v1/polls/sxso0xaofrrfzgaq3kqb", user_id: 3},
  {top_text: "test 5 top", bottom_text: "test 5 bottom", img: "https://imgflip.com/s/meme/The-Most-Interesting-Man-In-The-World.jpg", user_id: 4},
  {top_text: "test 6 top", bottom_text: "test 6 bottom", img: "https://res.cloudinary.com/blavity/image/upload/c_fit,g_center,h_250,q_auto:best,g_south_east,x_0/v1526319185/ntipykqjpyl227boqdr5", user_id: 4}
])
