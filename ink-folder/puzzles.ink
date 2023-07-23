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