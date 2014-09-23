<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.10.1 of February 6, 2014 on September 22, 2014 at 8:13:11 PM</time-stamp>


<component-created>
<name>CS474</name> <type>package</type>
</component-created><!-- Package CS474* -->


<component-created>
<name>CS474</name> <type>package</type>
</component-created>

<class>
<name>SetManager</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>X Y </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<methods>
<class-id>SetManager class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>SetManager</class-id> <category>accessing</category>

<body package="CS474" selector="x">x	^X</body>

<body package="CS474" selector="do:">do: block	"This keyword method takes as input a one-argument block.  	The argument block is applied to eachelement in setXand the element is replaced by the value returned by the block on that element."	1 to: X size		do: [:i | X at: i put: (block value: (X at: i))]</body>

<body package="CS474" selector="remove:">remove: item	"This keyword mehod allows a user to remove an element fromX. 	No action is taken if the objectin question is not in the set. Otherwise, the object passed as an argument is removed fromX. This method isdeferred."	self subclassResponsibility</body>

<body package="CS474" selector="y">y	^Y</body>

<body package="CS474" selector="clearX">clearX	"This unary method resets setXto be the empty set. No new set instances are created. This methodis deferred."	self subclassResponsibility</body>

<body package="CS474" selector="union">union	"This unary method computes that set union of setsXandY. 	The result is stored as setX. Theprevious content ofXis lost.Yis not modified by this operation.""GENERALIZE"		|tmp|	tmp := LinkedList new.	1 to: Y size		do: [:i | 			(self member: ((Y at: i) value))				ifTrue:[tmp add: (LinkValue new value: ((Y at: i) value))]		].	X := tmp.</body>

<body package="CS474" selector="member:">member: item	"This keyword method returns true or false depending on whether setXcontains the argumentnumber."	"GENERALIZE"	1 to: X size		do: [:i | 			((X at: i) value = item)				ifTrue: [^true].		].	^false.</body>

<body package="CS474" selector="add:">add: item	"This keyword method allows a user to add a new object toX. 	No action is taken if the argumentobject in question is already in the set. Otherwise, the object is added to the set. This method is deferred."	self subclassResponsibility</body>

<body package="CS474" selector="x:">x: anObject	X := anObject</body>

<body package="CS474" selector="startListManager">startListManager	"The current instances of setsXandYare discarded.  	This unary method creates twoinstances of classListSetManagerto be the newXandYsets. Both sets will be initially empty."	X := LinkedList new.	Y := LinkedList new.</body>

<body package="CS474" selector="startOCManager">startOCManager	"The current instances of setsXandYare discarded.  	This unary method creates twoinstances of classOCSetManagerto be the newXandYsets. Both sets will be initially empty."	X := OrderedCollection new.	Y := OrderedCollection new.</body>

<body package="CS474" selector="y:">y: anObject	Y := anObject</body>

<body package="CS474" selector="save">save	"This unary method copies theXset intoY. The previous content ofYis lost.  	The content ofXisnot affected. The two sets must not share any data structures, that is, they can be modified independently ofeach other."	Y := X copyFrom: 1 to: X size.	"This should work?" "NOPE"</body>

<body package="CS474" selector="switch">switch	"This  unary  method  swaps  the  sets  associated  withXandY,  meaning  thatXwill  receive  thepreviousYset and vice versa."		|tmp|	tmp := X.	X := Y.	Y := tmp.</body>
</methods>

<methods>
<class-id>SetManager</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	X := nil.	Y := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>



</st-source>
