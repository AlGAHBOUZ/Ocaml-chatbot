(*Importing the libraries that we will use in our code*)
open Random;;
open Printf;;

(*Creating a record named book, that stores the title of the book ,the author of the book, and what the book is about*)
  type book = {title : string; author : string;  description: string};;

  (*Creating an array to store some of the fantasy books that can be suggested by our Chat bot*)

  let fantasy_books = [|{title = "Harry Potter"; author = "JK Rowling"; description = "In a world where magic, dragons, vampires, werewolves, goblins, giants and other things exist, a young wizard, named Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry. The main story arc concerns Harry's conflict with Lord Voldemort, a dark wizard who intends to become immortal, overthrow the wizard governing body known as the Ministry of Magic and subjugate all wizards and Muggles (non-magical people)."};

  {title = " The Chronicles of Narnia"; author = " C. S. Lewis"; description = "In The Lion, the Witch, and the Wardrobe, four children—Peter, Susan, Lucy, and Edmund—discover a world called Narnia inside a wardrobe. There they discover magic, magical creatures, and Aslan, the Great Lion who created Narnia. The rest of the series follows other characters and their adventures in this land. If you're trying to inspire a sense of wonder in your kids, this is one of the top fantasy series to introduce to them."};

  {title = "The Wheel of Time"; author = "Robert Jordan and Brandon Sanderson"; description = "The Wheel of Time is a fourteen-novel series that will appeal to fans of both science fiction and fantasy. In this alternate world, time is not linear but occurs in cycles of ages, known as the Wheel of Time. This means the story occurs in both the past and future. In a prophecy, the Dark One will return and the world will end as the Dragon defeats him. It's up to channelers of the One Power to keep the darkness at bay and the world safe."};

  {title = " The Witcher"; author = "Andrzej Sapkowski"; description = "Before it was a Netflix series or even a video game, The Witcher was a fantasy series. We first meet Geralt of Rivia in a short story called The Witcher published in 1986. Geralt is a Witcher, who has special abilities and hunts monsters. His destiny lies in an orphaned princess named Ciri, whom he adopts as his daughter, who has immense, unknown powers. They then travel across a world full of elves and other creatures. In their war-stricken world, human colonists have largely decimated the populations of non-human people. The series comprises several short stories, a five-novel saga about Geralt and Ciri, and a stand-alone prequel."};

  {title = "Percy Jackson and the Olympians"; author = "Rick Riordan"; description = "Percy is a demigod who discovers his magical abilities and a fantastical world that exists alongside the real world. Percy befriends another demigod named Annabeth and a satyr named Grover at Camp Half-Blood, where the children of Greek gods learn how to handle their powers. Overall, the series is a story of good vs evil and the power of love and friendship."};

  {title = "A Song of Ice and Fire"; author = "George R. R. Martin"; description = "You can't have a list of the best fantasy books without mentioning George R. R. Martin's famous series. Set in the world of Westeros, multiple power-hungry people vie for the Iron Throne—the throne that will allow them to rule the entire land. There are dragons, ice zombies, and sorceresses, but the most intense conflicts occur between ruthless humans. The first book in the series is A Game of Thrones, which lent its name to the award-winning HBO television series. Each subsequent novel follows various characters as Westeros is thrown into chaos."};

  {title = "Children of Blood and Bone"; author = "Tomi Adeyemi"; description = "Magic is dead in Zélie's world, but she remembers. She sets out on an epic quest in a dangerous world to restore magic and overturn a dictatorial monarchy. West African mythology inspired this book, but it also will appeal to lovers of dystopian fiction. Since publication, Adeyemi has won Hugo and Nebula awards and quickly established herself as a leader in the fantasy genre."};

  {title = "The Name of the Wind"; author = "Patrick Rothfuss"; description = "A coming-of-age story in a fantasy world, The Name of the Wind tells the story of a young man who grows to become a notorious wizard. After traveling with a group of roving actors, Kvothe finally enters a school of magic. Plenty of high fantasy action and adventure turns Kvothe into a fugitive sought for murd"};

  {title = "The Golden Compass"; author = "Philip Pullman"; description = "Lyra rushes to the cold North where witch clans and armored bears rule, and where Gobblers take children, including her friend Roger. Lyras fearsome uncle Asriel is trying to build a bridge to a parallel world, but Lyra is one small girl. Can she make a difference in this great and terrible endeavor?"};

  {title = "The Way of Kings"; author = "Brandon Sanderson"; description = "In this epic fantasy book where mystical swords and suits of armor transform ordinary men into invincible warriors, kingdoms are won and traded for Shardblades. With an interesting cast of characters from around the fantasy world, they fight their own battles, sometimes with motives less than pure."};

  {title = "The Fellowship of the Ring"; author = "J. R. R. Tolkien"; description = "After years in Middle-earth, Bilbo Baggins ends up with the ring. After he reaches his eleventy-first year, he disappears, and the ring becomes the property of Frodo, his cousin. Thus starts the epic quest to destroy the ring and everything it stands for. It's the first of the Lord of the Rings series and remains one of the best fantasy books ever written."};
  
  |];;

