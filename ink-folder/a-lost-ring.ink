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
Having opened this book, I suppose you already know much of hobbits. A little people, with no beards, rough hairy feet, and known to be quite round in the middle. They are fond of pipe weed and even fonder of breakfast lunch and dinner, especially second breakfast, lunch and dinner. What they aren’t fond of is adventure or doing anything unexpected. Bilbo Baggins was a hobbit who did things unexpected and had a grand adventure. And he has had nothing but trouble since. Trouble and a vast amount of treasure. Hobbits who didn’t know Bilbo would have assumed he was a Took (and he was, although not in name) as Tooks have a penchant for trouble.
 #CLASS: text
Mr. Baggins however, is only relevant to this story because he had an adventure. And on that adventure he came across a magic ring. This magic ring happened to be a ring of power, in fact it was the ring of power, and that was no good and led to plenty of trouble.  What you may not know, is that there are, in fact, many rings that aren’t rings of power at all. Magic rings that don’t attract a lot of attention and trouble. These magic rings are spread across Middle Earth and I would much like your help finding one.
 #CLASS: text
If you are a hobbit and opposed to adventure, I promise you can help from your comfortable hobbit-hole, a book in one hand and pipe in the other. If you are more of a Took in nature, I suspect we can find something unexpected along the way.
#CLASS narration
Tucked into the hollowed out book there is a usb flash drive

* [Load the drive into your computer]
#CLEAR
    ->usb_drive
    
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
        It has a chart that needs a lot of input, you don't know the answer at this time. #CLASS: narration
        -> unlocked_folder
    + [Open the second text file] #CLEAR
        -> locked_text
    + [Open the first text file] #CLEAR
        -> usb_text
    = usb_text
    #CLEAR
    I, much like hobbits, enjoy a good riddle. To see if you are good enough to join me on my quest for a lesser ring, try your hand at a riddle even the wisest was pressed to solve.
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
        In all of hobbitkind there were few more brave and honest than Samwise Gamgee. It was to him that came the Red Book of Westmarch, Samwise in turn gave this book to his eldest daughter Elanor Fairbairn nee Gardner who in turn read its adventures to her children. The Red Book being a memoir of the hobbits Bilbo and Frodo Baggins describing The Downfall of the Lord of the Rings and the Return of the King as seen by the Little People. 
        #CLASS: text
        Elanor’s daughter,  Fíriel Fairbairn, took a keen interest in the stories and much like her grandfather became enamored with the elves and magic. Yet quite unlike her grandfather she had a desire to adventure. Folks around the Shire said she had “Tookness” about her, which is to say she had trouble keeping her nose out of trouble.
        #CLASS: text
        I only tell you this because that is where our - and her - adventure begins. You see, I believe that Fíriel set off on a magnificent adventure, and found one of the lesser rings. Following in her footsteps, I believe we can see where the ring came to rest. 
        #CLASS: text
        Fíriel knew, through studying the Red Book, that Celebrimbor, who forged the three rings, had forged many others before it.  Before forging the seven and the nine with Sauron, Celebrimbor and the elves had crafted many lesser rings, in pursuit of creating rings of higher power. These lesser rings, like the three rings of the elves, Fíriel imagined as untainted by the dark lord and simply lost. She, not being quite as wise as the hobbits of legend, Bilbo and Frodo, and not as studied as Meriadoc Brandybuck decided this was a goal a young hobbit could achieve. After all, why not? her grandfather walked into Mordor; why shouldn’t a Fíriel be able to find a much less important, much less dangerous ring? And so, sneaking some old maps from Bag End, she left the shire.
        #CLASS: text
        First, she decided to find where the rings could be made. The one ring being made, and unmade, in the fires of Mt Doom, had shown that the forging of the ring required heat not known to mortal forges. So she made for Eregion, where Celebrimbor forged the rings in the shadows of Caradhas until she came upon land where the ground cracked and burst with the heat and steam from the deep.
        + [Hot showers can be steamy, check the shower]
            #CLEAR
            looks like a shower, with a pretty cool curtain #CLASS: narration
             -> locked_text
        * [Remembering that you recently received a picture of yourself visiting the steam vents of a volcano you look at that picture]
            * * [Open the picture frame] 
            #CLEAR
            Inside the picture you find four slips of paper.#CLASS: narration
        ->picture_frame

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
        #IMAGE: imgs/water_clue.png
        It reveals the text #CLASS: narration
            Under the Bookshelf #CLASS: text 
        * * [Look Under your bookshelf] -> jigsaw_box_location
    +{ jigsaw_box }[Take a break]
        ->break
    = read_fire_hint
    You read the text: #CLASS: narration
        #CLASS: text
        In the ruins of an old elvish city, Ost-in-Edhil,  Fíriel found steam spitting from the earth and fires hot enough to forge the rings. Here, by some magic, or luck, or perhaps both, she found a ring. The ring had no markings on the band. Fíriel remembered how Gandalf had discovered the ring of power. Without another thought, Fíriel cast her newfound ring into the fire. She hoped for a secret that only fire could tell. The ring, alas, did not survive the ordeal but as Fíriel stared into the flames she was inspired to search other places amongst the ruins of Ost-in-Edhil.
        ->picture_frame
    = read_blank_fire_page
        It's blank #CLASS: narration
        ->picture_frame
    = read_riddle_chart
        It contains a chart discusses hobbits On the reverse side there are five sentences explaining things about them.#CLASS: narration
        #IMAGE: imgs/lotr_riddle.png
        ->hobbit_riddle.clue1

