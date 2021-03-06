# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

content_type = ContentType.create([
  { name: "Audio",    description: "Any type of audio", file_types: %w{audio/mpeg audio/x-ms-wma} },
  { name: "File",     description: "Any file document", file_types: %w{application/msword application/pdf application/vnd.ms-excel} },
  { name: "Image",    description: "Any type of image", file_types: %w{image/jpg image/png image/jpeg} },
  { name: "Video",    description: "Any type of video", file_types: %w{video/mp4 video/quicktime video/mpeg} },
  { name: "Text",     description: "HTML-rich text", file_types: "" },
]);