<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.10.1 of February 6, 2014 on October 1, 2014 at 3:13:45 PM</time-stamp>


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

<class>
<name>ListSetManager</name>
<environment>Smalltalk</environment>
<super>SetManager</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>OCSetManager</name>
<environment>Smalltalk</environment>
<super>SetManager</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>SetApplication</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>manager </inst-vars>
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

<body package="CS474" selector="switch">switch	"This  unary  method  swaps  the  sets  associated  withXandY,  meaning  thatXwill  receive  thepreviousYset and vice versa."		|tmp|	tmp := X.	X := Y.	Y := tmp.</body>

<body package="CS474" selector="do:">do: block	"This keyword method takes as input a one-argument block.  	The argument block is applied to eachelement in setXand the element is replaced by the value returned by the block on that element."	"1 to: X size		do: [:i | X at: i put: (block value: (X at: i))]"	self subclassResponsibility</body>

<body package="CS474" selector="remove:">remove: item	"This keyword mehod allows a user to remove an element fromX. 	No action is taken if the objectin question is not in the set. Otherwise, the object passed as an argument is removed fromX. This method isdeferred."	self subclassResponsibility</body>

<body package="CS474" selector="y">y	^Y</body>

<body package="CS474" selector="union">union	"This unary method computes that set union of setsXandY. 	The result is stored as setX. Theprevious content ofXis lost.Yis not modified by this operation."		|removes item|	removes := OrderedCollection new.	"find what needs to be removed"	(1 to: X size) do: [:i | 		item := self at: i.		self switch.		(self member: item)			ifTrue:[self switch.]			ifFalse:[self switch. removes add: item.].	].	"remove everything"	removes do: [:i|		self remove: i.	].</body>

<body package="CS474" selector="add:">add: item	"This keyword method allows a user to add a new object toX. 	No action is taken if the argumentobject in question is already in the set. Otherwise, the object is added to the set. This method is deferred."	self subclassResponsibility.</body>

<body package="CS474" selector="x:">x: anObject	X := anObject</body>

<body package="CS474" selector="startOCManager">startOCManager	"The current instances of setsXandYare discarded.  	This unary method creates twoinstances of classOCSetManagerto be the newXandYsets. Both sets will be initially empty."	X := OrderedCollection new.	Y := OrderedCollection new.</body>

<body package="CS474" selector="y:">y: anObject	Y := anObject</body>

<body package="CS474" selector="save">save	"This unary method copies theXset intoY. The previous content ofYis lost.  	The content ofXisnot affected. The two sets must not share any data structures, that is, they can be modified independently ofeach other."	Y := X dcopy.</body>

<body package="CS474" selector="display">display	"This unary method displays the content of setsXandYin the Transcript window."		Transcript show: '\' withCRs.	Transcript show: 'X: ', X displayString, '\' withCRs.	Transcript show: 'Y: ', Y displayString, '\' withCRs.</body>

<body package="CS474" selector="member:">member: item	"This keyword method returns true or false depending on whether setXcontains the argumentnumber."	"GENERALIZE"	1 to: X size		do: [:i | 			((self at: i)  = item)				ifTrue: [^true].		].	^false.</body>

<body package="CS474" selector="at:">at: i	"This keyword method takes a nonnegative integer parameteri. 	The element at positioniin the set inreturned.This method is deferred."		self subclassResponsibility.</body>

<body package="CS474" selector="startListManager">startListManager	"The current instances of setsXandYare discarded.  	This unary method creates twoinstances of classListSetManagerto be the newXandYsets. Both sets will be initially empty."	X := LinkedList new.	Y := LinkedList new.</body>

<body package="CS474" selector="clearX">clearX	"This unary method resets setXto be the empty set. No new set instances are created. This methodis deferred."	self subclassResponsibility.</body>
</methods>

<methods>
<class-id>SetManager</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	X := nil.	Y := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>ListSetManager</class-id> <category>accessing</category>

<body package="CS474" selector="clearX">clearX		(1 to: X size)		do: [:i| X removeFirst.].</body>

<body package="CS474" selector="add:">add: item		(self member: item)		ifFalse: [X add: (LinkValue new value: item).].</body>

<body package="CS474" selector="at:">at: i	^(X at: i) value.</body>

<body package="CS474" selector="remove:">remove: item		(1 to: X size)		do: [:i|			((X at: i) value = item)				ifTrue:[X remove: (X at: i)].		].</body>

<body package="CS474" selector="do:">do: block		(1 to: X size)		do: [:i|			(X at: i) value: (block value: ((X at: i) value)).		].</body>
</methods>

<methods>
<class-id>ListSetManager</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>OCSetManager</class-id> <category>accessing</category>

<body package="CS474" selector="remove:">remove: item		(1 to: X size)		do: [:i|			((X at: i) = item)				ifTrue:[X remove: (X at: i)].		].</body>

<body package="CS474" selector="do:">do: block		(1 to: X size)		do: [:i|			X at: i put: (block value: (X at: i)).		].</body>

<body package="CS474" selector="clearX">clearX		"X removeAllSuchThat: [:i | true]."	X removeAll.</body>

<body package="CS474" selector="add:">add: item		(self member: item)		ifFalse: [X add: item.].</body>

<body package="CS474" selector="at:">at: i	^X at: i.</body>
</methods>

<methods>
<class-id>OCSetManager</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>SetApplication</class-id> <category>accessing</category>

<body package="CS474" selector="add:">add: obj	manager add: obj.</body>

<body package="CS474" selector="manager">manager	^manager</body>

<body package="CS474" selector="at:">at: i	^manager at: i.</body>

<body package="CS474" selector="display">display	manager display.</body>

<body package="CS474" selector="clearX">clearX	manager clearX</body>

<body package="CS474" selector="manager:">manager: anObject	manager := anObject</body>

<body package="CS474" selector="remove:">remove: obj	manager remove: obj.</body>

<body package="CS474" selector="save">save 	manager save.</body>

<body package="CS474" selector="union">union	manager union.</body>

<body package="CS474" selector="switch">switch	manager switch.</body>

<body package="CS474" selector="do:">do: block	manager do: block.</body>

<body package="CS474" selector="member:">member: obj	^manager member: obj.</body>
</methods>

<methods>
<class-id>SetApplication</class-id> <category>initialize-release</category>

<body package="CS474" selector="startOCManager">startOCManager	manager := OCSetManager new.	manager startOCManager.</body>

<body package="CS474" selector="startListManager">startListManager		manager := ListSetManager new.	manager startListManager.</body>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	manager := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>



</st-source>
