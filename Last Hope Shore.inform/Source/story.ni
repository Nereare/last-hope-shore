"Last Hope Shore" by "Igor Padoim"

[Volumes > Books > Parts > Chapters > Sections]

Book 0 - Definitions

Part 0.1 - Meta

Chapter 0.1.1 - Story Metadata

The story headline is "A dark-horrors-swept interactive fiction".
The story genre is "Horror".
The story description is "A new job by seashore turns into an awaken nightmare."
The release number is 1.
The story creation year is 2026.

Chapter 0.1.2 - Release & Includes

Release along with cover art ("A misty town with a chuch tower peaking through the mist."), an "Iridium" website, an interpreter, the introductory booklet, an introductory postcard, the source text, and the library card.

Include Basic Screen Effects by Emily Short.
Include Locksmith by Emily Short.
Include Compass Rose by Rafael D'Airen.

Section 0.1.2.1 - Current Place

To say current place:
	if in darkness:
		say "[bold type]Darkness[roman type]";
	else:
		say "[bold type][location][roman type]".

Section 0.1.2.2 - Compass Rose

Table of Fancy Stati
left	central	right 
" [time of day]"	"[current place]"	"[top rose]" 
" "	" "	"[middle rose]" 
" "	" "	"[bottom rose]" 

Rule for constructing the status line:
	fill status bar with Table of Fancy Stati;
	say default letters;
	rule succeeds.

Chapter 0.1.3 - Introduction

When play begins:
	center "After so much time looking for work, a response arrives!";
	say "Letter here.";
	center "---[paragraph break]";
	center "So move you will.";
	center "<Press any key>";
	wait for any key;
	clear the screen.

Part 0.2 - Time

Chapter 0.2.1 - Scenes

To say current day:
	if Day One is happening:
		say "One";
	else if Day Two is happening:
		say "Two";
	else if Day Three is happening:
		say "Three";
	else if Day Four is happening:
		say "Four";
	else if Day Five is happening:
		say "Five";
	else if Day Six is happening:
		say "Six";
	else:
		say "Seven".

Section 0.2.1.1 - Day One

Day One is a scene. "The first day of work." Day One begins when play begins.

When Day One begins:
	now the quest is "So the first day of work begins!".

Section 0.2.1.2 - Day Two

Day Two is a scene. "The second day of work."
Twilight begins when Day One ends.

Section 0.2.1.3 - Day Three

Day Three is a scene. "The third day of work."
Twilight begins when Day Two ends.

Section 0.2.1.4 - Day Four

Day Four is a scene. "The fourth day of work."
Twilight begins when Day Three ends.

Section 0.2.1.5 - Day Five

Day Five is a scene. "The fifth day of work."
Twilight begins when Day Four ends.

Section 0.2.1.6 - Day Six

Day Six is a scene. "The sixth day of work."
Twilight begins when Day Five ends.

Section 0.2.1.7 - Day Seven

Day Seven is a scene. "The last day of work."
Twilight begins when Day Six ends.

Part 0.3 - Space

Chapter 0.3.1 - Rooms

A room can be either indoor or outdoor. A room is usually outdoor.

Part 0.4 - Actors

[]

Chapter 0.4.2 - Aberrations

An aberration is a kind of thing. The specification of an aberration is "Represents any creature conjured from beyond the void between the stars."
An aberration has a number called health. The health of an aberration is usually 3.
An aberration has a number called AC. The AC of an aberration is usually 2.
A damage strength is a kind of value. The damage strengths are light, medium, and heavy.
An aberration has a damage strength.

Part 0.5 - Stuff

A tool is a kind of thing. The specification of a tool is "Represents any object that has a function and can be (usually) carried around." A tool is usually wearable.
Understand "wield [something preferably held]" as wearing.

A device is a kind of tool.

Chapter 0.5.1 - Weapons

A weapon is a kind of tool. The specification of a weapon is "Represents any kind of tool used to deal damage to others - either to  attack them or to defend oneself."
A weapon has a number called damage. The damage of a weapon is usually 1.

Chapter 0.5.2 - Spells

A spell is a kind of tool. The specification of a weapon is "Represents any object that contains the ritual and arcane words needed to cast an incantation."
A spell is never wearable. A spell can be ranged. A spell is usually ranged.
After examining a spell:
    say "[italic type]To cast a spell is to open your mind to the unkown - it may have rebound effects.[roman type][run paragraph on]".

Casting a spell is an action applying to one carried thing and one visible thing. Understand "cast [something] on [something]", "cast [something] at [something]", and "cast [something] [something]" as casting a spell.
Check casting a spell (this is the noun must be a spell rule):
	if the noun is not a spell:
		say "[The noun] must be a spell." instead.
Check casting a spell (this is the spell must be ranged rule):
	if the noun is not ranged:
		say "[The noun] doesn't require a target." instead.
Check casting a spell (this is the second noun must be an aberration rule):
	if the second noun is not an aberration:
		say "[The second noun] is not an enemy." instead.
Check casting a spell (this is the rolling for a successful casting rule):
	let X be a random number between 1 and 8;
	if X is greater than 2:
		say "[one of]As you access the arcane array, your mind manages to shield itself from the horrors between the stars[or]The symbols begin to melt and fade before you harden your mind and force them back to their array with sheer will[or]You begin to hear alien whispers in the back trying to take a hold of your attention, but you force them away and maintain your focus[at random].";
		continue the action;
	otherwise:
		say "[one of]The arcane array reveals hidden truths of the horrors between the stars, and you mind finds them too much to bear[or]The symbols begin to melt and fade before your eyes, and whatever it was you were trying to cast turns into a sharp pain in the core of your brain[or]Alien whispers surge in the back your mind, growing in intensity to the point of hurting your very mind[at random]. The spell is lost." instead;
		damage player's sanity;
		say "Your lose one Sanity."

[Carrying out and reporting rules are set on an individual spell basis.]

Section 0.5.3.1 - Cosmic Dread

Cosmic Dread is a spell. The description of Cosmic Dread is "A thin sheet of obsidian with razor-sharp edges contains an arcane array needed to cast this offensive spell."

Book 1 - Adventure

Chapter Z - Foo

[Your Room is a room. "Four bland walls with no decorations, save for a calendar from last year that remains there."]
