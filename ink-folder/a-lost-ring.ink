# title: A Lost Ring
# theme: dark
# author: Matt K
#IMAGE: imgs/hobbit-book.png
On your shelf, you find a book, "The Hobbit" that you haven't seen before.#CLASS: narration
* [Take the book]
    ->book1
=== book1 ===
#CLASS: narration
Inside the book you find a folded up note note. It appears old and handwritten.
 #CLASS: text
Having opened this book, I suppose you already know much of hobbits. A little people, with no beards, rough hairy feet, and quite round in the middle. They are fond of pipe weed and even fonder of breakfast, lunch, and dinner. Especially second breakfast, lunch, and dinner. What they aren’t fond of is adventure or doing anything unexpected. Bilbo Baggins was a hobbit who did things unexpected and had himself a grand adventure. And he has had nothing but trouble since. Trouble and a vast amount of treasure. Hobbits who didn’t know Bilbo would have assumed he was a Took (and he was, although not in name) as Tooks have a penchant for trouble.
 #CLASS: text
Mr. Baggins however, is only relevant to this story because he had an adventure. And on that adventure he came across a magic ring. This magic ring, by the most unlikely of circumstances, was a ring of power, in fact it was <em>the</em> ring of power, and that was no good and led to plenty of trouble.  What you may not know, is that there are in fact, many rings that aren’t rings of power at all. Magic rings that don’t attract a lot of attention and trouble. These magic rings are spread across Middle Earth and I would very much like your help finding one.
 #CLASS: text
If you are - like most hobbits - opposed to adventure, I promise you can help from your comfortable hobbit-hole, a book in one hand and pipe in the other. If you are more of a Took in nature, I suspect we can find something unexpected along the way.
#CLASS narration
Tucked into the hollowed out book there is a usb flash drive

* [Load the drive into your computer]
#CLEAR
    ->usb_drive