(*Creating an array to store some of the fiction books that can be suggested by our Chat bot*)
  let fiction_books = [|{title = "The Hobbit"; author = "J.R.R. Tolkien"; description = "In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with the ends of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it to sit down on or to eat: it was a hobbit-hole, and that means comfort. Written for J.R.R. Tolkien own children, The Hobbit met with instant critical acclaim when it was first published in 1937. Now recognized as a timeless classic, this introduction to the hobbit Bilbo Baggins, the wizard Gandalf, Gollum, and the spectacular world of Middle-earth recounts of the adventures of a reluctant hero, a powerful and dangerous ring, and the cruel dragon Smaug the Magnificent. The text in this 372-page paperback edition is based on that first published in Great Britain by Collins Modern Classics (1998), and includes a note on the text by Douglas A. Anderson (2001)."};

  {title = "Alice's Adventures in Wonderland"; author = "Lewis Carroll"; description = "I can't explain myself, I'm afraid, sir, said Alice, Because I'm not myself, you see. When Alice sees a white rabbit take a watch out of its waistcoat pocket she decides to follow it, and a sequence of most unusual events is set in motion. This mini book contains the entire topsy-turvy stories of Alice's Adventures in Wonderland and Through the Looking-Glass, accompanied by practical notes and Martina Pelouso's memorable full-colour illustrations."};

  {title = "The Maze Runner"; author = "James Dashner"; description = "
  If you are not scared, you are not human.

  When Thomas wakes up in the lift, the only thing he can remember is his name. He is surrounded by strangers—boys whose memories are also gone.

  Nice to meet ya, shank. Welcome to the Glade.

  Outside the towering stone walls that surround the Glade is a limitless, ever-changing maze. Itis s the only way out—and no one has ever made it through alive.

  Everything is going to change.

  Then a girl arrives. The first girl ever. And the message she delivers is terrifying.

  Remember. Survive. Run."};


  {title = "The Hunger Games"; author = "Suzanne Collins"; description = "Could you survive on your own in the wild, with every one out to make sure you don't live to see the morning? In the ruins of a place once known as North America lies the nation of Panem, a shining Capitol surrounded by twelve outlying districts. The Capitol is harsh and cruel and keeps the districts in line by forcing them all to send one boy and one girl between the ages of twelve and eighteen to participate in the annual Hunger Games, a fight to the death on live TV. Sixteen-year-old Katniss Everdeen, who lives alone with her mother and younger sister, regards it as a death sentence when she steps forward to take her sister's place in the Games. But Katniss has been close to dead before—and survival, for her, is second nature. Without really meaning to, she becomes a contender. But if she is to win, she will have to start making choices that weight survival against humanity and life against love."};


  {title = "Six of Crows"; author = "Leigh Bardugo"; description = "Ketterdam: a bustling hub of international trade where anything can be had for the right price—and no one knows that better than criminal prodigy Kaz Brekker. Kaz is offered a chance at a deadly heist that could make him rich beyond his wildest dreams. But he ca not pull it off alone. . . ."};


  {title = "Harry Potter and the Half-Blood Prince"; author = "J.K. Rowling"; description = "It is the middle of the summer, but there is an unseasonal mist pressing against the windowpanes. Harry Potter is waiting nervously in his bedroom at the Dursleys' house in Privet Drive for a visit from Professor Dumbledore himself. One of the last times he saw the Headmaster was in a fierce one-to-one duel with Lord Voldemort, and Harry can't quite believe that Professor Dumbledore will actually appear at the Dursleys' of all places. Why is the Professor coming to visit him now? What is it that cannot wait until Harry returns to Hogwarts in a few weeks' time? Harry's sixth year at Hogwarts has already got off to an unusual start, as the worlds of Muggle and magic start to intertwine..."};


  {title = "The Alchemist"; author = "Paulo Coelhoy"; description = "Combining magic, mysticism, wisdom, and wonder into an inspiring tale of self-discovery, The Alchemist has become a modern classic, selling millions of copies around the world and transforming the lives of countless readers across generations. Paulo Coelho's masterpiece tells the mystical story of Santiago, an Andalusian shepherd boy who yearns to travel in search of a worldly treasure. His quest will lead him to riches far different—and far more satisfying—than he ever imagined. Santiago's journey teaches us about the essential wisdom of listening to our hearts, recognizing opportunity and learning to read the omens strewn along life's path, and, most importantly, following our dreams."};


  {title = "Ender Game"; author = "Orson Scott Card"; description = "Andrew (aka Ender) Wiggin thinks he is playing computer simulated war games; he is, in fact, engaged in something far more desperate. The result of genetic experimentation, Ender may be the military genius Earth desperately needs in a war against an alien enemy seeking to destroy all human life. The only way to find out is to throw Ender into ever harsher training, to chip away and find the diamond inside, or destroy him utterly. Ender Wiggin is six years old when it begins. He will grow up fast. But Ender is not the only result of the experiment. The war with the Buggers has been raging for a hundred years, and the quest for the perfect general has been underway almost as long. Ender's two older siblings, Peter and Valentine, are every bit as unusual as he is, but in very different ways. While Peter was too uncontrollably violent, Valentine very nearly lacks the capability for violence altogether. Neither was found suitable for the military's purpose. But they are driven by their jealousy of Ender, and by their inbred drive for power. Peter seeks to control the political process, to become a ruler. Valentine's abilities turn more toward the subtle control of the beliefs of commoner and elite alike, through powerfully convincing essays. Hiding their youth and identities behind the anonymity of the computer networks, these two begin working together to shape the destiny of Earth-an Earth that has no future at all if their brother Ender fails.."};


  {title = "The Martian"; author = "Andy Weir"; description = "Six days ago, astronaut Mark Watney became one of the first people to walk on Mars. Now, he is sure he will be the first person to die there. After a dust storm nearly kills him and forces his crew to evacuate while thinking him dead, Mark finds himself stranded and completely alone with no way to even signal Earth that he is alive—and even if he could get word out, his supplies would be gone long before a rescue could arrive. Chances are, though, he will not have time to starve to death. The damaged machinery, unforgiving environment, or plain-old “human error” are much more likely to kill him first. But Mark is not ready to give up yet. Drawing on his ingenuity, his engineering skills — and a relentless, dogged refusal to quit — he steadfastly confronts one seemingly insurmountable obstacle after the next. Will his resourcefulness be enough to overcome the impossible odds against him?"};


  {title = "1984"; author = "George Orwell"; description = "The new novel by George Orwell is the major work towards which all his previous writing has pointed. Critics have hailed it as his best  work. Though the story of Nineteen Eighty-Four takes place thirty-five years hence, it is in every sense timely. The scene is London, where there has been no new housing since 1950 and where the city-wide slums are called Victory Mansions. Science has abandoned Man for the State. As every citizen knows only too well, war is peace.To Winston Smith, a young man who works in the Ministry of Truth (Minitru for short), come two people who transform this life completely. One is Julia, whom he meets after she hands him a slip reading, I love you. The other is O'Brien, who tells him,We shall meet in the place where there is no darkness. The way in which Winston is betrayed by the one and, against his own desires and instincts, ultimately betrays the other, makes a story of mounting drama and suspense"};


  {title = "Dune"; author = "Frank Herbert"; description = "Set on the desert planet Arrakis, Dune is the story of the boy Paul Atreides, heir to a noble family tasked with ruling an inhospitable world where the only thing of value is the “spice” melange, a drug capable of extending life and enhancing consciousness. Coveted across the known universe, melange is a prize worth killing for... When House Atreides is betrayed, the destruction of Pauls family will set the boy on a journey toward a destiny greater than he could ever have imagined. And as he evolves into the mysterious man known as Muad Dib, he will bring to fruition humankind most ancient and unattainable dream."};

  |];;

(*Creating an array to store some of the crime novels that can be suggested by our Chat bot*)

  let crime_books = [|
    
  {title = "Crime and Punishment"; author = "Fyodor Dostoevsky"; description = "Raskolnikov, a destitute and desperate former student, wanders through the slums of St Petersburg and commits a random murder without remorse or regret. He imagines himself to be a great man, a Napoleon: acting for a higher purpose beyond conventional moral law. But as he embarks on a dangerous game of cat and mouse with a suspicious police investigator, Raskolnikov is pursued by the growing voice of his conscience and finds the noose of his own guilt tightening around his neck. Only Sonya, a downtrodden sex worker, can offer the chance of redemption."};

  {title = "The Godfather"; author = "Mario Puz"; description = "Almost fifty years ago, a classic was born. A searing portrayal of the Mafia underworld, The Godfather introduced readers to the first family of American crime fiction, the Corleones, and their powerful legacy of tradition, blood, and honor. The seduction of power, the pitfalls of greed, and the allegiance to family—these are the themes that have resonated with millions of readers around the world and made The Godfather the definitive novel of the violent subculture that, steeped in intrigue and controversy, remains indelibly etched in our collective consciousness."};


  {title = "The Valley of Fear"; author = "Arthur Conan Doyle"; description = "Doyle's final novel featuring the beloved sleuth, Sherlock Holmes, brings the detective and his friend to a country manor where they are preceded by either a murder or a suicide. A secretive organization lies culprit and an infiltration of it is in order."};


  {title = "Arsène Lupin, Gentleman-Thief"; author = "Maurice Leblanc"; description = "The suave adventures of a gentleman rogue—a French Thomas Crown Created by Maurice LeBlanc during the early twentieth century, Arsene Lupin is a witty confidence man and burglar, the Sherlock Holmes of crime. The poor and innocent have nothing to fear from him; often they profit from his spontaneous generosity. The rich and powerful, and the detective who tries to spoil his fun, however, must beware. They are the target of Arsene mischief and tomfoolery. A masterful thief, his plans frequently evolve into elaborate capers, a precursor to such cinematic creations as Ocean Eleven and The Sting. Sparkling with amusing banter, these stories—the best of the Lupin series—are outrageous, melodramatic, and literate."};


  {title = "The Complete Sherlock Holmes"; author = "Arthur Conan Doyle"; description = "

  A study in scarlet, 

  The sign of four ,

  Adventures of Sherlock Holmes : A scandal in Bohemia ; The red-headed league ; A case of identity ; The Boscombe Valley mystery ; The five orange pips ; The man with the twisted lip ; The adventure of the blue carbuncle ; The adventure of the speckled band ; The adventure of the engineer's thumb ; The adventure of the noble bachelor ; The adventure of the beryl coronet ; The adventure of the copper beeches --

  Memoirs of Sherlock Holmes : Silver blaze ; The yellow face ; The stock-broker's clerk ; The Gloria Scott ; The Musgrave ritual ; The Reigate puzzle ; The crooked man ; The resident patient ; The Greek interpreter ; The naval treaty ; The final problem --

  The return of Sherlock Holmes : The adventure of the empty house ; The adventure of the Norwood builder ; The adventure of the dancing men ; The adventure of the solitary cyclist ; The adventure of the priory school ; The adventure of Black Peter ; The adventure of Charles Augustus Milverton ; The adventure of the six Napoleons ; The adventure of the three students ; The adventure of the golden pince-nez ; The adventure of the missing three-quarter ; The adventure of the abbey grange ; The adventure of the second stain.

  Volume 2. Introduction / by Loren D. Estleman --

  The hound of the Baskervilles --

  The valley of fear --

  His last bow : The adventure of Wisteria Lodge : The singular experience of Mr. John Scott Eccles ; The tiger of San Pedro ; The adventure of the cardboard box ; The adventure of the red circle ; The adventure of the Bruce-Partington plans ; The adventure of the dying detective ; The disappearance of Lady Frances Carfax ; The adventure of the devil's foot ; His last bow --

  The case-book of Sherlock Holmes : The adventure of the illustrious client ; The adventure of the blanched soldier ; The adventure of the Mazarin stone ; The adventure of the three gables ; The adventure of the Sussex vampire ; The adventure of the three Garridebs ; The problem of Thor Bridge ; The adventure of the creeping man ; The adventure of the lion's mane ; The adventure of the veiled lodger ; The adventure of Shoscombe old place ; The adventure of the retired colourman."};


  {title = "The Hound of the Baskervilles"; author = "Arthur Conan Doyle"; description = "In this, one of the most famous of Doyle's mysteries, the tale of an ancient curse and a savage ghostly hound comes frighteningly to life. The gray towers of Baskerville Hall and the wild open country of Dartmoor will haunt the reader as Holmes and Watson seek to unravel the many secrets of the misty English bogs."};


  {title = "Misery"; author = "Stephen King"; description = "Inspired by King resentment of readers who wanted him shackled to the horror genre, this bloodcurdling thriller sees novelist Paul Sheldon imprisoned and tortured by his “Number One Fan”. The real fear though is that of every novelist: the blank, bloodless page."};


  {title = "And Then There Were None"; author = "Agatha Christie"; description = "This novel is widely considered the best mystery novel ever written by many readers. The story follows ten strangers, each lured to Indian Island by a mysterious host. Once the guests have arrived, the host accuses each of them of murder. Trapped on the island, the guests open up and share their darkest secrets—until they begin to die. A true masterpiece. This book will give you chills unlike any you've experienced from modern-day suspense novels. Any true lover of murder mysteries should go back to the roots of the genre and read this book."};


  {title = "Murder on the Orient Express"; author = "Agatha Christie"; description = "Just after midnight, a snowdrift halts the Orient Express in its tracks. The well-known, luxurious train is surprisingly full for winter time, but come morning it has one less living passenger. An American tycoon is found dead in his compartment, stabbed a dozen times, with his door locked from the inside. Left isolated and with a killer in their midst, detective Hercule Poirot must uncover the truth before the murderer decides to strike again. This is such an interesting and mysterious novel. The way Poirot was able to piece it together was brilliant. Your heart will be pounding as you wait to discover who the culprit was. It's truly unexpected. How the middle of the book merges into the last bits of the story is mesmerizing."};


  {title = "The Da Vinci Code"; author = "Dan Brown"; description = "The Da Vinci Code trails symbologist Robert Langdon and cryptologist Sophie Neveu after they become involved in a battle between the Priory of Sion and Opus Dei over the possibility of Jesus Christ and Mary Magdalene having had a child together. All of which is tied to a murder in the Louvre Museum in Paris. This novel is a mind-blowing thriller. It will keep your toes from the first letter to the last. The descriptions of the history and symbols are incredible and the mode of narration is stunning."};


  {title = " Death on the Nile"; author = "Agatha Christie"; description = "Death on the Nile follows Hercule Poirot when he embarks on a vacation to Egypt, but finds himself solving two murder cases instead of sightseeing. This is an undoubtedly good murder-mystery story with a complex plot. Poirot's analytical mind comprehends the mystery without complete proof and apprehends the criminals who otherwise would have escaped punishment. Poirot's verdict is his own and always shows his consideration for human feelings"};


  |];;

  (*Creating an array to store some of the sci-fi novels that can be suggested by our Chat bot*)
  let sci_fi_books = [|


  {title = "2001: A Space Odyssey"; author = "Arthur C. Clarke"; description = "On the Moon, an enigma is uncovered. So great are the implications of this discovery that for the first time men are sent out deep into our solar system. But long before their destination is reached, things begin to go horribly, inexplicably wrong... One of the greatest-selling science fiction novels of our time, this classic book will grip you to the very end."};


  {title = "A Wrinkle in Time"; author = "Madeleine L'Engle"; description = "It was a dark and stormy night. Out of this wild night, a strange visitor comes to the Murry house and beckons Meg, her brother Charles Wallace, and their friend Calvin O'Keefe on a most dangerous and extraordinary adventure—one that will threaten their lives and our universe."};

  {title = "I, Robot"; author = "Isaac Asimov"; description = "They mustn't harm a human being, they must obey human orders, and they must protect their own existence...but only so long as that doesn't violate rules one and two. With these Three Laws of Robotics, humanity embarked on perhaps its greatest adventure: the invention of the first positronic man. It was a bold new era of evolution that would open up enormous possibilities—and unforeseen risks. For the scientists who invented the earliest robots weren't content that their creations should ' remain programmed helpers, companions, and semisentient worker-machines. And soon the robots themselves; aware of their own intelligence, power, and humanity, aren't either. As humans and robots struggle to survive together—and sometimes against each other—on earth and in space, the future of both hangs in the balance. Human men and women confront robots gone mad, telepathic robots, robot politicians, and vast robotic intelligences that may already secretly control the world. And both are asking the same questions: What is human? And is humanity obsolete?"};




  {title = "Brave New World"; author = "Aldous Huxley"; description = "Brave New World is a dystopian novel by English author Aldous Huxley, written in 1931 and published in 1932. Largely set in a futuristic World State, inhabited by genetically modified citizens and an intelligence-based social hierarchy, the novel anticipates huge scientific advancements in reproductive technology, sleep-learning, psychological manipulation and classical conditioning that are combined to make a dystopian society which is challenged by only a single individual: the story's protagonist."};


  {title = "The Hitchhiker's Guide to the Galaxy"; author = "Douglas Adams"; description = "Seconds before the Earth is demolished to make way for a galactic freeway, Arthur Dent is plucked off the planet by his friend Ford Prefect, a researcher for the revised edition of The Hitchhiker's Guide to the Galaxy who, for the last fifteen years, has been posing as an out-of-work actor.Together this dynamic pair begin a journey through space aided by quotes from The Hitchhiker's Guide (A towel is about the most massively useful thing an interstellar hitchhiker can have) and a galaxy-full of fellow travelers: Zaphod Beeblebrox--the two-headed, three-armed ex-hippie and totally out-to-lunch president of the galaxy; Trillian, Zaphod's girlfriend (formally Tricia McMillan), whom Arthur tried to pick up at a cocktail party once upon a time zone; Marvin, a paranoid, brilliant, and chronically depressed robot; Veet Voojagig, a former graduate student who is obsessed with the disappearance of all the ballpoint pens he bought over the years. Where are these pens? Why are we born? Why do we die? Why do we spend so much time between wearing digital watches? For all the answers stick your thumb to the stars. And don't forget to bring a towel!"};


  {title = "The Time Machine"; author = "H.G. Wells"; description = "So begins the Time Travell  astonishing firsthand account of his journey 800,000 years beyond his own era—and the story that launched H.G. Well successful career and earned him his reputation as the father of science fiction. With a speculative leap that still fires the imagination, Wells sends his brave explorer to face a future burdened with our greatest hopes...and our darkest fears. A pull of the Time Machine lever propels him to the age of a slowly dying Earth.  There he discovers two bizarre races—the ethereal Eloi and the subterranean Morlocks—who not only symbolize the duality of human nature, but offer a terrifying portrait of the men of tomorrow as well.  Published in 1895, this masterpiece of invention captivated readers on the threshold of a new century. Thanks to Wells expert storytelling and provocative insight, The Time Machine will continue to enthrall readers for generations to come."};

  {title = "The war of worlds"; author = "H.G. Wells"; description = "When an army of invading Martians lands in England, panic and terror seize the population. As the aliens traverse the country in huge three-legged machines, incinerating all in their path with a heat ray and spreading noxious toxic gases, the people of the Earth must come to terms with the prospect of the end of human civilization and the beginning of Martian rule. Inspiring films, radio dramas, comic-book adaptations, television series and sequels,The War of the Worlds is a prototypical work of science fiction which has influenced every alien story that has come since, and is unsurpassed in its ability to thrill, well over a century since it was first published."};



  {title = "Fahrenheit 451"; author = "Ray Bradbury"; description = "Sixty years after its original publication, Ray Bradbur internationally acclaimed novel Fahrenheit 451 stands as a classic of world literature set in a bleak, dystopian future. Today its message has grown more relevant than ever before.Guy Montag is a fireman. His job is to destroy the most illegal of commodities, the printed book, along with the houses in which they are hidden. Montag never questions the destruction and ruin his actions produce, returning each day to his bland life and wife, Mildred, who spends all day with her television “family.” But when he meets an eccentric young neighbor, Clarisse, who introduces him to a past where people didn not live in fear and to a present where one sees the world through the ideas in books instead of the mindless chatter of television, Montag begins to question everything he has ever known."};


  {title = "Children of Time"; author = "Adrian Tchaikovsky"; description = "Children of Time is an epic book about a dying Earth. People are leaving, and there was a plan to keep some of them safe and the human race flourishing elsewhere. However, things do not quite pan out how they should. This is a saga of a story spanning many, many generations. That is a tricky thing to pull off and ensure readers still follow with care and attention. But Adrian Tchaikovsky infuses interest, humanity and authenticity into every character and storyline so well. You will find yourself rooting for every new character that comes next even when they are only distantly related to the one you met a few chapters ago. The book deals with small interactions and feuds through to huge themes about belief, artificial intelligence, legacy, discovery, alienness and much more. It is no surprise it won the 2016 Arthur C. Clarke Award. There is a follow-up called Children of Ruin and (fingers crossed) a possible movie adaptation in the works."};


  {title = "Jurassic Park"; author = "Michael Crichton"; description = "Before it mutated into the mega media franchise “Jurassic World”, Jurassic Park was a smart, thoughtful and gripping sci-fi classic written by Michael Crichton, author of the equally brilliant Andromeda Strain. Crichton's tale remains a great parable about the dangers of genetic engineering, (as well as a slightly heady exploration of chaos theory)"};


  {title = "Hyperion"; author = "Dan Simmons"; description = "Winner of the 1990 Hugo Award for Best Novel and part of a two-book series, Hyperion is a richly woven sci-fi epic told in the style of The Canterbury Tales. In the world of Hyperion, humanity has spread to thousands of worlds, none more intriguing or dangerous as Hyperion. It's home to the Time Tombs, ageless structures which are mysteriously travelling backward through time, and guarding them is the terrifying creature known as the Shrike. It kills anyone who dares encroach on the Time Tombs and has inspired a fanatical religious group who control pilgrimages to the tombs. On the eve of an invasion, a group of travellers convene what's likely to be the last Shrike pilgrimage and share their tales of what brought them there."};


  {title = "Neuromancer"; author = "William Gibson"; description = "The definitive cyberpunk novel, William Gibson s Neuromancer follows hacker-turned-junkie Henry Case as he tries to pull off one last, rather dodgy sounding job in the hope of reversing a toxin that prevents him from accessing cyberspace. Set in a dystopian Japanese underworld, the novel touches on all manner of futuristic technology, from AI to cryonics, and features a cast of creative characters that will stick with you long after you turn the last page."};

  {title = "Dune"; author = "Frank Herbert"; description = "Set on the desert planet Arrakis, Dune is the story of the boy Paul Atreides, heir to a noble family tasked with ruling an inhospitable world where the only thing of value is the “spice” melange, a drug capable of extending life and enhancing consciousness. Coveted across the known universe, melange is a prize worth killing for... When House Atreides is betrayed, the destruction of Pauls family will set the boy on a journey toward a destiny greater than he could ever have imagined. And as he evolves into the mysterious man known as Muad Dib, he will bring to fruition humankind most ancient and unattainable dream."};

  {title = "Ender Game"; author = "Orson Scott Card"; description = "Andrew (aka Ender) Wiggin thinks he is playing computer simulated war games; he is, in fact, engaged in something far more desperate. The result of genetic experimentation, Ender may be the military genius Earth desperately needs in a war against an alien enemy seeking to destroy all human life. The only way to find out is to throw Ender into ever harsher training, to chip away and find the diamond inside, or destroy him utterly. Ender Wiggin is six years old when it begins. He will grow up fast. But Ender is not the only result of the experiment. The war with the Buggers has been raging for a hundred years, and the quest for the perfect general has been underway almost as long. Ender's two older siblings, Peter and Valentine, are every bit as unusual as he is, but in very different ways. While Peter was too uncontrollably violent, Valentine very nearly lacks the capability for violence altogether. Neither was found suitable for the military's purpose. But they are driven by their jealousy of Ender, and by their inbred drive for power. Peter seeks to control the political process, to become a ruler. Valentine's abilities turn more toward the subtle control of the beliefs of commoner and elite alike, through powerfully convincing essays. Hiding their youth and identities behind the anonymity of the computer networks, these two begin working together to shape the destiny of Earth-an Earth that has no future at all if their brother Ender fails.."};


    |];;

    (*Creating an array to store some of the history books that can be suggested by our Chat bot*)
  let history_books = [|

  {title = "What Is History?"; author = "Edward Hallett Carr"; description = "Famous for his hefty History of Soviet Russia, E. H. Carr foray into historiography (that is, the study of written history) was panned by critics at first. Initially written off as dangerous relativism, it is now considered a foundational text for historians, one which probes at the very seams of the discipline. By asking what exactly historical knowledge is and what constitutes history as we have come to understand it, Carr provides a compelling and masterful critique of the biases of historians and their moralized narratives of history. This groundbreaking text also interrogates such notions as fact, science, morality, individualism, and society. This masterpiece is referenced in countless college applications for a reason — it is a formidable dive into history as a discipline, and laid the foundations for the subject as it exists in the modern world."};


  {title = "Guns, Germs, and Steel: The Fates of Human Societies"; author = "Jared Diamond"; description = "Here is another book that frequents the reading lists of politics and history majors the world over! Many have theorized on why certain human societies have failed while others have thrived — but perhaps none have done it as astutely as Jared Diamond has in Guns, Germs, and Steel. The three things featured the title make up the nexus that Diamond presents as being fundamental to the development (or lack thereof) of human society. Though Diamond's thesis has as many detractors as it has supporters, i is worth reading to see which side of the debate you fall on."};


  {title = "Lies My Teacher Told Me"; author = "James W. Loewen"; description = "When history is so often focalized through a Western lens, reading from alternative positions is essential to challenge these normative understandings of the past. Ansary Destiny Disrupted does exactly this. By centering on an Islamic recounting of historical events, it challenges preconceived ideas about Western dominance, colonialism, and stereotyped depictions of Islamic culture and custom. Ansary discusses the history of the Islamic world from the time of Mohammed, through the various empires that have ruled the Middle Eastern region and beyond, right up to contemporary conflicts and the status of Islam in a modern, globalizing world. "};

  {title = "Destiny Disrupted: A History of the World Through Islamic Eyes"; author = "Tamim Ansary"; description = "It iss no big secret that the US school curriculum is more than a little biased — governments have a tendency to rewrite history textbooks in their favour, and the US government is no exception, keeping quiet on the grizzly, harrowing details and episodes which made the USA the country it is today. With particular focus on the American Civil War, Native Americans and the Atlantic Slave Trade, Loewen tries to interrogate and override simplistic, recountings of these events that portray White settlers as heroes and everybody else as uncivilized and barbarous. This is essential reading for anybody wanting to challenge their own preconceptions about American history and challenge the elevated status of American heroes."};


  {title = "Democracy: A Life"; author = "Paul Cartledge"; description = "From its birth in the city-state of Ancient Athens to contemporary times, democracy definition, application, and practice have been fiercely discussed and debated. With this book, Cartledge presents a biography of a political system that has been alternately lauded as the only means to govern a liberal society and derided as doomed to ineffectiveness. Based on a near-legendary course of lectures Cartledge taught at Cambridge University, this book charts the social, cultural, and political dimensions of democracy, displaying a mastery of the scholarship to brilliant effect. For those that want to know more about democracy beyond governance for the masses"};


  {title = "Mein Kampf (My Struggle),"; author = "William Gibson"; description = "Madman, tyrant, animal—history has given Adolf Hitler many names. In Mein Kampf (My Struggle), often called the Nazi bible, Hitler describes his life, frustrations, ideals, and dreams. Born to an impoverished couple in a small town in Austria, the young Adolf grew up with the fervent desire to become a painter. The death of his parents and outright rejection from art schools in Vienna forced him into underpaid work as a laborer. During the First World War, Hitler served in the infantry and was decorated for bravery. After the war, he became actively involved with socialist political groups and quickly rose to power, establishing himself as Chairman of the National Socialist German Worker's party. In 1924, Hitler led a coalition of nationalist groups in a bid to overthrow the Bavarian government in Munich. The infamous Munich  was unsuccessful, and Hitler was arrested. During the nine months he was in prison, an embittered and frustrated Hitler dictated a personal manifesto to his loyal follower Rudolph Hess. He vented his sentiments against communism and the Jewish people in this document, which was to become Mein Kampf, the controversial book that is seen as the blue-print for Hitler's political and military campaign. In Mein Kampf, Hitler describes his strategy for rebuilding Germany and conquering Europe. It is a glimpse into the mind of a man who destabilized world peace and pursued the genocide now known as the Holocaust."};


    {title = "The Book Thief"; author = "Markus Zusak"; description = "It is 1939. Nazi Germany. The country is holding its breath. Death has never been busier, and will be busier still. By her brother's graveside, Liesel's life is changed when she picks up a single object, partially hidden in the snow. It is The Gravedigger's Handbook, left behind there by accident, and it is her first act of book thievery. So begins a love affair with books and words, as Liesel, with the help of her accordian-playing foster father, learns to read. Soon she is stealing books from Nazi book-burnings, the mayor's wife's library, wherever there are books to be found. But these are dangerous times. When Liesel's foster family hides a Jew in their basement, Liesel's world is both opened up, and closed down. In superbly crafted writing that burns with intensity, award-winning author Markus Zusak has given us one of the most enduring stories of our time."};

    |];;

    (*Creating an array to store some of the non-fiction books that can be suggested by our Chat bot*)
  let non_fiction = [|

  {title = "Guns, Germs, and Steel: The Fates of Human Societies"; author = "Jared Diamond"; description = "Here is another book that frequents the reading lists of politics and history majors the world over! Many have theorized on why certain human societies have failed while others have thrived — but perhaps none have done it as astutely as Jared Diamond has in Guns, Germs, and Steel. The three things featured the title make up the nexus that Diamond presents as being fundamental to the development (or lack thereof) of human society. Though Diamond's thesis has as many detractors as it has supporters, it is worth reading to see which side of the debate you fall on."};


  {title = "Mein Kampf (My Struggle),"; author = "William Gibson"; description = "Madman, tyrant, animal—history has given Adolf Hitler many names. In Mein Kampf (My Struggle), often called the Nazi bible, Hitler describes his life, frustrations, ideals, and dreams. Born to an impoverished couple in a small town in Austria, the young Adolf grew up with the fervent desire to become a painter. The death of his parents and outright rejection from art schools in Vienna forced him into underpaid work as a laborer. During the First World War, Hitler served in the infantry and was decorated for bravery. After the war, he became actively involved with socialist political groups and quickly rose to power, establishing himself as Chairman of the National Socialist German Worker's party. In 1924, Hitler led a coalition of nationalist groups in a bid to overthrow the Bavarian government in Munich. The infamous Munich  was unsuccessful, and Hitler was arrested. During the nine months he was in prison, an embittered and frustrated Hitler dictated a personal manifesto to his loyal follower Rudolph Hess. He vented his sentiments against communism and the Jewish people in this document, which was to become Mein Kampf, the controversial book that is seen as the blue-print for Hitler's political and military campaign. In Mein Kampf, Hitler describes his strategy for rebuilding Germany and conquering Europe. It is a glimpse into the mind of a man who destabilized world peace and pursued the genocide now known as the Holocaust."};

  {title = "The Art of War,"; author = "Sun Tzu"; description = "Twenty-Five Hundred years ago, Sun Tzu wrote this classic book of military strategy based on Chinese warfare and military thought. Since that time, all levels of military have used the teaching on Sun Tzu to warfare and civilization have adapted these teachings for use in politics, business and everyday life. The Art of War is a book which should be used to gain advantage of opponents in the boardroom and battlefield alike."};

  {title = "Hiroshima"; author = "John Hersey"; description = "On August 6, 1945, Hiroshima was destroyed by the first atom bomb ever dropped on a city. This book, John Hersey's journalistic masterpiece, tells what happened on that day. Told through the memories of survivors, this timeless, powerful and compassionate document has become a classic that stirs the conscience of humanity (The New York Times)."};

  {title = "The Elements of Style"; author = "William Strunk Jr."; description = "This style manual offers practical advice on improving writing skills. Throughout, the emphasis is on promoting a plain English style. This little book can help you communicate more effectively by showing you how to enliven your sentences."};


  {title = "The Right Stuff,"; author = "Tom Wolfe"; description = "Tom Wolfe began The Right Stuff at a time when it was unfashionable to contemplate American heroism. Nixon had left the White House in disgrace, the nation was reeling from the catastrophe of Vietnam, and in 1979--the year the book appeared--Americans were being held hostage by Iranian militants. Yet it was exactly the anachronistic courage of his subjects that captivated Wolfe. In his foreword, he notes that as late as 1970, almost one in four career Navy pilots died in accidents. The Right Stuff, he explains, became a story of why men were willing--willing?--delighted!--to take on such odds in this, an era literary people had long since characterized as the age of the anti-hero. Wolfe's roots in New Journalism were intertwined with the nonfiction novel that Truman Capote had pioneered with In Cold Blood. As Capote did, Wolfe tells his story from a limited omniscient perspective, dropping into the lives of his characters as each in turn becomes a major player in the space program. After an opening chapter on the terror of being a test pilot's wife, the story cuts back to the late 1940s, when Americans were first attempting to break the sound barrier. Test pilots, we discover, are people who live fast lives with dangerous machines, not all of them airborne. Chuck Yeager was certainly among the fastest, and his determination to push through Mach 1--a feat that some had predicted would cause the destruction of any aircraft--makes him the book's guiding spirit. Yet soon the focus shifts to the seven initial astronauts. Wolfe traces Alan Shepard's suborbital flight and Gus Grissom's embarrassing panic on the high seas (making the controversial claim that Grissom flooded his Liberty capsule by blowing the escape hatch too soon). The author also produces an admiring portrait of John Glenn's apple-pie heroism and selfless dedication. By the time Wolfe concludes with a return to Yeager and his late-career exploits, the narrative's epic proportions and literary merits are secure. Certainly The Right Stuff is the best, the funniest, and the most vivid book ever written about America's manned space program. --Patrick O'Kelley"};


  {title = "A Brief History of Time"; author = "Stephen Hawking"; description = "MA landmark volume in science writing by one of the great minds of our time, the book explores such profound questions as: How did the universe begin—and what made its start possible? Does time always flow forward? Is the universe unending—or are there boundaries? Are there other dimensions in space? What will happen when it all ends?."};


  {title = "The Structure of Scientific Revolutions"; author = "Thomas Kuhn"; description = " With The Structure of Scientific Revolutions, Kuhn challenged long-standing linear notions of scientific progress, arguing that transformative ideas do not arise from the day-to-day, gradual process of experimentation and data accumulation but that the revolutions in science, those breakthrough moments that disrupt accepted thinking and offer unanticipated ideas, occur outside of “normal science,” as he called it. Though Kuhn was writing when physics ruled the sciences, his ideas on how scientific revolutions bring order to the anomalies that amass over time in research experiments are still instructive in our biotech age."};
  |];;

(*Creating an array to store some of the horror novels that can be suggested by our Chat bot*)
  let horror_books = [|
    
    {title = "Dracula"; author = "Bram Stoker"; description = "When Jonathan Harker visits Transylvania to help Count Dracula with the purchase of a London house, he makes a series of horrific discoveries about his client. Soon afterwards, various bizarre incidents unfold in England: an apparently unmanned ship is wrecked off the coast of Whitby; a young woman discovers strange puncture marks on her neck; and the inmate of a lunatic asylum raves about the 'Master' and his imminent arrival."};


    {title = "Frankenstein"; author = "Mary Shelley"; description = "Mary Shelley started writing classic gothic thriller Frankenstein when she was 18 years old. Two centuries later, it is a major ancestor of both the science fiction and horror genres, tackling huge themes like the nature of life and death, immortality and genetic engineering. It is a pro-science novel that at its heart shows Dr Frankenstein as the callous fiend of the story, who created a being and was not willing to accept responsibility for his actions. In an age where the space between technical life and death is narrower than ever, and scientists are playing with the makeup of what makes us humans, Frankenstein can still teach an important lesson: just because you can, doesn't mean you should."};

    {title = "Ghost Story"; author = "Peter Straub"; description = "For four aging men in the terror-stricken town of Milburn, New York, an act inadvertently carried out in their youth has come back to haunt them. Now they are about to learn what happens to those who believe they can bury the past -- and get away with murder."};

    {title = "Paranormal"; author = "Ahmed Khalid Tawfik"; description = "Name: Rafat Ismail. Age: Sixty-six years old.
    Occupation: Former professor of hematology, having studied at universities in Egypt, Europe, and America. Marital status: Single.
    I have lived a fulfilling life in which I have delved everywhere into the myths of life that we inherited from our ancestors and that terrified us as they terrified them. I have faced Count Dracula and zombies, entered Dr. Frankenstein's castle, been cursed by the pharaohs, played with tarot cards, and much more. Before my time comes or my brain arteries harden and erase my memory, I preferred to write my stories so that young people know what a fighter against myths and nonsense I was in my life."};


    {title = "The Turn of the Screw"; author = "Henry James "; description = "A very young woman's first job: governess for two weirdly beautiful, strangely distant, oddly silent children, Miles and Flora, at a forlorn estate... An estate haunted by a beckoning evil. Half-seen figures who glare from dark towers and dusty windows- silent, foul phantoms who, day by day, night by night, come closer, ever closer. With growing horror, the helpless governess realizes the fiendish creatures want the children, seeking to corrupt their bodies, possess their minds, own their souls. But worse-much worse- the governess discovers that Miles and Flora have no terror of the lurking evil. For they want the walking dead as badly as the dead want them."};

    {title = "The Hunger"; author = "Alma Katsu"; description = "Evil is invisible, and it is everywhere. Tamsen Donner must be a witch. That is the only way to explain the series of misfortunes that have plagued the wagon train known as the Donner Party. Depleted rations, bitter quarrels, and the mysterious death of a little boy have driven the pioneers to the brink of madness. They cannot escape the feeling that someone--or something--is stalking them. Whether it was a curse from the beautiful Tamsen, the choice to follow a disastrous experimental route West, or just plain bad luck--the 90 men, women, and children of the Donner Party are at the brink of one of the deadliest and most disastrous western adventures in American history."};


    {title = "House of Leaves"; author = "Mark Z. Danielewski"; description = "A young family moves into a small home on Ash Tree Lane where they discover something is terribly wrong: their house is bigger on the inside than it is on the outside. Of course, neither Pulitzer Prize-winning photojournalist Will Navidson nor his companion Karen Green was prepared to face the consequences of that impossibility, until the day their two little children wandered off and their voices eerily began to return another story—of creature darkness, of an ever-growing abyss behind a closet door, and of that unholy growl which soon enough would tear through their walls and consume all their dreams. By day he is the hunter, stalking the undead through the ruins of civilisation. By night, he barricades himself in his home and prays for the dawn."};


    {title = "Carrie"; author = "Stephen King"; description = "A modern classic, Carrie introduced a distinctive new voice in American fiction -- Stephen King. The story of misunderstood high school girl Carrie White, her extraordinary telekinetic powers, and her violent rampage of revenge, remains one of the most barrier-breaking and shocking novels of all time.  "};



    {title = "IT"; author = "Stephen King"; description = "It is a small city, a place as hauntingly familiar as your own hometown. Only in Derry the haunting is real ... They were seven teenagers when they first stumbled upon the horror. Now they are grown-up men and women who have gone out into the big world to gain success and happiness. But none of them can withstand the force that has drawn them back to Derry to face the nightmare without an end, and the evil without a name."};


    |];;

(*Creating a list that stores all the possible typos in the word (Fiction) so we can resolve that typo*)
    let fiction_typos = ["fictio"; "fictin"; "fction"; "ficion";"ficton" ; "fition"; "fction"; "iction";
  "fictionn"; "fictioon"; "fictiion"; "ficttion"; "ficction"; "fiction"; "ffiction";
  "fictiomn"; "fictiobn"; "fictiogn"; "fictiohn"; "fictiojn"; "fictipon"; "fictilon"; "fictiion"; "fictikon"; "fictoion";
  "fictkion"; "fictlion"; "fictuion"; "fictjion"; "ficytion"; "ficgtion"; "fichtion"; "ficrtion"; "ficftion"; "fivction";
  "fixction"; "fisction"; "fidction"; "fifction"; "foiction"; "fkiction"; "fliction"; "fuiction"; "fjiction"; "gfiction";
  "vfiction"; "bfiction"; "dfiction"; "efiction"; "rfiction"; "tfiction"; "cfiction";
  "fictiom"; "fictiob"; "fictiog"; "fictioh"; "fictioj"; "fictipn"; "fictiln"; "fictiin"; "fictikn"; "foction";
  "fkction"; "flction"; "fuction"; "fjction"; "ficyion"; "ficgion"; "fichion"; "ficrion"; "ficfion"; "fivtion";
  "fixtion"; "fistion"; "fidtion"; "fiftion"; "foction"; "fkction"; "flction"; "fuction"; "fjction"; "giction";
  "viction"; "biction"; "diction"; "eiction"; "riction"; "tiction"; "ciction";
  "fiction"; "fictoin"; "fiction"; "fiction"; "fiction"; "fiction"; "fiction";]
  
  (*Creating a list that stores all the possible typos in the word (Horror) so we can resolve that typo*)
let horror_typos = [
  "horor"; "hrror"; "horor"; "horor"; "hrror"; "orror";
  "horrorr"; "horroor"; "horrror"; "horrror"; "hoorror"; "hhorror";
  "horrotr"; "horrofr"; "horrogr"; "horroer"; "horrodr"; "horrpor"; "horrlor"; "horrior"; "horrkor"; "hortror";
  "horfror"; "horgror"; "horeror"; "hordror"; "hotrror"; "hofrror"; "hogrror"; "hoerror"; "hodrror";
  "horrro"; "hororr"; "horror"; "hroror"; "ohrror";
  "hotror"; "hofror"; "hogror"; "hoeror"; "hodror"; "hprror"; "hlrror"; "hirror"; "hkrror"; "hotror";
  "hofror"; "hogror"; "hoeror"; "hodror"; "hotror"; "hofror"; "hogror"; "hoeror"; "hodror"; "hprror";
  "hlrror"; "hirror"; "hkrror"; "jorror"; "norror"; "morror"; "gorror"; "torror"; "yorror"; "uorror"; "borror";
]

(*Creating a list that stores all the possible typos in the word (Crime) so we can resolve that typo*)
let crime_typos = [
  "crim"; "crie"; "crme"; "cime"; "rime";
  "crimee"; "crimme"; "criime"; "crrime"; "ccrime";
  "crimre"; "crimde"; "crimfe"; "crimwe"; "crimse"; "crinme"; "crihme"; "crijme"; "crikme"; "croime";
  "crkime"; "crlime"; "cruime"; "crjime"; "ctrime"; "cfrime"; "cgrime"; "cerime"; "cdrime"; "vcrime";
  "xcrime"; "scrime"; "dcrime"; "fcrime"; "crimr"; "crimd"; "crimf"; "crimw"; "crims"; "crine"; "crihe";
  "crije"; "crike"; "crome"; "crkme"; "crlme"; "crume"; "crjme"; "ctime"; "cfime"; "cgime"; "ceime"; "cdime";
  "vrime"; "xrime"; "srime"; "drime"; "frime"; "criem"; "crmie"; "cirme"; "rcime"; "crime";
]
(*Creating a list that stores all the possible typos in the word (Fantasy) so we can resolve that typo*)

let fantasy_typos = [
  "fantas"; "fantay"; "fntasy"; "fanasy"; "fatasy"; "fntasy"; "antasy";
  "fantasyy"; "fantassy"; "fantaasy"; "fanttasy"; "fanntasy"; "faantasy"; "ffantasy";
  "fantasuy"; "fantashy"; "fantasjy"; "fantasty"; "fantasgy"; "fantadsy"; "fantaxsy"; "fantacsy";
  "fantaasy"; "fantaqsy"; "fantawsy"; "fantaesy"; "fantazsy"; "fantsasy"; "fantzasy"; "fantxasy";
  "fantqasy"; "fantwasy"; "fanytasy"; "fangtasy"; "fanhtasy"; "fanrtasy"; "fanftasy"; "famntasy";
  "fabntasy"; "fagntasy"; "fahntasy"; "fajntasy"; "fsantasy"; "fzantasy"; "fxantasy"; "fqantasy";
  "fwantasy"; "gfantasy"; "vfantasy"; "bfantasy"; "dfantasy"; "efantasy"; "rfantasy"; "tfantasy";
  "cfantasy"; "fantasu"; "fantash"; "fantasj"; "fantast"; "fantasg"; "fantady"; "fantaxy"; "fantacy";
  "fantaay"; "fantaqy"; "fantawy"; "fantaey"; "fantazy"; "fsntasy"; "fzntasy"; "fxntasy"; "fqntasy";
  "fwntasy"; "fanyasy"; "fangasy"; "fanhasy"; "fanrasy"; "fanfasy"; "famtasy"; "fabtasy"; "fagtasy";
  "fahtasy"; "fajtasy"; "fsntasy"; "fzntasy"; "fxntasy"; "fqntasy"; "fwntasy"; "gantasy"; "vantasy";
  "bantasy"; "dantasy"; "eantasy"; "rantasy"; "tantasy"; "cantasy"; "fantays"; "fantsay"; "fanatsy";
  "fatnasy"; "fnatasy"; "afntasy"; "fantasy";
]

(*Creating a list that stores all the possible typos in the word (History) so we can resolve that typo*)
let history_typos = [
  "histor"; "histoy"; "histry"; "hisory"; "hitory"; "hstory"; "istory";
  "historyy"; "historry"; "histoory"; "histtory"; "hisstory"; "hiistory"; "hhistory";
  "historuy"; "historhy"; "historjy"; "historty"; "historgy"; "histotry"; "histofry"; "histogry";
  "histoery"; "histodry"; "histpory"; "histlory"; "histiory"; "histkory"; "hisytory"; "hisgtory";
  "hishtory"; "hisrtory"; "hisftory"; "hidstory"; "hixstory"; "hicstory"; "hiastory"; "hiqstory";
  "hiwstory"; "hiestory"; "hizstory"; "hoistory"; "hkistory"; "hlistory"; "huistory"; "hjistory";
  "jhistory"; "nhistory"; "mhistory"; "ghistory"; "thistory"; "yhistory"; "uhistory"; "bhistory";
  "historu"; "historh"; "historj"; "histort"; "historg"; "histoty"; "histofy"; "histogy"; "histoey";
  "histody"; "histpry"; "histlry"; "histiry"; "histkry"; "hisyory"; "hisgory"; "hishory"; "hisrory";
  "hisfory"; "hidtory"; "hixtory"; "hictory"; "hiatory"; "hiqtory"; "hiwtory"; "hietory"; "hiztory";
  "hostory"; "hkstory"; "hlstory"; "hustory"; "hjstory"; "jistory"; "nistory"; "mistory"; "gistory";
  "tistory"; "yistory"; "uistory"; "bistory"; "histoyr"; "histroy"; "hisotry"; "hitsory"; "hsitory";
  "ihstory"; "history";
]

(*Creating a list that stores all the possible typos in the word (non-fiction) so we can resolve that typo*)
let nonfiction_typos = [
  "on-fiction"; "nn-fiction"; "non-fction"; "non-ficion"; "non-fition"; "non-fction"; "non-iction"; "nonfiction";
  "on-fiction"; "nn-fiction"; "on-fiction"; "non-fictionn"; "non-fictioon"; "non-fictiion"; "non-ficttion"; "non-ficction";
  "non-fiiction"; "non-ffiction"; "non--fiction"; "nonn-fiction"; "noon-fiction"; "nnon-fiction"; "non-fictiomn";
  "non-fictiobn"; "non-fictiogn"; "non-fictiohn"; "non-fictiojn"; "non-fictipon"; "non-fictilon"; "non-fictiion";
  "non-fictikon"; "non-fictoion"; "non-fictkion"; "non-fictlion"; "non-fictuion"; "non-fictjion"; "non-ficytion";
  "non-ficgtion"; "non-fichtion"; "non-ficrtion"; "non-ficftion"; "non-fivction"; "non-fixction"; "non-fisction";
  "non-fidction"; "non-fifction"; "non-foiction"; "non-fkiction"; "non-fliction"; "non-fuiction"; "non-fjiction";
  "non-gfiction"; "non-vfiction"; "non-bfiction"; "non-dfiction"; "non-efiction"; "non-rfiction"; "non-tfiction";
  "non-cfiction"; "nomn-fiction"; "nobn-fiction"; "nogn-fiction"; "nohn-fiction"; "nojn-fiction"; "npon-fiction";
  "nlon-fiction"; "nion-fiction"; "nkon-fiction"; "mnon-fiction"; "bnon-fiction"; "gnon-fiction"; "hnon-fiction";
  "jnon-fiction"; "mon-fiction"; "bon-fiction"; "gon-fiction"; "hon-fiction"; "jon-fiction"; "npn-fiction";
  "nln-fiction"; "nin-fiction"; "nkn-fiction"; "non-foction"; "non-fkction"; "non-flction"; "non-fuction";
  "non-fjction"; "non-ficyion"; "non-ficgion"; "non-fichion"; "non-ficrion"; "non-ficfion"; "non-fivtion";
  "non-fixtion"; "non-fistion"; "non-fidtion"; "non-fiftion"; "non-foction"; "non-fkction"; "non-flction";
  "non-fuction"; "non-fjction"; "non-giction"; "non-viction"; "non-biction"; "non-diction"; "non-eiction";
  "non-riction"; "non-tiction"; "non-ciction"; "mon-fiction"; "bon-fiction"; "gon-fiction"; "hon-fiction";
  "jon-fiction"; "npn-fiction"; "nln-fiction"; "nin-fiction"; "nkn-fiction"; "mon-fiction"; "bon-fiction";
  "gon-fiction"; "hon-fiction"; "jon-fiction"; "non-fictino"; "non-fictoin"; "non-ficiton"; "non-fitcion";
  "non-fcition"; "non-ifction"; "nonf-iction"; "no-nfiction"; "nno-fiction"; "onn-fiction"; "nonfiction"; "non fiction"; "not fiction"; "not a fiction"; "no fiction"; "nofiction";
    "non-fiction";
    ]



(* Helper function: Random function that creates a random number using the built in functions in the library (Random)
   Signature: int -> int *)
   let random_int n =
    Random.self_init();
    Random.int (n)
  ;;
  
(* This function greets the user when they start a conversation with the chatbot.
   Signature:  unit -> string *)
let greet_user user = 
  (*Creating an array of greetings*)
  let greet_array = [|"How can I be the Robin to your Batman today?"; "In what way may I unleash my superpowers for your benefit?"; "Need a hand, a paw, or perhaps a tentacle? What can I do for you?"|] in 
  (*Then accesing a random greeting from that array*)
  let idx = random_int ((Array.length greet_array)) in
  greet_array.(idx)
;;

(* this function takes the user's input as a string and return a list of string tokens that represent the user's input. 
   Signature: string -> string list *)

   (* This function takes a character as input and returns true if it is a 
   whitespace character (i.e. a space, tab, newline, or carriage return), 
   and false otherwise. *)
let is_whitespace (c: char) : bool =
  match Char.code c with
  | 9 | 10 | 13 | 32 -> true    (* Tab, LF, CR, space *)
  | _ -> false
;;

(* This function takes a string as input and returns a list of its individual words, by splitting the string at whitespace characters. *)
let tokenize (input: string) : string list =
  let rec loop (start: int) (end_: int) (tokens: string list) : string list =
    (* If we've reached the end of the input string, extract the last word, 
       add it to the list of tokens if it's not empty, and return the reversed 
       list of tokens. *)
    if end_ = String.length input then
      let token = String.sub input start (end_ - start) in
      if token <> "" then token :: tokens else tokens
    (* If we've encountered a whitespace character, extract the current word, 
       add it to the list of tokens if it's not empty, and continue processing 
       the next word by recursively calling the loop function with updated 
       start and end indices. *)
    else if is_whitespace input.[end_] then
      let token = String.sub input start (end_ - start) in
      if token <> "" then
        loop (end_ + 1) (end_ + 1) (token :: tokens)
      else
        loop (end_ + 1) (end_ + 1) tokens
    (* If the current character is not a whitespace character, simply advance 
       the end index and continue processing the current word. *)
    else
      loop start (end_ + 1) tokens
  in
  (* Call the loop function with initial start and end indices of zero, and an 
     empty list of tokens. Reverse the resulting list of tokens to ensure that 
     they are in the correct order. *)
  List.rev (loop 0 0 [])
;;
  
  
(*Checking what category was requested by the user so we can store the array of books that belong to that category
   Signature: string -> string array
   *)
    let book_arr category_str =  
      match category_str with
      | a when a = "fiction" -> fiction_books
      | a when a = "fantasy" -> fantasy_books
      | a when a = "crime" -> crime_books
      | a when a = "sci-fi" -> sci_fi_books 
      | a when a = "history" -> history_books 
      | a when a = "non-fiction" -> non_fiction 
      | a when a = "fantasy" -> fantasy_books 
      | a when a = "horror" -> horror_books 
      | a -> [||]
    ;;

(*This function creates an array of book suggestions of a radom size based on the category entered by the user
   Signature: string -> string array
   *)
    let book_suggestions category_str =
      (*Declaring an array to store the book suggestions*)
      let book_list = ref [||] in
      (*Storing the array of books that reprsent the category requested*)
      let curr_arr = book_arr category_str in
      (*Genrating A random size between 0 and 2, then adding 1 to the result in case the size was 0
         Because if size was 0, no books will be printed!*)
      let curr_size = random_int(3)+1 in
         (*Looping from 0 to the size of our book suggestion array*)
      for i = 0 to curr_size-1 do
        (*Genrating a radnom index so we can get a random book from our array of books*)
        let curr_idx = random_int((Array.length curr_arr)) in
        (*Checking if the  book suggestion array was empty*)
        if Array.length !book_list-1 = 0 then
          (*If it was empty we add a random book from the category requested to the book suggestion array*)
          book_list := Array.append !book_list [|curr_arr.(curr_idx)|];
          (*Declaring a counter so it can help us spot any duplicates*)
          let ctr = ref 0 in
          (*Looping on our book suggestion array to check that the current book isn't a duplicate*)
          for i = 0 to Array.length !book_list-1 do
          if (curr_arr.(curr_idx).title <> !book_list.(i).title) then        
            ctr := !ctr+1;
        done;
        (*If the ctr is of the same size as our book suggestion array, this means that the current book is a unique book*)
        if !ctr = Array.length !book_list then
          (*So we add it to our book suggestion array*)
          book_list := Array.append !book_list [|curr_arr.(curr_idx)|];
      done;
      (*Finally we return our book suggestion array*)
      !book_list
    ;;

    (* let one_book_suggestion category_str = 
      let curr_arr = book_arr category_str in
      let curr_idx = random_int((Array.length curr_arr)) in
      curr_arr.(curr_idx)
    ;; *)
let best_bool = ref false;;
  (*This function checks if the word best was included in the user's input
     If the word best was indeed found, it prints the title of the novel I wrote; because It's the best*)
      let rec best_book str_lst = 
        (*Matching the string of tokens that reprsent the users input to search for the word best*)
      match str_lst with
      | [] -> ()
      (*If the word best was found, we print the title of my novel*)
      | head::tail  when (String.lowercase_ascii head = "best")  -> best_bool := true; Printf.printf("\nIt's well know that the best of the best is Al Kahf Al Ghamed (The Mysterios Cave), by the aspiring best selling author: Sajed Samer, however; one must say that there might be other books that come close to the brilliance of that epic novel \n \n")
      (*Else we continue searching*)
      | head::tail  -> best_book (tail)
      ;;

    
      let rec more_books str_lst = 
      match str_lst with
      | [] -> false
      | head::tail  when (String.lowercase_ascii head = "more" || String.lowercase_ascii head = "again" || String.lowercase_ascii head = "ore" || String.lowercase_ascii head = "mor" || String.lowercase_ascii head = "moe" || String.lowercase_ascii head = "mre")  -> true
      
      | head::tail  -> more_books (tail)
      ;;

(*Creating a function that handles any questions irrleavent to books, basically a function for small talk*)
(*Signature: stringlist -> string*)
      let small_talk str_lst =
        (*Defining a few counters as refrences, so we can figure which question was asked by the user each time the function is called*)
        let identity_ctr = ref 0 in
        let builder_ctr = ref 0 in 
        let how_ctr = ref 0 in
        let lang_ctr = ref 0 in
        let what_ctr = ref 0 in
        let help_ctr = ref 0 in
        let purpose_ctr = ref 0 in 

        (*Intiliazing the counters with zero once more, so when the function is called again they return to zero*)
        identity_ctr := 0;
        builder_ctr := 0;
        how_ctr:= 0;
        lang_ctr := 0;
        what_ctr :=0;
        help_ctr := 0;
        purpose_ctr := 0;
(*Defning a varible that stores a redundant value from the recursive function that increments the counters based on certain keywords*)
        let boi =
        let rec sth str_lst = 
        match str_lst with
        | [] -> ""
        | head::tail  when (String.lowercase_ascii head = "who") ||  (String.lowercase_ascii head = "wo") || (String.lowercase_ascii head = "wh") || (String.lowercase_ascii head = "whoo") || (String.lowercase_ascii head = "what")  || (String.lowercase_ascii head = "wat") || (String.lowercase_ascii head = "wha") || (String.lowercase_ascii head = "hat")  || (String.lowercase_ascii head = "wht") ||  (String.lowercase_ascii head = "whaat") || (String.lowercase_ascii head = "whatt")-> identity_ctr := !identity_ctr +1; builder_ctr := !builder_ctr +1; sth (tail)
        | head::tail  when (String.lowercase_ascii head = "are") ||  (String.lowercase_ascii head = "ar") || (String.lowercase_ascii head = "ae") || (String.lowercase_ascii head = "r") || (String.lowercase_ascii head = "re")-> identity_ctr := !identity_ctr +1;sth (tail)
        | head::tail  when (String.lowercase_ascii head = "you") ||  (String.lowercase_ascii head = "yo") || (String.lowercase_ascii head = "ou") || (String.lowercase_ascii head = "u") || (String.lowercase_ascii head = "ou")-> identity_ctr := !identity_ctr +1; builder_ctr := !builder_ctr +1; how_ctr := !how_ctr +1; sth (tail)
        | head::tail  when (String.lowercase_ascii head = "made") ||  (String.lowercase_ascii head = "made") || (String.lowercase_ascii head = "ade") || (String.lowercase_ascii head = "mae") || (String.lowercase_ascii head = "mde")  || (String.lowercase_ascii head = "built") || (String.lowercase_ascii head = "build") || (String.lowercase_ascii head = "buil") || (String.lowercase_ascii head = "uilt") -> how_ctr := !how_ctr +1; builder_ctr := !builder_ctr +1; sth (tail)
        | head::tail  when (String.lowercase_ascii head = "were") ||  (String.lowercase_ascii head = "wher") || (String.lowercase_ascii head = "where") || (String.lowercase_ascii head = "war") || (String.lowercase_ascii head = "wear")  || (String.lowercase_ascii head = "wer") || (String.lowercase_ascii head = "wre") || (String.lowercase_ascii head = "wre") || (String.lowercase_ascii head = "ere") || (String.lowercase_ascii head = "here") -> how_ctr := !how_ctr +1;  sth (tail)
        | head::tail  when (String.lowercase_ascii head = "help") ||  (String.lowercase_ascii head = "hell") || (String.lowercase_ascii head = "hel") || (String.lowercase_ascii head = "hlp") || (String.lowercase_ascii head = "elp")  || (String.lowercase_ascii head = "hep") || (String.lowercase_ascii head = "helpo")  -> help_ctr := !help_ctr +1;  sth (tail)
        | head::tail  when (String.lowercase_ascii head = "do") ||  (String.lowercase_ascii head = "d") || (String.lowercase_ascii head = "o") || (String.lowercase_ascii head = "doo") -> what_ctr := !what_ctr +1; sth (tail)
        | head::tail  when (String.lowercase_ascii head = "purpose") ||  (String.lowercase_ascii head = "purpos") || (String.lowercase_ascii head = "purpoe") || (String.lowercase_ascii head = "purose") || (String.lowercase_ascii head = "urpose") || (String.lowercase_ascii head = "prpose")  ||  (String.lowercase_ascii head = "purpse")  ||  (String.lowercase_ascii head = "pupose")-> purpose_ctr := !purpose_ctr +1; sth (tail)
        | head::tail  when (String.lowercase_ascii head = "language") ||  (String.lowercase_ascii head = "languag") || (String.lowercase_ascii head = "lanuage") || (String.lowercase_ascii head = "laguage") || (String.lowercase_ascii head = "anguage") || (String.lowercase_ascii head = "languae")  ||  (String.lowercase_ascii head = "languagee")  ||  (String.lowercase_ascii head = "laguage") ||  (String.lowercase_ascii head = "lnguage") ||  (String.lowercase_ascii head = "lang") -> lang_ctr := !lang_ctr +1; sth (tail)
        | head::tail  -> sth (tail)
      in sth str_lst
    in
    (*A usless print message, used to avoid a warning message when running the program*)
        printf "%s" boi;
        (*Returning a certain message based on the value of our counters*)
        if !identity_ctr = 3 then "who"
        else if (!builder_ctr =3) then "build"
        else if (!how_ctr = 3) then "how"
        else  if (!lang_ctr = 1) then "lang"
        else  if !what_ctr = 1 || !purpose_ctr = 1 || !help_ctr = 1 then "help"
        else ""; 
      ;;


      let rec helper_check_typos str typos_list = 
        match typos_list with
            | [] -> "Category not found"
            | h::_ when h = str -> h
            | _::tail -> helper_check_typos str tail
      ;;
      
      let check_typos str = 
          match str with
              | a when helper_check_typos a fiction_typos <> "Category not found" ->  "fiction"
              | a when helper_check_typos a nonfiction_typos <> "Category not found" -> "non-fiction"
              | a when helper_check_typos a history_typos <> "Category not found" -> "history"
              | a when helper_check_typos a fantasy_typos <> "Category not found" ->  "fantasy"
              | a when helper_check_typos a crime_typos <> "Category not found" -> "crime"
              | a when helper_check_typos a horror_typos <> "Category not found" ->  "horror"
              | a when a = "sci-fi" ->  "sci-fi"
              | a -> "Category not found"
      ;;
    let rec helper_get_category str = 
      check_typos str
    ;;
    
  
    let rec get_category str_lst cat_lst =
      match str_lst with
      | [] -> "Category not found"
      | h :: t ->
        let category = helper_get_category h  in
        if category = "Category not found" then get_category t cat_lst
        else category
    ;;
    
(*A function that takes a record reprsenting a book, then prints all the data stored in this record
   Signature: record book -> ()*)
  let book_details (b: book) : string =
    (*Printing all the data of the book stored in the record*)
    Printf.sprintf "\nName: %s\nAuthor: %s\nDescription: %s\n" b.title b.author b.description
  ;;
  
  let rec delay seconds =
    let start_time = Sys.time () in
    let rec loop () =
      if Sys.time () -. start_time >= seconds then ()
      else loop ()
    in
    loop ()
  ;;
  
  
  

  let goodbye_delay () =
    print_string "...Putting on my pajamas and shutting down...";
    flush stdout;  (* Flush the output buffer to ensure it's printed immediately *)
    delay 3.0;  (* Delay for 2 seconds *)
    print_endline "\n"
  ;;
  
    

  let ask_user_name = 
    (*Creating an array of greetings*)
    let ask_user_name_array = [|"Hey there! What do your friends call you? "; "May I have the honor of knowing your name? "; "What do your friends and family call you, besides awesome? "; "What's the name behind that charming personality? "|] in 
    (*Then accesing a random greeting from that array*)
    let idx = random_int ((Array.length ask_user_name_array)) in
    ask_user_name_array.(idx);
  ;;

    (* Define a "close" variable to control the chat flow *)
  let close = ref false;;
  let category_ctr = ref 0;;
   (*Defining a category array to store the categoris*)
  let category_arr = ref [||];;


(* chatgpt writing style *)
let rec sleep_ms ms =
  let start_time = Sys.time () in
  let wait_until = start_time +. (float_of_int ms /. 1000.0) in
  let current_time = ref start_time in
  while !current_time < wait_until do
    current_time := Sys.time ()
  done

let type_with_delay str delay_ms =
  let len = String.length str in
  for i = 0 to len - 1 do
    print_char str.[i];
    flush stdout;
    sleep_ms delay_ms
  done

  let think () =
    type_with_delay "...Camel is thinking..." 1;
    flush stdout;  (* Flush the output buffer to ensure it's printed immediately *)
    delay 1.5;  (* Delay for 1.7 seconds *)
    print_endline "\n"
  ;;


(* Main function *)
let main() =
  (* Print a welcome message for the user and print guidelines *)
  let output =  "\n\t\tWelcome to Al Gamel chat bot!\nThis Chat bot is a simple AI bot that suggests books based on a category or genre of your choice!\n Or you can ask me questions about myself (for ex: Who are you?) \nIf you want to exit, Just type (quit) or (close)\n\n" in 
  type_with_delay output 1;
  (* Greet the user *)
  think ();
  (* Ask for the User Name *)
 let output = "Al Gamel: " ^ ask_user_name in
 type_with_delay output 1;
  let user_name = read_line() in
  let output = "\n- Al Gamel: " ^ user_name ^ "," ^ (greet_user user_name) ^ "\n" in
  type_with_delay output 1;
  (* while loop for the chat *)
  while not !close do
    (* Create a list of categories *)
    let categories = ["fiction"; "horror"; "crime"; "fantasy"; "sci-fi"; "history"; "non-fiction"] in
    (* Ask the user to enter a message and convert the message to lowercase characters *)
    printf "\n- %s: " user_name;
    let str_input = read_line () |> String.lowercase_ascii in
    (* If the user entered "quit" or "close" shutdown the program *)
    if str_input = "quit"  || str_input = "close"  then close := true
    else 
      (* Call tokenize function and store the list of strings (of the input) in str_lst *)
      let str_lst = tokenize str_input in
      best_book str_lst;
      let talk_with_me = small_talk str_lst in
      (*If no question were asked realted to the chatbot itself, we start checking if a genre was entered*)
      if talk_with_me = "" then (
        (* Get which category the user asked for *)
      let category = get_category str_lst categories in
      let more = ref (more_books str_lst) in
      (* If the category isn't not found, print a sorry message *)
      if category = "Category not found" && not !more && not !best_bool then type_with_delay "\n- Al Gamel: sorry, I can't do this with my current capabilities, because no libraries are working! And there was no time!\n" 1;
      if category <> "Category not found" then ( (* Get a list of books for the category which the user asked for and print the books in the list     *)
        more := false;
        category_ctr  := !category_ctr  + 1;
        (*Pushing the current category into the array*)
        category_arr := Array.append !category_arr [|category|];
        let book_listo = ref (book_suggestions category) in  
        type_with_delay ("\n- Al Gamel: Sure, here are some epic " ^ category ^ " book suggestions: \n \n") 1;
        for i = 0 to Array.length !book_listo -1 do
          think ();
          type_with_delay ("- Al Gamel:" ^ (book_details (!book_listo.(i)))) 1;
          printf"\n ================================================================== \n" ;
        done;
        (* Print a message asking for the user's input *)
        think();
        type_with_delay "\n- Al Gamel: Want any more help? Just enter a book genre or category! Or Ask me sth about myself! And remember, if you want to quit, just type (quit) or (close) \n\n" 1;
    
          )
       ;
          
        (*Checking if the user asked for more books of the same genre as before*)
        if !more = true && !category_ctr <> 0 then (
          (*Setting the current category as the last category entered by the user*)
 let old_category = !category_arr.(Array.length !category_arr -1) in
            let book_listo2 = ref (book_suggestions old_category) in  
            type_with_delay ("\n- Al Gamel: Back for some more " ^ old_category ^ " ... here you are: \n \n") 1;
            for i = 0 to Array.length !book_listo2 -1 do
              think ();
              type_with_delay ("- Al Gamel:" ^ (book_details (!book_listo2.(i)))) 1;
              printf"\n ================================================================== \n" ;
            done;
            (* Print a message asking for the user's input *)
            think();
            type_with_delay "\n- Al Gamel: Want any more help? Just enter a book genre or category! Or Ask me sth about myself! And remember, if you want to quit, just type (quit) or (close) \n\n" 1;
      )
        )
        ;
        (*Printing an answer based on the question asked by the user*)
          if talk_with_me = "who" then type_with_delay "- Al Gamel: I am a naive AI chatbot named Al Gamel that was written with Ocaml\nI have some knowledge in litreature that allows me to suggest books, and some insit about myself, and how I was made\n If you are curios about anything else, Just ASK! Or you can give me a gengre or a categroy of books, and i Will suggest some to you\nOr if you want to quit just type (quit) or (close)\n" 1; 
         if talk_with_me = "how" then type_with_delay "- Al Gamel: I was written using the paradim of functional programming using the very bestest langauge that's known worldwide, and was used to make, NOTHING! OCAML!!!\n If you are curios about anything else, Just ASK! Or you can give me a gengre or a categroy of books, and i Will suggest some to you\nOr if you want to quit just type (quit) or (close)\n" 1;
           if talk_with_me = "lang" then type_with_delay "- Al Gamel: The very bestest langauge that's known worldwide, and was used to make, NOTHING! OCAML!!!\n If you are curios about anything else, Just ASK! Or you can give me a gengre or a categroy of books, and i Will suggest some to you\nOr if you want to quit just type (quit) or (close)\n" 1;
          if talk_with_me = "build" then type_with_delay "- Al Gamel: The very bestest team, Ayman, Sajed, MK and Haytham! We hope you enjoy using it and that this bot doesn't crash!!!\n If you are curios about anything else, Just ASK! Or you can give me a gengre or a categroy of books, and i Will suggest some to you\nOr if you want to quit just type (quit) or (close)\n" 1;
          if talk_with_me = "help" then type_with_delay "- Al Gamel: Well, since I am naive, and the programers who made me had no time to write anything and they couldn't run any libraries, I can only suggest a few random books in different Genres, so give me a book genre and I will give you sth that i hope you can enjoy!\n If you are curios about anything else, Just ASK! Or you can give me a gengre or a categroy of books, and i Will suggest some to you\nOr if you want to quit just type (quit) or (close)\n" 1;
            
                
      (* think();
      printf "\n- Al Gamel: Want any more help? Just enter a book genre or category! Or Ask me sth about myself! And remember, if you want to quit, just type (quit) or (close) \n\n";
      
           *)
           
    
    done;
    
   
      (* Print a Goodbye message *)
  goodbye_delay();
  printf "- Al Gamel: It has been a pleasure helping you, I hope you enjoyed this experience... See you soon :)\n";
;;

let () = 
  (* Run the program *)
  main()  
;;

(*
might do:
  
How you feeling: str_lst (tokenized) -> string
Ask the user how he feels, and respond respictively 

User prefrences: str_lst (tokenized) -> string
Ask the user what genre he likes to read, then say sth like:
"Wow! I love reading this genre too, My favourite is: call one_book_suggestion()"
or
"Nice choice, I love reading call one_book_suggestion() in this genre too"
or 
"I see you're a human (or user) of culture as well, I really enjoyed call one_book_suggestion()"

Plus, storing  the users favourite books or sth, like 
Chatbot: "What are your favourite books?"
User: Stuff
Chat bot: "Oh i like reading this one, but i haven't read that one, OH, this third one looks intresting, what does it talk about?"
etc...

*)

(*
Defintely Do:
Secret Keywords, 5 keywords that prints something fun/special if you know these keywords
*)
