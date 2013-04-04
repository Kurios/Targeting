Targeting system Specifications
===============================================
1.0 Table of Contents
-----------------------------------------------
2.0 Legacy Specifications
3.0 General Specifications
3.0 Multi-Targeting System
4.0 Multi-Channel Chat System
5.0 Misc


2.0 Legacy Specifications
-----------------------------------------------
Legacy System runs on the principle that we have one leader. That one leader calls an indiviual target, and everyone matches the leader's target.

Leader is self-declared, and this is declared via this string:
    (Party): <Name> says, "I am calling targets, focus your fire on my command."
which translates to this command
    pt I am calling targets, focus your fire on my command.
    
Name field becomes the leader for the party.
    
Leader then relays this string to declare target on target switch
    (Party): <Name> says, "Changed target to <Target>."
which translates to this command
	pt Changed target to <target>

There is a requierment that the name field matches the leader field here.


Notes and Comments:
 -Jack asked that  leader change to : I'm taking command.

3.0 General Specifications
-----------------------------------------------
System Variables:
	tarsys  - an array, representitive of all collective methods and internal variables used in this system.
	tarsys.targets - Strings, in a queue, for piority targeting.
	tarsys.addTarget(target)
	tarsys.removeTarget(target)
	tarsys.target() <- a better way to get the current target. (Actually does computations based on room).
	target - a single string, representing the currently set target.
	
	
System Construction:
	The system will be constructed with external files, using a single mudlet-compatable wrapper, that loads the files from the filesystem.


4.0 Multi-Targeting System
-----------------------------------------------
	tarsys.addTarget(target)
	tarsys.removeTarget(target)
targeting callout string
	pt targets : <name1>, <name2>, .. <nameX>
	
	

5.0 Multi-Channel Chat System
-----------------------------------------------
	to be added (maybe)
	prefix filter for party, prefix bieng in the form ""XXX:"
	need to add:
		new way to do party tells.
		filters.
		group assignment.
6.0 Misc
-----------------------------------------------