+ { flashlight } [Shine the flashlight at the book]->blacklight_puzzle.clue1
+ { jigsaw_box } [Take a break and thing about what you've discovered so far] -> break
    
=== usb_drive===

-The drive contains two 3 things: a folder that is locked and an audio file and a text file. #CLASS: narration
+ [Open the text file] #CLEAR
    #CLASS text
    ->usb_text
+ [Open the folder]#CLEAR
    It's locked #CLASS: narration
    ->usb_drive
* [Listen to the audio file] #CLEAR
    # AUDIO: audio/listen.mp3
    -The audio file plays one word "Mellon".#CLASS: narration
You remember that the word means "Friend" in Elvish#CLASS: narration
* * [Enter the word "friend" to unlock the folder]
    ->unlocked_folder
    
    = unlocked_folder
    
        - The folder has a second text file and a HTML file.#CLASS: narration
    + [Open the HTML file] #CLEAR
        #IMAGE: imgs/html_file_unsolved.png
        It has a chart that needs a lot of input, you don't know the answer at this time. #CLASS: narration
        -> look_back
    + [Open the second text file] #CLEAR
        -> locked_text
    + [Open the first text file] #CLEAR
        -> usb_text
    = usb_text
    #CLEAR
    #CLASS: text
    I, like any hobbit, enjoy a good riddle. To see if you are good enough to join me on my quest for a lesser ring, try your hand at a riddle even the wisest was pressed to solve.
    {
        -unlocked_folder:
            ->unlocked_folder
        -else:
            ->usb_drive
    }
    
    =locked_text
    //clue to picture frame
        The file reads, #CLASS: narration
        #CLASS: text
        In all of hobbitkind there were few more brave and honest than Samwise Gamgee. It was to him that came the Red Book of Westmarch, Samwise in turn gave this book to his eldest daughter Elanor Fairbairn, née Gardner, who in turn read its adventures to her children. The Red Book being a memoir of the hobbits Bilbo and Frodo Baggins, The Downfall of the Lord of the Rings and the Return of the King as seen by the Little People. 
        #CLASS: text
        Elanor’s daughter,  Fíriel Fairbairn, took a keen interest in the stories and, much like her grandfather, became enamored with the elves and magic. Yet quite unlike her grandfather, she had a desire to adventure. Folks around the Shire said she had “Tookness” about her, which is to say she had trouble keeping her nose out of trouble.
        #CLASS: text
        I only tell you this because that is where our - and her - adventure begins. You see, I believe that Fíriel set off on a magnificent adventure, and found one of the lesser rings. Following in her footsteps, I believe we can see where her ring came to rest. 
        #CLASS: text
        Fíriel knew, through studying the Red Book, that Celebrimbor, who forged the three rings of the elves, had forged many others before it.  Before forging the seven and the nine with Sauron, Celebrimbor and the elves had crafted many lesser rings. These lesser rings, like the three rings of the elves, Fíriel imagined as untainted by the dark lord and simply lost. She, not being quite as wise as the hobbits of legend, Bilbo and Frodo, and not as studied as Meriadoc Brandybuck, decided this was a goal a young hobbit could achieve. After all, why not? Her grandfather walked into Mordor; why shouldn’t a Fíriel be able to find a much less important, much less dangerous ring? And so, sneaking some old maps from Bag End, she left the Shire.

        #CLASS: text
        First, she decided to find where the rings could be made. The one ring being made, and unmade, in the fires of Mt Doom, had shown that the forging of the ring required heat not known to mortal forges. So she made for Eregion, where Celebrimbor forged the rings in the shadows of Caradhas until she came upon land where the ground cracked and burst with the heat and steam from the deep.
        + [Hot showers can be steamy, check the shower]
            #CLEAR
            looks like a shower, with a pretty cool curtain #CLASS: narration
             -> locked_text
        * [Remembering that you recently received a picture of yourself visiting the steam vents of a volcano you look at that picture]
            #CLEAR
            It's a picture of you and your amazing brother at the steam vents of a volcano. #CLASS: narration
            * * [Open the picture frame] 
            #CLEAR
            Inside the picture you find four slips of paper.#CLASS: narration
        ->picture_frame
    =look_back
        + [Look back at the folder] #CLEAR 
            ->unlocked_folder
=== picture_frame ===
    * [Read Paper 1] #CLEAR 
        ->read_riddle_chart
    + { read_riddle_chart } [Look at the chart of hobbit information] #CLEAR
        ->read_riddle_chart
    * [Read Paper 2] -> read_fire_hint
    + { read_fire_hint } [Read about forging] -> read_fire_hint
    * [Read Paper 3] -> read_blank_fire_page
    + { not jigsaw_box_location }{ read_blank_fire_page } [Look at blank page] -> read_blank_fire_page
    * { read_fire_hint and read_blank_fire_page} [Hold the blank paper in over fire] #CLEAR
        #IMAGE: imgs/fire_clue.png
        It reveals the text #CLASS: narration
            Under the Bookshelf #CLASS: text 
        * * [Look Under your bookshelf] -> jigsaw_box_location
    +{ jigsaw_box }[Take a break]
        ->break
    = read_fire_hint
    #CLEAR
    You read the text: #CLASS: narration
        #CLASS: text
        In the ruins of an old elvish city, Ost-in-Edhil,  Fíriel found steam spitting from the earth and fires hot enough to forge the rings. Here, by some magic, or luck, or perhaps both, she found a ring. The ring had no markings on the band. Fíriel remembered how Gandalf had discovered the ring of power. Without another thought, Fíriel cast her newfound ring into the fire. She hoped for a secret that only fire could tell. The ring, alas, did not survive the ordeal but as Fíriel stared into the flames she was inspired to search other places amongst the ruins of Ost-in-Edhil.
        ->picture_frame
    = read_blank_fire_page
        #CLEAR
        It's blank #CLASS: narration
        ->picture_frame
    = read_riddle_chart
        #CLEAR
        It contains a chart discusses hobbits On the reverse side there are five sentences explaining things about them.#CLASS: narration
        #IMAGE: imgs/lotr_riddle.png
        ->hobbit_riddle.clue1

=== jigsaw_box_location ====
    You look under all of your bookshelves and eventually find a mysterious box. #CLASS: narration
    * [ Take and open the box ] #CLEAR
        ->jigsaw_box

==== jigsaw_box ====
    TODO we should add some clears and stuff in here
    Inside the box are a mass of jigsaw puzzle pieces and 5 pieces of paper. On the lid of the box there is a drawing and a QR Code. #CLASS: narration
    * [Read paper 1]
        It is 5 sentences discussing the hobbits.#CLASS: narration
        ++ [Look back at the box]#CLEAR
        -> hobbit_riddle.clue2
    * [Read paper 2]
        #IMAGE: imgs/map_quadrant_1.png
        #CLASS: narration
        It is a piece of a map, maybe it will help you with these puzzle pieces.
        ->jigsaw_box
    * [Read paper 3] -> water_hint
    + { not book2 }{ water_hint } [Read about the Library of Ost-in-Edhil] -> water_hint
    * [Read paper 4] 
        ->book2_hint
    + { book2_hint } [Read about leaving Ost-in-Edhil] -> book2_hint
    * [Read paper 5]
        -> read_blank_water_page
    * { read_blank_water_page }{ water_hint } [Soak the blank page in water]
        #CLEAR
        #IMAGE: imgs/water_clue.png
        It reveals the text: #CLASS: narration
            A warm coat #CLASS: text 
        * * [Search for Your Warmest Coat] #CLEAR
            #CLASS: narration
            In the back of your closet, you find your warmest coat. Inside of the coat you find the book, The Fellowship of the Ring. It is hollowed out with papers inside.
            -> book2
    + [Examine the Drawing on the Lid]
        #CLEAR
        #IMAGE: imgs/peg_diagram.png
        On the lid of the box you see a drawing of four colored dots and lines between them to make an 'X'#CLASS: narration
            ->look_back
    + [Scan the QR code]
        -> qr_code
    + [Take a break]
        #CLEAR
        You take a break and think about everything that's happened. #CLASS: narration 
        -> break
    = water_hint
        #CLEAR
        #CLASS: text
        Fíriel went to the ruins of the library of Ost-in-Edhil digging for scraps of paper and remnants of old books and scrolls. There she found out more about the one ring, Isildur’s Bane. After taking the ring, Isildur and his people were waylaid by the orcs of the mountains. In Isildur’s attempt to flee he put on the ring, and dove into the river Anduin. Engulfed by the great waters he was revealed to his enemy. Isildur was slain and the ring sank in the waters, lost and forgotten.
            ->look_back
    = read_blank_water_page
        It's blank #CLASS: narration
        ->look_back
    = book2_hint
        #CLEAR
         #CLASS: text
    	Fíriel felt as if Ost-in-Edhil held no more usefulness for her and decided to venture Eastward, over Caradhas. She packed her things but one from the Shire doesn’t experience the desolate cold of the mountain pass. She soon realized her pack was missing one very important thing.
        -> look_back
    = look_back
        + [Look Back at the Box] #CLEAR 
        ->jigsaw_box
=== qr_code ===
    #CLEAR
    #IMAGE: imgs/qr_code_site.png
    { qr_code:
        You take your phone out and scan the QR code. It takes you to a website that has the prompt: #CLASS: narration
        - else:
        You open the website you scanned from the QR Code. It has a input text box which says: #CLASS: narration
    }
    Enter your discovery from the map. #CLASS: text
        + [Look back at the jigsaw box] -> jigsaw_box
        * { map_puzzle.complete }[Enter the word "Sigue Noc"]
            -> directions
        + { break } [Take a break] -> break
    
    = directions
        From rd meets walkway
        344 ft E
        131 ft N
        500 ft E
        208 ft N
        84  ft E
        Open Door
        + [Take a break] 
            -> break


=== book2 ===
    The Two Towers has four slips of paper inside and a peg with a piece of string attached. { not flashlight: There is also a strange flashlight }#CLASS: narration
    * [Examine the peg]
        It's a green peg.
        -> look_back
    * [Read paper 1]
        -> hobbit_riddle.clue3
    * [Read paper 2]
        -> map_puzzle.clue1
    + { map_puzzle.clue1 } [Read about the port to the East]
        -> map_puzzle.clue1
    * [Read paper 3]
        #CLEAR
        #IMAGE: imgs/map_quadrant_2.png
        #CLASS: narration
        It is a piece of a map, maybe it will help you with these puzzle pieces.
        ->book2
    * [Read paper 4]
        ->black_light_clue
    + { not flashlight }{ black_light_clue }[Read about Rohan]
        ->black_light_clue
    + { flashlight }{ black_light_clue } [Shine the blacklight at the paper about Rohan]
        -> black_light_clue_solved
    + { flashlight } [Shine the blacklight at the book]
        TODO need book clues
        -> blacklight_puzzle.clue2
    * [Examine the flashlight]
        It's a blacklight. The batteries seem to work.#CLASS: narration
        * * [Take the flashlight] 
        -> flashlight

    
    + [Take a break] 
        You take a break and think about everything that's happened. #CLASS: narration
        -> break
    
    = black_light_clue
        #CLEAR
        #CLASS: text
        Without proper attire to fend off the snow on the pass of Caradhras, she would have to make for the gap of Rohan. Her grandfather had never met the horsemen of Rohan and she had been excited to do so. She made a wide berth around Isengard, and its tower Orthanc. Her route was made even wider still by her desire to avoid the trees surrounding it. The fabled trees of Fangorn had moved here to form Treegarth of Orthanc. With a bit of luck, she came across riders of Rohan who took her to Edoras. She was soon brought to the king, Elfwine. Elfwine had heard much about the bravery of the Little People from his father Eomer, specifically the valor of Meriadoc Brandybuck. 
        #CLASS: text
        Fíriel had never met anyone as important as a king before. Of course she had met Merry, Pippin and her grandpa Sam, who were all famous in their own rights. Holding positions of Master of Buckland, Thain of the Shire, and Mayor of the Shire, respectively. In another stroke of luck, the king desired nothing more than to hear of these shirefolk. Fíriel spoke at length of the fellowship, recalling all she could from the Red Book. She told Elfwine of the hobbits’ exploits during the War of the Ring, Sam and Frodo with the ring, and Pippin’s journey to Minas Tirith after he left Rohan.   She also spoke of her connection to each of the four hobbits, her grandfather Sam had introduced her to both Pippin and Merry before Sam himself had gone West to follow Frodo into the Undying Lands. Telling the tale of the one ring led into Fíriel telling Elfwine about her current quest.  Her desire to carry out her journey to find a lesser ring was reinvigorated. 
        + { flashlight } [Shine the blacklight at the paper]
            ->black_light_clue_solved
        + [Look back at book contents]
            #CLEAR
            -> book2
    =black_light_clue_solved
        #CLASS: narration
        It reveals two words amongst the text. "connect" and "four"
        * [Search your connect four board game]
            #CLASS: narration
            Inside the board game, you find a book: The Two Towers.
            -> book3
    =look_back
        + [Look back at the book contents] 
        #CLEAR
        ->book2
=== flashlight ===   
You take the flashlight. #CLASS: narration
        -> book2
        
        
=== book3 ===
    The Two Towers contains a red peg, and six pieces of paper.#CLASS: narration
    * [Read paper 1]
        -> hobbit_riddle.clue4
    *[Read Paper 2] -> map_puzzle.clue2
    TODO need map puzzle
    + { map_puzzle.clue2 } [Read about the later days of Fíriel's adventuring] ->map_puzzle.clue2     
    * [Read Paper 3] 
    It is a piece of a map, maybe it will help you with these puzzle pieces.
        ->book3

    * [Read Paper 4] -> trek_to_rivendell
    + { trek_to_rivendell } [Read about Fíriel going to Rivendell] -> trek_to_rivendell
    * [Read Paper 5] -> bilbos_poem
    + { flashlight } [Shine the flashlight at the book]->blacklight_puzzle.clue3
    + [Take a break] 
        You take a break and think about everything that's happened. #CLASS: narration
        -> break
        
    =trek_to_rivendell
        #CLASS: text
        The Rohirrim knew not of the lesser rings and although they bid Fíriel to stay, to hear more of her tales of the Fellowship and the four hobbits she knew so well, she prepared to leave. Rohan was to send a small delegation to Rivendell, to trade with the few elves who remained. Since Elfwine had become Lord of the Mark he had opened more trading routes with Elves, Dwarves and the Men of Gondor. His father, Eomer’s, stories of the fellowship had long since inspired him to be more open to contact with the other regions. It was with a heavy heart that Elfwine sent his new friend to Rivendell, but he wished her luck and bid her come back someday.
        #CLASS: text
        Compared to her previous trek across Eriador, traveling by horseback to Riverdell passed quickly. She found herself awestruck amongst the elves, even though only a few remained there. The elves let her stay in a room that used to belong to Bilbo Baggins. Some of it had been fixed to hobbit size.  At first, Fíriel kept to herself in Rivendell, mostly exploring the ancient city and watching the elves with a sense of wonder. She also explored her room. Finding old papers of Bilbo’s, many nonsense poems and ramblings of the old hobbit. She amongst the mess of papers she also found a note in elvish, probably possibly not from Bilbo but he was known to know a bit of Elvish.
        -> look_back
    =tengwar_message
        #IMAGE: imgs/tengwarmessage.png
        #CLASS: narration
        It is a message an elvish { not tengwar_cipher:you can't read it }
        #CLASS: tengwar
        I have taken a liking to the halflings’ pipeweed and tea. Quite often Bilbo and I had enjoyed tea together, followed by a smoke. When he left for the Grey Havens he left me a gift, a box of his finest tea. I shall miss him. I plan to trade for more tea and pipeweed before I join him in the Undying Lands.
            * { tengwar_cipher } [Translate the message with your cipher.]->tengwar_message_solved
            ->look_back
    =tengwar_message_solved
        #CLASS: narration
        You painstakingly translate the Elvish, it appears to be a some sort of diary entry or message from one of Bilbo's Elvish friends.
        #CLASS: text
        I have taken a liking to the halflings’ pipeweed and tea. Quite often Bilbo and I had enjoyed tea together, followed by a smoke. When he left for the Grey Havens he left me a gift, a box of his finest tea. I shall miss him. I plan to trade for more tea and pipeweed before I join him in the Undying Lands.
        * [Look for your gift box of tea]
            #CLASS: narration
            You look for your gift box of tea and open it up. Inside you find yet another book: The Return of the King.
            * * [Open the book]
                #CLEAR
                ->book4
        + [Look back at the Two Towers]
            #CLEAR
            ->book3
    =bilbos_poem
        The poem reads: #CLASS:narration 
        #CLASS: text
        Hey ho, to the bottle I go,
        To heal my heart and drown my woe,
        As rain may fall and wind may blow
        But there’ll still be….. many miles to go.
        
        Sweet is the sound of the pouring rain
        Bubbling stream from hill to plain
        Longer than plain or rippling brook
        Until I finish… the ol’ red book 
        
        Bilbo Baggins

        *  [Closely Examine the Poem's Structure]
            The beginning of each line spells bulbs bath, backwards. #CLASS: narration
            * * [Search in your bathroom for bulbs]
                Behind the light in your bathroom you find a cipher, it translates Elvish to English. #CLASS: narration
                ->tengwar_cipher
        + [Look back at the Two Towers] 
            #CLEAR
            -> book3
    = tengwar_cipher
        ->look_back
    =look_back
        + [Look back at the Two Towers]
        #CLEAR
        ->book3

        
=== book4 ===
    The Return of the King has 3 pieces of paper in it and a yellow peg.
    * [Read paper 1]
        -> hobbit_riddle.clue5
    * [Read Paper 2]
        ->map_puzzle.clue3
    + { map_puzzle.clue3 } [Read about the spirit of fire] -> map_puzzle.clue3
    * [Read Paper 3] 
        it's a quadrant of the map.
        ->look_back
    * [Read Paper 4] -> tin_clue
    + { tin_clue } [Read about the Return to the Shire] ->tin_clue
    + { flashlight } [Shine the flashlight at the book]->blacklight_puzzle.clue4
    + [Take a break] 
        You take a break and think about everything that's happened. #CLASS: narration
        -> break
        
    =tin_clue
        #CLEAR
        It reads: #CLASS: narration
        #CLASS: text
        Fíriel soon became accustomed to her way of life in Rivendell, the elves, however few, were very hospitable and the food and wine was a delight. Listening to songs and poems recited in the Hall of Fire after a feast became Fíriel’s favored pastime. The elves enjoyed having another hobbit who so thoroughly enjoyed their arts. They had not seen the likes of it since Bilbo had lived there.  Fíriel began to recite some of Bilbo’s poems and songs and even wrote a few of her own while she stayed there.
    	Later, as most hobbits are want to do, she began to long for the Shire. The beauty, arts and timeless nature of the elves was inspiring. Of course, she missed the food, pipeweed and ale of the Shire. But what she truly missed, was her kin and something about the timeless nature of Rivendell always left a hole in a hobbits heart. While the elves have a similar peace and quiet, the Shire surrounds the hobbits with what they truly love: things that grow. For all hobbits hearts, in some part, feel a deep connection to good tilled earth. 
    	The elves planned a feast for her departure. With a long table piled high with food, even in a timeless place like Rivendell, the merrymaking did not last long enough. As the food disappeared, lord of Rivendell, Elrohir, son of Elrond approached Fíriel's chair. He bore a gift beyond her wildest dreams. The Elves knew of her quest for a lesser ring, and brought her one. A relic from time passed, crafted in Ost-in-Edhil. With this ring, plus a entire pony’s saddlebag full of other gifts, Fíriel left for the Shire. To her family home at Bag End.
            -> look_back
    =look_back
        + [Look back at the Return of the King]
            #CLEAR
            -> book4

=== tin ===
    #IMAGE: imgs/tin.png
    Similar to the books, you find a blue peg and three pieces of paper. #CLASS: narration
     * [Read paper 1]
        -> hobbit_riddle.clue6
    * [Read paper 2] -> map_puzzle.clue4
    + { map_puzzle.clue4 } [Read about adventures near the Brandywine] -> map_puzzle.clue4
    * [Read paper 3]
        ->firiel_ring
    + { firiel_ring }[Read about Fíriel and her ring]
        ->firiel_ring
        
    + [Take a break] 
        You take a break and think about everything that's happened. #CLASS: narration
        -> break

    =look_back
        + [Look back at the tin] #CLEAR
        ->tin
    =firiel_ring
    #CLASS: text
        Fíriel alternated between wearing the ring on her finger and wearing it around her neck. It seems to fit her finger perfectly no matter which finger she wore it on. The ring did not seem to give her any powers, no invisibility, no control over men or other races. But when she put it on she did feel the pride which came with completing her quest to discover the ring.
        So I have read in her writings which were never as consistent after she returned to Bag End. She did yet venture out from the Shire with her ring. Perhaps she left it on one of her adventures, at the end, it was buried with her, or perhaps she ventured to the Undying Lands, her friendship with the elves would have surely earned her a journey. I have compiled some of her writing snippets but I haven’t yet been able to find the ring's resting place.
        ->look_back

        
=== compass ===
    It's a pretty cool looking old compass. You stick it in your pocket. #CLASS: narration
    ->tin.look_back

=== break === 
    What will you do? #CLASS: narration
    //TODO have to finish the last clues
    + { qr_code.directions }{ html_clue }[Head outside] -> head_outside
    + [ Look at the Hobbit chart]
        #CLEAR
        #IMAGE: imgs/lotr_riddle.png
        You closely examine the chart, it has pictures of five different Native Americans and a 5 x 5 grid beneath them. #CLASS: narration
        + + [ Look at something else ]
            -> break
        + + { not hobbit_riddle.complete }[ Add in all the information about the natives you have collected so far ] 
            ->hobbit_riddle.enter_info
        + + { hobbit_riddle.complete } [You could probably enter this information in that html file] 
            -> break
    + [ Open the html file on your computer ]
        { hobbit_riddle.complete :
            { html_clue:
                You read the clue from the HTML file.
                ->html_clue
            }
            * { not html_clue }[Enter the information you have on your chart]
                You plug in the information from your chart and hit unlock. The file reveals yet another clue. #CLASS: narration
                -> html_clue
            - else:
                You don't have enough information to fill this in yet. #CLASS: narration
                -> break
        }
    + { jigsaw_box } { not build_jigsaw.complete} [Work on the jigsaw puzzle ] -> build_jigsaw
    + { build_jigsaw.complete } [Look at the map] ->look_at_map
    + { qr_code } { not qr_code.directions } [Look at the website from the QR code]
        ->qr_code
    + [Look at the picture frame] -> picture_frame
    + { jigsaw_box } [ Look at the jigsaw box ] -> jigsaw_box
    + { book2 } [Look at the The Fellowship of the Ring] ->book2
    + { book3 } [Look at the The Two Towers] ->book3
    + { book4 } [Look at the The Return of the King] ->book4
    + { tin } [Look at the tin] ->tin
    + { qr_code.directions }[Look at the directions from the website]
        ->qr_code.directions
    
    = html_clue
        Champaign discovered a ritual performed by those who lived on the coast. Although he never partook in the ritual, it was said to grant unnatural long life. When you find your bearings, you will find the one from the coast and ask for "the blood of the ancients".  #CLASS: text
        +[Look at something else]
        -> break
    = look_at_map
        { pin_map < 4 :
            #CLEAR
            #IMAGE: imgs/map.png 
            You closely examine the map. #CLASS: narration
         }
        { pin_map > 3:
            #CLEAR
            #IMAGE: imgs/pinned_map.png
            You closely examine the map with it's pins. #CLASS: narration
        }
        { map_puzzle.complete:
            #CLEAR
            #IMAGE: imgs/x_map.png
            The map is complete and an X points to the village of "Bree" #CLASS: narration
            #IMAGE: imgs/sigue_noc.png
        }
        * * { pin_map > 3 } [Connect the pins to make an X]
            ->map_puzzle.complete
        * * { map_puzzle.clue1 } [Place a peg on the Grey Havens]
            ->pin_map.pin1
        * * { map_puzzle.clue2 } [Place a peg on the last "n" of Rhovanion]
            ->pin_map.pin2
        * * { map_puzzle.clue3 } [Place a peg on Erebor]
            ->pin_map.pin3
        * * { map_puzzle.clue4 } [Place a peg on Lake Evendim]
            ->pin_map.pin4
        + + [Look at something else] 
        -> break


=== hobbit_riddle ===
   
    = clue1
        -> picture_frame
    = clue2
        -> jigsaw_box
    = clue3
        -> book2
    = clue4
        -> book3
    = clue5
        -> book4
    = clue6
        -> tin
     = enter_info
        { clue1 and clue2 and clue3 and clue4 and clue5 and clue6:
               You have filled out the entirety of the chart. #CLASS: narration
               ->complete
           - else:
                You fill in all the information you have. #CLASS: narration
                -> break
        }
    = complete
        -> break
        
=== blacklight_puzzle ===
   
    = clue1
        -> book1
    = clue2
        -> book2
    = clue3
        -> book3
    = clue4
        -> book4
     = enter_info
        { clue1 and clue2 and clue3 and clue4:
               You have filled out the entirety of the chart. #CLASS: narration
               ->complete
           - else:
                You fill in all the information you have. #CLASS: narration
                -> break
        }
    = complete
        -> break
=== map_puzzle ===
    = clue1
        #CLEAR
        // green
        As I sat by the hearth, my curiosity sparked by Fíriel's tales, I found myself yearning for tidings of her fate. No mention of her departure or passing could be found within the annals of the Shire. I set forth to the port, where whispers suggested she may have set sail for the Undying Lands. In their archives, time slipped away as I combed through faded pages, searching for answers. #CLASS: text
        -> book2.look_back
    = clue2
        //Red
        TODO perspective on this is wrong
        In later days, Fíriel ventured far and wide, exploring the far reaches of Middle-earth. Westward she ventured, passing Gladden fields, lightly stepping into Fangorn, and even venturing through the shadowed paths of Mirkwood. Few had ventured as far, save for the boldest of souls like Gandalf and King Elessar, known to us hobbits as Strider. Her wanderlust carried her to the very end of Rhovanion, before she heeded the call to turn back, leaving her footprints on the edge of the known world. #CLASS: text
        ->book3.look_back
    = clue3
        //yellow
        TODO this could also mean moria
        Fíriel seemed to seek old allies of hobbits, and the echoes of her tale guided my steps. Among mist-shrouded peaks, I found a sentinel of stone, guarding a kingdom's riches untold. Within its ancient embrace, where the spirit of fire once reigned, Fíriel had journeyed. #CLASS: text
        ->book4.look_back
    = clue4
        //blue
        TODO perspective is wrong
        Fíriel's sense of adventure was more grand than even Bilbo’s. She was the talk of the Shire, why I imagine ever her great-grandad the Gaffer might have said, “she’s cracked, that lass” supposing he was still at that time.  But not all of Fíriel's travels were beyond the grasp of hobbits.  She once wrote of walking to the head of the Brandywine River.  Seeking solace in the beauty of the lake and its tranquil shores.#CLASS: text
        ->tin.look_back
    = complete
        You draw lines to connect the pins. #CLASS: narration
        ->break.look_at_map

=== pin_map ===
    = pin1
        -> break.look_at_map
    = pin2
        -> break.look_at_map
    = pin3
        -> break.look_at_map
    = pin4
        -> break.look_at_map

=== build_jigsaw ===
{ build_jigsaw < 3 : 
        You put together some of the puzzle. #CLASS: narration
        -> break
    - else:
        You finish assembling the puzzle. It's a large map. #CLASS: narration
        ->complete
}
    =complete
        ->break

        
=== head_outside ===
    { not compass:
        You have no idea what direction to head, if only there was some way to know North from South. You head back into the house.
            -> break
    }
    +[Walk to the Road]
    +[Head back in the house] -> break
    - You head down the road. #CLASS: narration
    +[Walk 344 ft East]
    +[Head back to the house] -> break
    - You walk a little while. #CLASS: narration
    +[Walk 131 ft North]
    +[Head back to the house] -> break
    - You walk a little more. #CLASS: narration
    +[Walk 500 ft East]
    +[Head back to the house] -> break
    - You walk a little more. #CLASS: narration
    +[Walk 208 ft North]
    +[Head back to the house] -> break
    - You walk a little more. #CLASS: narration
    +[Walk 84 ft East]
    +[Head back to the house] -> break
    - You walk a until you arrive at a door.#CLASS: narration
    +[Open the door]
    +[Head back to the house] -> break
    - #CLEAR 
    You swing open the door. Inside a bartender calls a greeting to you.#CLASS: narration
    +[Greet the bartender]
    - The bartender greets you back and asks if there's anything special you'd like to drink#CLASS: narration
    +[Order "the Blood of the Ancients"]
    -"the Blood of the Ancients." 
    You feel slightly silly saying something like that to a modern bartender but the bartender smiles knowingly.#CLASS: narration
    "Coming right up," she responds. 
    Soon, she returns with a bright blue cocktail #CLASS: narration
    
    The glass has a picture of Samuel de Champlain on it, the bartender also presents you with a box. #CLASS: narration
    * [Open the box]
    -The box contains a letter and a watch. #CLASS: narration
    * [Read the letter]
    TODO fix grammar here
    - #CLASS: text
        You've found the secret of Champlain - an elixir of life. Nobody knows if drinking it will prolong life but it has some near-magical benefits. It was not known at the time, but the blood of Limulus polyphemus would help develop a pathway to cleaner food and medicine across the world, thus saving millions of lives.<br>This watch is a mere trinket. A gift from me to you. My journey to find Champlain's treasure has ended. Some days I imagine there is still something out there but, for me, my new journey is living a life as full as that of my great grandfather, Samuel de Champlain.
    
    The End #CLASS: narration
->END



