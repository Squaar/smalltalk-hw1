<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.10.1 of February 6, 2014 on October 1, 2014 at 3:29:59 PM</time-stamp>


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

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>SetManager</class-id> <category>accessing</category>

<body package="CS474" selector="x">x

<body package="CS474" selector="switch">switch

<body package="CS474" selector="do:">do: block

<body package="CS474" selector="remove:">remove: item

<body package="CS474" selector="y">y

<body package="CS474" selector="union">union

<body package="CS474" selector="add:">add: item

<body package="CS474" selector="x:">x: anObject

<body package="CS474" selector="startOCManager">startOCManager

<body package="CS474" selector="y:">y: anObject

<body package="CS474" selector="save">save

<body package="CS474" selector="display">display

<body package="CS474" selector="member:">member: item

<body package="CS474" selector="at:">at: i

<body package="CS474" selector="startListManager">startListManager

<body package="CS474" selector="clearX">clearX
</methods>

<methods>
<class-id>SetManager</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>ListSetManager</class-id> <category>accessing</category>

<body package="CS474" selector="clearX">clearX

<body package="CS474" selector="add:">add: item

<body package="CS474" selector="at:">at: i

<body package="CS474" selector="remove:">remove: item

<body package="CS474" selector="do:">do: block
</methods>

<methods>
<class-id>ListSetManager</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>OCSetManager</class-id> <category>accessing</category>

<body package="CS474" selector="remove:">remove: item

<body package="CS474" selector="do:">do: block

<body package="CS474" selector="clearX">clearX

<body package="CS474" selector="add:">add: item

<body package="CS474" selector="at:">at: i
</methods>

<methods>
<class-id>OCSetManager</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>SetApplication</class-id> <category>accessing</category>

<body package="CS474" selector="add:">add: obj

<body package="CS474" selector="manager">manager

<body package="CS474" selector="at:">at: i

<body package="CS474" selector="display">display

<body package="CS474" selector="clearX">clearX

<body package="CS474" selector="manager:">manager: anObject

<body package="CS474" selector="remove:">remove: obj

<body package="CS474" selector="save">save 

<body package="CS474" selector="union">union

<body package="CS474" selector="switch">switch

<body package="CS474" selector="do:">do: block

<body package="CS474" selector="member:">member: obj
</methods>

<methods>
<class-id>SetApplication</class-id> <category>initialize-release</category>

<body package="CS474" selector="startOCManager">startOCManager

<body package="CS474" selector="startListManager">startListManager

<body package="CS474" selector="initialize">initialize
</methods>



</st-source>