"Samurai Detective" by "Bar Camp PDX 2012"

[ Copyright © 2012 participants of the Bar Camp Portland 2012 Inform 7 authoring session. ]
[ Released under the Creative Commons Attribution 3.0 United States license: http://creativecommons.org/licenses/by/3.0/us/ ]

The maximum score is 1.

The story headline is "A Murder Mystery".

When play begins: say "To try to solve the mystery, say ACCUSE (killer)."

Include Locksmith by Emily Short.

The Dojo is a room. "This a large airy room with a [wood floor]." The wood floor is scenery in the Dojo.

The description of the player is "You are short and mysterious. You carry a [katana] slightly too large for your slender frame."

The player carries a katana. The description of the katana is "The katana is razor-sharp: well maintained, but with a [wrapped string handle] duct-taped on."

The wrapped string handle is part of the katana. The description is "This handle looks like a patch job, but it's serviceable."

The body is a fixed in place woman in the Dojo. "The suspicious-looking dead body of a middle-aged woman lies here." The description of the body is usually "Yep, she's definitely dead."

After examining the body for the first time: now the description of the body is "You observe a gaping stab wound, as if made by a katana, in her chest."

Before the player doing something to the door when the green encrusted key is not touchable: say "The door is locked from the inside! Weird!"; now the player carries the green encrusted key; stop the action.

Instead of unlocking the door with the green encrusted key: say "There's no real point in that. You can solve the mystery from in here."

Hinted is a truth state that varies.

After examining the body when the player carries the green encrusted key and hinted is false: say "You can't find a key, and the door locks from the inside. How did the killer get into the room? You have a strange thought---you might want to check your pockets[if we have taken inventory] again[end if]..."; now hinted is true.

The description of the green encrusted key is "This verdigris-covered key is labeled 'Dojo Key'. There is a little blood on it." 

The front door is a door. "A door to the south leads out of the room." It is south of the Dojo. It is closed and locked. The description is "This door seems to be locked with a bolt from the inside. The key should still be in here." The green encrusted key unlocks the front door.

Solving is an action out of world applying to one topic. Understand "accuse [text]" as solving.

To indicate cheating: decrease the score by 1; end the story saying "Oh, very clever. '[the topic understood in sentence case].' The tautology is, after all, a popular solution in detective fiction---not. You haven't just failed, you've epic failed." 

To indicate flailing: end the story saying "[The topic understood in sentence case] stands accused...[paragraph break]You have accused an innocent person (or perhaps an innocent object, or perhaps innocent nonsense---who knows?). Next time look deeper within yourself."

To decide whether (the accused - an indexed text) is referred to in (the directory - a table name): repeat through the directory begin; if the accused matches the text Murderer entry, decide yes; end repeat; decide no.

To decide whether (the accused - an indexed text) is not referred to in (the directory - a table name): if the accused is referred to in the directory, decide no; decide yes.

Carry out solving: let the accused be an indexed text; let the accused be the topic understood; if the accused is referred to in the Table of Nonsense Murderer Names, instead indicate cheating; if the accused is not referred to in the Table of Murderer Names, instead indicate flailing; increase the score by 1; end the story saying "You stand accused...[paragraph break]You have solved the mystery! Murderer."

Table of Nonsense Murderer Names
Murderer
indexed text
"killer"
"assailant"
"murderer"
"villain"
"bad guy"

Table of Murderer Names
Murderer
indexed text
"player"
"self"
"myself"
"samurai"
"me"

Test me with "i / x body / s / x body / i / s / x key / accuse me".
