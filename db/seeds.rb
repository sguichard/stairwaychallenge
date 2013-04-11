# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

#Be sure to delete the xmlns attribute in the <kml> element
f = File.open("script/CommunityWalk_388644.kml")
doc = Nokogiri::XML(f)

doc.xpath("/kml/Document/Folder/Folder/Placemark").each do |place|
  desc = (place/'./description').text
  stairs = desc.match(/([0-9]+) stairs/)
  stairway = Stairway.new
  stairway.name = (place/'./name').text
  stairway.description = desc
  stairway.stairs = stairs.captures[0].to_i if stairs
  stairway.save!
end

