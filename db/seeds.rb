# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.delete_all
Album.delete_all
Song.delete_all

Artist.create! name: 'Shakira' , bio: 'Massive hips' , picture: "http://www.billboard.com/files/styles/promo_650/public/media/shakira-billboard-cover-650c.jpg?itok=0SBPnp2A"
Artist.create! name: 'Kanye West' , bio: 'I own this place', picture: "http://projectcasting1.projectcasting.netdna-cdn.com/wp-content/uploads/2014/12/kanye-west.jpg"
Artist.create! name: 'OMI' , bio: 'I like cheerleaders', picture: "http://i.ytimg.com/vi/u1l6yEBZ3g4/maxresdefault.jpg"
Artist.create! name: 'Fetty Wap' , bio: 'One hit wonder', picture: "http://www.billboard.com/files/styles/promo_650/public/media/fetty-wap-clive-srail-2015-billboard-650.jpg?itok=LhFQBJvd" 
Artist.create! name: 'Beyoncé' , bio: 'The Queen', picture: "http://static.guim.co.uk/sys-images/Arts/Arts_/Pictures/2013/4/24/1366799069485/Beyonce-performs-on-her-M-010.jpg" 
Artist.create! name: 'David Guetta' , bio: 'Average', picture: "http://www.billboard.com/files/media/david-guetta-650-430-c.jpg" 

Album.create! name:'Sale el sol' , year: 2010 , artist_id: Artist.find_by(name: "Shakira").id
Album.create! name:'Yeezus' , year: 2013 , artist_id: Artist.find_by(name: "Kanye West").id
Album.create! name:'Cheerleader - Single' , year: 2012 , artist_id: Artist.find_by(name: "OMI").id
Album.create! name:'Up Next' , year: 2014 , artist_id: Artist.find_by(name: "Fetty Wap").id
Album.create! name:'Beyoncé' , year: 2013 , artist_id: Artist.find_by(name: "Beyoncé").id
Album.create! name:'Listen' , year: 2015 , artist_id: Artist.find_by(name: "David Guetta").id

Song.create! name:'Waka waka' , album_id: Album.find_by(name: "Sale el sol").id, url: "https://www.youtube.com/watch?v=Ntn1-SocNiY"
Song.create! name:'I am a God' , album_id: Album.find_by(name: "Yeezus").id, url: "https://www.youtube.com/watch?v=I5p5z5CIxiA"
Song.create! name:'Bound 2' , album_id: Album.find_by(name: "Yeezus").id, url: "https://www.youtube.com/watch?v=BBAtAM7vtgc"
Song.create! name:'Cheerleader' , album_id: Album.find_by(name: "Cheerleader - Single").id, url: "https://www.youtube.com/watch?v=i1Jp-V4jalI"
Song.create! name:'Trap Queen' , album_id: Album.find_by(name: "Up Next").id, url: "https://www.youtube.com/watch?v=i_kF4zLNKio"
Song.create! name:'Drunk in love' , album_id: Album.find_by(name: "Beyoncé").id, url: "https://www.youtube.com/watch?v=p1JPKLa-Ofc"
Song.create! name:'Hey mama' , album_id: Album.find_by(name: "Listen").id, url: "https://www.youtube.com/watch?v=uO59tfQ2TbA"