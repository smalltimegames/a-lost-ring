=== hobbit_riddle ===
   
    = clue1
        #CLEAR
        It contains a chart discusses hobbits. On the reverse side there are five sentences explaining things about them.#CLASS: narration
        #IMAGE: imgs/lotr_riddle.png
        The “hobbits” are in order from shortest to tallest left to right#CLASS: riddle_clue
        The tallest “hobbit” is an honorary hobbit. Established as such for his love of the halflings leaf and bringing fireworks to the shire.#CLASS: riddle_clue
        The second tallest “hobbit” is fond of a drink that makes him taller.#CLASS: riddle_clue
        ->->
    = clue2
        He who is fondest of elves is also fond of their drink.#CLASS: riddle_clue
        This hobbit is lucky enough that his favorite food falls from the sky to hit him on the head and his favorite drink comes in pints.#CLASS: riddle_clue
        Bag End is next to Bagshot Row and coincidentally the hobbits who live in those places are standing next to each other.#CLASS: riddle_clue
        ->->
    = clue3
        The hobbit who likes Longbottom Leaf is to the right of the hobbit who enjoys Southern Star.#CLASS: riddle_clue
        The hobbits in brown and gray adventures in a pair, as did the ones in blue and yellow. They often stayed right next to each other.#CLASS: riddle_clue
        Frodo didn’t often smoke but kept a pouch of Southern Straits that Bilbo brought back from Dale.#CLASS: riddle_clue
        Frodo doesn’t wear gray.#CLASS: riddle_clue
        ->->
    = clue4
        Tuckborough is in Tookland which is, of course, where the young Took is from.#CLASS: riddle_clue
        Sam has been known to grow his favorite food.
        Gandalf and Frodo are fond of breads.#CLASS: riddle_clue
        ->->
    = clue5
        All the true halflings enjoy their favorite food along their journeys.#CLASS: riddle_clue
        The shortest hobbit doesn’t wear blue or yellow.#CLASS: riddle_clue
        The hobbit who wears blue likes Southern Star#CLASS: riddle_clue
        -> book4
    = clue6
        The two hobbits who drank Ent draught with Treebeard are not the shortest.#CLASS: riddle_clue
        Sam was never able to afford Old Toby so bought a cheaper pipeweed from Bree.#CLASS: riddle_clue
        Sam is next to a hobbit in blue.#CLASS: riddle_clue
        After the sacking of Isengaard, this hobbit says all is as it should be when talking about his height.#CLASS: riddle_clue
        Frodo gets more of his drink on him than in him.#CLASS: riddle_clue
        ->->
     = enter_info
        { clue1 and clue2 and clue3 and clue4 and clue5 and clue6:
               You have filled out the entirety of the chart. #CLASS: narration
               ->complete
           - else:
                You fill in all the information you have. #CLASS: narration
                ->->
        }
    = complete
        ->->
       
=== map_puzzle ===
    = clue1
        #CLEAR
        // green
        As I sat by the hearth, my curiosity sparked by Fíriel's tales, I found myself yearning for tidings of her fate. No mention of her departure or passing could be found within the annals of the Shire. I set forth to the port, where whispers suggested she may have set sail for the Undying Lands. In their archives, time slipped away as I combed through faded pages, searching for answers. #CLASS: map-hint
        ->->
    = clue2
        //Red
        TODO perspective on this is wrong
        In later days, Fíriel ventured far and wide, exploring the far reaches of Middle-earth. Westward she ventured, passing Gladden fields, lightly stepping into Fangorn, and even venturing through the shadowed paths of Mirkwood. Few had ventured as far, save for the boldest of souls like Gandalf and King Elessar, known to us hobbits as Strider. Her wanderlust carried her to the very end of Rhovanion, before she heeded the call to turn back, leaving her footprints on the edge of the known world. I found myself wondering if any treasure was worth all this trouble as I made the same journey across the realm. #CLASS: map-hint
        ->->
    = clue3
        //yellow
        TODO this could also mean moria
        I knew Fíriel seemed to seek old allies of hobbits, and the echoes of her tale guided my steps. Among mist-shrouded peaks, I found a lone sentinel of stone, guarding a kingdom's riches untold. Fíriel had journeyed to this towering peak and I followed to where the spirit of fire once reigned. #CLASS: map-hint
        ->->
    = clue4
        //blue
        TODO perspective is wrong
        To me, it seemed, Fíriel's sense of adventure was more grand than even Bilbo’s. In my readings she was often the talk of the Shire. Why I imagine even her great-grandad the Gaffer might have said, “she’s cracked, that lass” supposing he was alive at the time. But not all of Fíriel's travels were beyond the grasp of hobbits. Much to my pleasure and surprise, not all of Fíriel's travels were beyond the grasp of hobbits. She once wrote of walking to the head of the Brandywine River,  seeking solace in the beauty of the lake and its tranquil shores. I had been there many times, but this time I ventured there with finding traces of Fíriel's at the forefront of my trip.#CLASS: map-hint
        ->->
    = complete
        You draw lines to connect the pins. #CLASS: narration
        ->break.look_at_map
       
        
=== blacklight_puzzle ===
   
    = clue1
        The clue in the book says "Under"
        ->->
    = clue2
        The clue in the book says "Wood"
        ->->
    = clue3
        The clue in the book says "Four"
        ->->
    = clue4
        The clue in the book says "Legs"
        ->->
    = all_clues
        #CLASS: narration
        The clues say "Under", "Wood", "Four", "Legs"
        ->->
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