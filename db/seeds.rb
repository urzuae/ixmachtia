# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

content_type = ContentType.create([
  { name: "Image",    description: "Any type of image", file_types: %w{.jpg .png, .gif} },
  { name: "Video",    description: "Any type of video", file_types: %w{.mp4 .mov .wmv} },
  { name: "Audio",    description: "Any type of audio", file_types: %w{.mp3 .wma} },
  { name: "Text",     description: "HTML-rich text", file_types: "" },
  { name: "File",     description: "Any file document", file_types: %w{.doc .pdf .xls} },
  { name: "Embedded", description: "Url for a source", file_types: %w{audio video image} }
]);