=== jigsaw_box_location ====
    You look under all of your bookshelves and eventually find a mysterious box.
     #CLASS: narration
    * [ Take and open the box ] #CLEAR
        ->jigsaw_box

==== jigsaw_box ====
    TODO we should add some clears and stuff in here
    Inside the box are a mass of jigsaw puzzle pieces and 5 pieces of paper. On the lid of the box there is a drawing and a QR Code. #CLASS: narration
    * [Read paper 1]
        It is 5 sentences discussing the hobbits.#CLASS: narration
        You look back at the box.#CLASS: narration
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
        * * [Search for Your Warmest Coat] 
            #CLASS: narration
            In the back of your closet, you find your warmest coat. Inside of the coat you find the book, The Fellowship of the Ring. It is hollowed out with papers inside.
            -> book2
    + [Examine the Drawing on the Lid]
        #CLEAR
        #IMAGE: imgs/peg_diagram.png
        On the lid of the box you see a drawing of four colored dots and lines between them to make an 'X'#CLASS: narration
            ++ [Look back at the box] -> jigsaw_box
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
        ++ [Look back at the box ]
            #CLEAR
            ->jigsaw_box
    = read_blank_water_page
        It's blank #CLASS: narration
        ->jigsaw_box
    = book2_hint
        #CLEAR
         #CLASS: text
    	Fíriel felt as if Ost-in-Edhil held no more usefulness for her and decided to venture Eastward, over Caradhas. She packed her things but one from the Shire doesn’t experience the desolate cold of the mountain pass. She soon realized her pack was missing one very important thing.
        -> jigsaw_box

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
        It's a blue peg.
        -> look_back
    * [Read paper 1]
        -> hobbit_riddle.clue3
    * [Read paper 2]
        -> map_puzzle.clue1
    + { map_puzzle.clue1 } [Read about Champlain's key (tacked paper)]
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
        -> black_light_clue
    * [Examine the flashlight]
        It's a blacklight. The batteries seem to work.#CLASS: narration
        * * [Take the flashlight] 
        -> flashlight

    
    + [Take a break] 
        You take a break and think about everything that's happened. #CLASS: narration
        -> break
    
    = black_light_clue
        #CLEAR
        #CLASS: narration
        Without proper attire to fend off the snow on the pass of Caradhras, she would have to make for the gap of Rohan. Her grandfather had never met the horsemen of Rohan and she had been excited to do so. She made a wide berth around Isengard, and its tower Orthanc. Her route was made even wider still by her desire to avoid the trees surrounding it. The fabled trees of Fangorn had moved here to form Treegarth of Orthanc. With a bit of luck, she came across riders of Rohan who took her to Edoras. She was soon brought to the king, Elfwine. Elfwine had heard much about the bravery of the Little People from his father Eomer, specifically the valor of Meriadoc Brandybuck. 
        #CLASS: narration
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
    The tin contains another pin, and three pieces of paper. One paper is pinned to a piece of cork.#CLASS: narration
    *[Read pinned paper] ->map_puzzle.clue2
    + { map_puzzle.clue2 } [Read about Faith's key] ->map_puzzle.clue2     
    * [Read Paper 2] -> read_candle_hint
    + { read_candle_hint } [Read About Champlain] -> read_candle_hint
    //TODO does this disappear?
    * [Read Paper 3]
        ->blank_paper
    + {not book4 }{ blank_paper } [Look at blank paper]->blank_paper
    + [Take a break] 
        You take a break and think about everything that's happened. #CLASS: narration
        -> break       
    =read_candle_hint
        An avid reader and writer, Champlain would often work tirelessly through the night, even when the only way to see was by candlelight. Well, I suppose, there were often other ways to see. #CLASS: text
        -> look_back
    =blank_paper
    It's blank 
         * * { read_candle_hint }  [Hold the blank paper towards the candlelight]
        #CLEAR
        As the paper approaches the flame a message starts to appear  #CLASS: narration
            fireplace #CLASS: text
            #IMAGE: imgs/fire_clue.png
            * * * [Check around the furnace] 
                After checking around the furnace you notice yet another tin. In the tin you find another piece of pinned paper and two loose pieces of paper.#CLASS: narration
                -> book4
        + + [Look back at the tin] -> book3
       
    =look_back
        + [Look back at the tin]
        #CLEAR
        ->book3
        
        
=== book4 ===
    * [Look at the pinned paper]
        ->map_puzzle.clue3
    + { map_puzzle.clue3 } [Read about Hope's key] -> map_puzzle.clue3
    * [Examine loose paper 1] 
        It has 5 more pieces of information about Native Americans #CLASS: narration
        -> hobbit_riddle.clue3
    * [Examine loose paper 2] -> canvas_clue
    + { canvas_clue } [Read about Champlain] ->canvas_clue
    + [Take a break] 
        You take a break and think about everything that's happened. #CLASS: narration
        -> break
        
    =canvas_clue
        #CLEAR
        TODO missing the second A here
        It reads: #CLASS: narration
        Champlain was not only an explorer by sea, he traversed the land as well.<br>   Algonquins taught him their ways of canoeing and camping.<br>    Natives were key to the French in learning and mastering the area surrounding Quebec.<br>   Vermont was still a part of New France and Champlain was one of the first Europeans to explore it.<br> Algonquins weren't the only natives he met in his travels, he also encountered the Abenaki and Wendat. <br> Sailing, warring and exploring only were only a small part of Champlain's later life, which was mostly occupied with governing.#CLASS: text
        * [Closely examine the line structure of the writing]
            The beginning of each line spells canvas. #CLASS: narration
                ** [Search amongst your many canvases]
                    You find the fourth and final tin. #CLASS: narration
                    *** [Open the tin]
                        #CLEAR
                        -> tin4
        + [Look back at the tin] 
            #CLEAR
            -> book4
    =look_back
        + [Look back at the tin]
            #CLEAR
            -> book4

=== tin4 ===
    Similar to the other tins, you find a pinned paper, and two loose papers. #CLASS: narration
    * [Read the pinned paper] -> map_puzzle.clue4
    + { map_puzzle.clue4 } [Read about Chastity's key] -> map_puzzle.clue4
    * [Read loose paper 1]
        ->perlite_paper
    + { perlite_paper }[Read about the treasures of the new world]
        ->perlite_paper
    * [Read loose paper 2]
        ->coded_letter
    + { coded_letter }{ not decoded_letter } [Look at the coded letter]
        ->coded_letter
    + { decoded_letter } [Read the decoded letter]
        ->decoded_letter
    + [Take a break] 
        You take a break and think about everything that's happened. #CLASS: narration
        -> break

    =look_back
        + [Look back at the tin] #CLEAR
        ->tin4
    =perlite_paper
        Champlain knew the true treasure of the new world was its bounty, furs and fish being the most plentiful. Traditional treasures such as gold, silver and perls were not as prominent. #CLASS: text
        +[Perls? Check your bag of perlite]
            ->cipher
        +[Ignore the mispelling and look back at the tin]
            #CLEAR
            -> tin4
    =cipher
        #CLEAR
        #IMAGE: imgs/cipher.png
        You go outside and look inside the bag of perlite. You find a disk that looks like it's used to make ciphers. #narration
        * [Take the disk and go back to the tin]
            #CLEAR
            ->tin4
    =coded_letter
        #CLASS: text
         Long ago I found this letter from Champlain that I have yet to decipher.<br>W kfwhs hvwg zshhsf hc ps pfciuvh hc Eispsq wb hvs sjsbh ct am rsohv. W oa gdsbrwbu kwbhsf kwhv hvs Ksbroh othsf fsacjwbu Wfceicwg offckg tfca am zsu. Bck, am zsu wg zwys uszohwb; obr msh, W vcds hc fshifb wb hvs gdfwbu.<br>       -Goaisz rs Qvoadzowb
        + { cipher } [Use the cipher]
            ->decoded_letter
        +[Look back at the tin]
            #CLEAR
            ->tin4
    =decoded_letter
        #CLEAR
        #CLASS: text
        I write this letter to be brought to Quebec in the event of my death. I am spending winter with the Wendat after removing Iroquois arrows from my leg. Now, my leg is like gelatin; and yet, I hope to return in the spring.<br>     -Samuel de Champlain
        +{ not jello }[Gelatin, huh? Time to break out the Jello]
            ->jello
        +[Look back at the tin]
            #CLEAR
            ->tin4
    =jello
        You look in a paper bag filled with JELLO (not actual gelatin, but the boxes used to prepare it). You find a compass. It might come in handy. #CLASS: narration
        +[Take the compass]
            -> compass
        
=== compass ===
    It's a pretty cool looking old compass. You stick it in your pocket. #CLASS: narration
    ->tin4.look_back

=== break === 
    What will you do? #CLASS: narration
    //TODO have to finish the last clues
    + { qr_code.directions }{ html_clue }[Head outside] -> head_outside
    + [ Look at the Native American chart]
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
    + { book3 } [Look at the second tin] ->book3
    + { book4 } [Look at the third tin] ->book4
    + { tin4 } [Look at the fourth tin] ->tin4
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
            The map is complete and an X points to a "Sigue Noc", a horseshoe crab. #CLASS: narration
            #IMAGE: imgs/sigue_noc.png
        }
        * * { pin_map > 3 } [Connect the pins to make an X]
            ->map_puzzle.complete
        * * { map_puzzle.clue1 } [Add one pin to the tip of the arrow of the native (Champlain)]
            ->pin_map.pin1
        * * { map_puzzle.clue2 } [Pin the southernmost tip of lake Champlain (Faith)]
            ->pin_map.pin2
        * * { map_puzzle.clue3 } [Pin the crow's nest of the small ship (Hope)]
            ->pin_map.pin3
        * * { map_puzzle.clue4 } [Pin the eye of the sea bass (Chastity)]
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
     = enter_info
        { hobbit_riddle.clue1 and hobbit_riddle.clue2 and hobbit_riddle.clue3:
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
        Although he wasn't an explorer for the sake of treasure, his extensive travels did amass him a slight fortune. And so, Champlain left keys to his treasure to each of his daughters and kept the last for himself. If he passed, he wanted the sisters to find his treasure together. Champlain kept his key alongside other knick knacks. He had been shot in the knee once by the arrow of a savage. He kept the point of the arrow as a sort of memento, right next to his key. #CLASS: text
        -> book2.look_back
    = clue2
        It reads: #CLASS: narration
        Unfortunately, the sisters all went their separate ways with their separate keys. His first daughter, Faith, ended up at the southernmost tip of Lake Champlain. #CLASS: text
        ->book3.look_back
    = clue3
        Hope was Champlain's second daughter. She wanted to be Champlain. In fact, she ended up sailing on a ship. Albeit, a ship much smaller than her father's. She could often be found in the crows nest, scouting new territory, just like her father. #CLASS: text
        ->book4.look_back
    = clue4
        Champlain's third daughter, Chastity, was quick to wed. She caught the eye of a local fisherman. They lived together happily, although I hear she quickly tired of eating sea bass.#CLASS: text
        ->tin4.look_back
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



