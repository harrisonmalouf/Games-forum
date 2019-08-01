Game.destroy_all

puts "creating games"
Game.create(:name => 'Doom Eternal', :release_date => '2019-11-22', :company => 'ID Software', :platform => 'Nintendo Switch, PlayStation 4, Microsoft Windows, Xbox One', :image => 'https://cdn02.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_Doom_image1600w.jpg')
Game.create(:name => 'Dark Souls', :release_date => '2011-9-22', :company => 'From Software', :platform => 'Pc, PS4, PS3')

Post.destroy_all

puts "creating posts"
Post.create(:title => "In coming Batman Ipsum", :text => "I got another another job. Your.

Take a look, his speed, his ferocity, his training. I see the power of belief. I see the League of Shadows resurgent.

Didn't you get the memo?

Hero can be anyone. Even a man knowing something as simple and reassuring as putting a coat around a young boy shoulders to let him know the world hadn't ended.

I'm not wearing hockey pads.

Do you wanna know why I use a knife? Guns are too quick. You can't savor all the... little emotions. You see, in their last moments, people show you who they really are. So in a way, I knew your friends better than you ever did. Would you like to know which of them were cowards?

Someone like you. Someone who'll rattle the cages.

But it's not who you are underneath... it's what you do that defines you.

I just want my phone call.

So you came back to die with your city!

I had a vision of a world without Batman. The Mob ground out a little profit and the police tried to shut them down one block at a time. And it was so boring. I've had a change of heart. I don't want Mr Reese spoiling everything but why should I have all the fun? Let's give someone else a chance. If Coleman Reese isn't dead in 60 minutes then I blow up a hospital.

Gordon... You do like to play things pretty close to the chest.

I'm Gotham's reckoning. It'll end the ball of damns you've all been living on. A necessary evil.

Citizens, take control. Take control of your city!", :image => "https://comicsandmemes.com/wp-content/uploads/comic-book-meme-009-goofy-batman.jpg")
Post.create(:title => 'In coming Pirate Ipsum', :text => "Ballast cackle fruit pressgang barkadeer loot walk the plank Letter of Marque gangway yardarm grog. Hail-shot overhaul Chain Shot coxswain lugger nipperkin ye Privateer run a shot across the bow hempen halter. Mizzen fire in the hole clap of thunder wench hempen halter heave down lookout sheet gunwalls run a shot across the bow.

Careen pink Sea Legs maroon square-rigged Blimey squiffy belaying pin crack Jennys tea cup gibbet. Landlubber or just lubber maroon ye haul wind flogging dead men tell no tales draught spirits code of conduct black jack. Lad snow Pirate Round bilge rat Brethren of the Coast Cat o'nine tails scourge of the seven seas ballast trysail rigging.

Hang the jib dead men tell no tales cable hail-shot walk the plank hardtack flogging yardarm trysail knave. Bowsprit provost chase hang the jib carouser scurvy quarterdeck scuppers ho chantey. Heave down squiffy Blimey fire ship scurvy Buccaneer Davy Jones' Locker smartly ahoy pirate.", :image => "https://therawdeal2009.files.wordpress.com/2010/03/pirate-monkey.jpg")

User.destroy_all

puts "creating users"
User.create(:name => 'Harry Poo', :email => 'chicken@chicken.chicken', :password_digest => 'chicken')
