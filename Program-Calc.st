<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.3 of July 28, 2017 on October 25, 2018 at 8:42:17 PM</time-stamp>


<component-created>
<name>CS474</name> <type>package</type>
</component-created><!-- Package CS474* -->


<component-created>
<name>CS474</name> <type>package</type>
</component-created>

<class>
<name>ProgCalculator</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars>w x y z </class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>Ternary</name>
<environment>Smalltalk</environment>
<super>ProgCalculator</super>
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
<name>ProgCalc</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>Program w x y z updatez updatex updatey updatingz updatingw updatingx updatingy prog array counting </inst-vars>
<class-inst-vars>count </class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<methods>
<class-id>ProgCalculator class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>ProgCalculator</class-id> <category>accessing</category>

<body package="CS474" selector="x:">x: anObject	x := anObject</body>

<body package="CS474" selector="y">y	^y</body>

<body package="CS474" selector="y:">y: anObject	y := anObject</body>

<body package="CS474" selector="z">z	^z</body>

<body package="CS474" selector="z:">z: anObject	z := anObject</body>

<body package="CS474" selector="ternaryoperand:">ternaryoperand: str	self subclassResponsibility.</body>

<body package="CS474" selector="x">x	^x</body>

<body package="CS474" selector="w">w	^w</body>

<body package="CS474" selector="regtobecopy:copyvaluetoreg:">regtobecopy: reg copyvaluetoreg: value			reg= 'w'	ifTrue: [w := value.].	reg = 'x'	ifTrue: [x := value.].	reg = 'y'	ifTrue: [y := value.].	reg = 'z'	ifTrue: [z := value.].	reg= 'w.'	ifTrue: [w := value.].	reg = 'x.'	ifTrue: [x := value.].	reg = 'y.'	ifTrue: [y := value.].	reg = 'z.'	ifTrue: [z := value.].		^self.</body>

<body package="CS474" selector="w:">w: anObject	w := anObject</body>

<body package="CS474" selector="accessingvalue:">accessingvalue: reg	| temp |	reg = 'w'	ifTrue: [temp := w.^temp.].	reg = 'x'	ifTrue: [temp := x. ^temp.].	reg = 'y'	ifTrue: [temp := y. ^temp.].	reg = 'z'	ifTrue: [temp := z. ^temp.].	reg = 'w.'	ifTrue: [temp := w.^temp.].	reg = 'x.'	ifTrue: [temp := x. ^temp.].	reg = 'y.'	ifTrue: [temp := y. ^temp.].	reg = 'z.'	ifTrue: [temp := z. ^temp.].		^self.</body>

<body package="CS474" selector="evaluating:">evaluating: str	| tmp id val1 val2 operand val m |	id := OrderedCollection new.	tmp := ReadStream on: str.	[tmp atEnd] whileFalse: [ |op| 		op := tmp upTo: Character space.		id add: op.].	m := Ternary new.		(id size) = 3	ifTrue: [ 		((id at: 2) = '=') ifTrue: [		self regtobecopy: (id at: 1) copyvaluetoreg: ((id at: 3) asNumber). ^0.		]. 		((id at: 2) = '?') ifTrue:[val := m ternaryoperand: id.			val = 0 ifTrue: [^0] ifFalse: [^val]].].			(id size) = 5	ifTrue: [val1 := (self accessingvalue: (id at: 3)). 		((id at: 5)~='w') &amp; ((id at: 5)~= 'x') &amp; ((id at: 5)~= 'y') &amp; ((id at: 5)~= 'z') &amp; ((id at: 5)~='w.') &amp; ((id at: 5)~= 'x.') &amp; ((id at: 5)~= 'y.') &amp; ((id at: 5)~= 'z.') 		ifTrue: [val2 := ((id at: 5) asNumber).]		ifFalse: [val2 := (self accessingvalue: (id at: 5)).].		operand := (id at: 4).				operand = '+' ifTrue: [val :=  val1 + val2.].		operand = '-' ifTrue: [val :=  val1 - val2.].		operand = '*' ifTrue: [val := val1 * val2.].		operand = '**' ifTrue: [val := val1 ** val2.].		operand = '/' ifTrue: [val := val1/val2.].		self regtobecopy: (id at: 1) copyvaluetoreg: val. ^0.		].		^self</body>
</methods>

<methods>
<class-id>ProgCalculator</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"		" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Ternary</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

<methods>
<class-id>Ternary</class-id> <category>accessing</category>

<body package="CS474" selector="ternaryoperand:">ternaryoperand: str	" *** This method was defined by ProgCalculator as a subclass responsibility.	Replace its body with a proper implementation. *** "	| val2 |	val2 := (self accessingvalue: (str at: 1)).	val2 = 0 	ifTrue: [^val2]	ifFalse: [^((str at: 3)asNumber).].			^self</body>
</methods>


<methods>
<class-id>ProgCalc class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#label: 'Programmable Calculator' 			#bounds: #(#{Graphics.Rectangle} 495 165 1042 659 ) 			#colors: 			#(#{UI.LookPreferences} 				#setForegroundColor: #(#{Graphics.ColorValue} #black ) 				#setBackgroundColor: #(#{Graphics.ColorValue} 5631 3072 8191 ) 				#setSelectionForegroundColor: #(#{Graphics.ColorValue} 7167 7167 8191 ) 				#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 7167 7167 8191 ) 				#setBorderColor: #(#{Graphics.ColorValue} #lightGray ) ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 339 0 199 0 448 0 220 0 ) 					#name: #allinst 					#model: #allinst 					#label: 'All Instructions' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 96 0 197 0 195 0 218 0 ) 					#name: #singleinst 					#colors: 					#(#{UI.LookPreferences} 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} 6143 6143 8191 ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 6143 6143 8191 ) ) 					#model: #SingleInst 					#label: 'Single Instruction' 					#defaultable: true ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 66 0 266 0 ) 					#name: #w 					#label: 'w :' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 65 0 335 0 ) 					#name: #Label2 					#label: 'y :' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 338 0 262 0 ) 					#name: #x 					#label: 'x :' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 334 0 336 0 ) 					#name: #Label4 					#label: 'z :' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 94 0 264 0 194 0 283 0 ) 					#name: #updatingw 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 7167 7167 8191 ) 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} 7167 7167 8191 ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 7167 7167 8191 ) ) 					#model: #updatingw 					#callbacksSpec: 					#(#{UI.UIEventCallbackSubSpec} 						#focusOutSelector: #updatew 						#valueChangeSelector: #updatew ) 					#type: #number ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 364 0 262 0 464 0 281 0 ) 					#name: #updatingx 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} 7167 7167 8191 ) 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} 7167 7167 8191 ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 7167 7167 8191 ) ) 					#model: #updatingx 					#callbacksSpec: 					#(#{UI.UIEventCallbackSubSpec} 						#focusOutSelector: #updatex 						#valueChangeSelector: #updatex ) 					#type: #number ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 94 0 336 0 194 0 355 0 ) 					#name: #updatingy 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} 7167 7167 8191 ) 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} 7167 7167 8191 ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 7167 7167 8191 ) ) 					#model: #updatingy 					#callbacksSpec: 					#(#{UI.UIEventCallbackSubSpec} 						#focusOutSelector: #updatey 						#valueChangeSelector: #updatey ) 					#type: #number ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 364 0 336 0 464 0 355 0 ) 					#name: #updatingz 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} 7167 7167 8191 ) 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} 7167 7167 8191 ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 7167 7167 8191 ) ) 					#model: #updatingz 					#callbacksSpec: 					#(#{UI.UIEventCallbackSubSpec} 						#focusOutSelector: #updatez 						#valueChangeSelector: #updatez ) 					#type: #number ) 				#(#{UI.TextEditorSpec} 					#layout: #(#{Graphics.LayoutFrame} 159 0 4 0 348 0 192 0 ) 					#name: #program 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 3072 8191 3072 ) ) 					#model: #Program 					#callbacksSpec: 					#(#{UI.UIEventCallbackSubSpec} 						#focusOutSelector: #processinput ) 					#tabRequiresControl: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 387 0 103 0 487 0 122 0 ) 					#name: #counting 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} 7679 7167 8191 ) 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} 7679 7167 8191 ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 7679 7167 8191 ) ) 					#model: #counting 					#type: #number ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 404 0 78 0 ) 					#name: #count 					#label: 'Count :' ) ) ) )</body>
</methods>


<methods>
<class-id>ProgCalc</class-id> <category>aspects</category>

<body package="CS474" selector="counting">counting	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^counting isNil		ifTrue:			[counting := 0 asValue]		ifFalse:			[counting]</body>

<body package="CS474" selector="updatingw">updatingw	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^updatingw isNil		ifTrue:			[updatingw := 0 asValue]		ifFalse:			[updatingw]</body>

<body package="CS474" selector="updatingx">updatingx	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^updatingx isNil		ifTrue:			[updatingx := 0 asValue]		ifFalse:			[updatingx]</body>

<body package="CS474" selector="updatingz">updatingz	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^updatingz isNil		ifTrue:			[updatingz := 0 asValue]		ifFalse:			[updatingz]</body>

<body package="CS474" selector="updatingy">updatingy	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^updatingy isNil		ifTrue:			[updatingy := 0 asValue]		ifFalse:			[updatingy]</body>

<body package="CS474" selector="Program">Program	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^Program isNil		ifTrue:			[Program := String new asValue]		ifFalse:			[Program]</body>
</methods>

<methods>
<class-id>ProgCalc</class-id> <category>actions</category>

<body package="CS474" selector="updatew">updatew	prog w: updatingw value.	^self.</body>

<body package="CS474" selector="hitenter">hitenter		^self</body>

<body package="CS474" selector="displayvalue">displayvalue	Program value: '1:  '</body>

<body package="CS474" selector="allinst">allinst	| val |	Transcript clear.	[count &gt;= (array size)]			whileFalse: [								count := count + 1.				val := (prog evaluating:(array at: count)).				val = 0 ifFalse: [count := val - 1.].				counting value: count. 				Transcript show: (array at: count) printString.				Transcript show: count printString.				updatingw value: (prog w).				updatingx value: (prog x).				updatingy value: (prog y).				updatingz value: (prog z).		].		^self</body>

<body package="CS474" selector="processinput">processinput	| txtBox readStream i concat|	concat := ''.	i := 1.		array := OrderedCollection new.	txtBox := Program value asString.	readStream := ReadStream on: txtBox.	Transcript clear.		[readStream atEnd] whileFalse: [| tmp |		 tmp := readStream upTo: Character cr. Transcript show: tmp.		((tmp at: 1) digitValue) &lt;10 ifTrue:[((tmp at: 2) digitValue) &lt;10 ifTrue:[tmp := tmp copyFrom:5 to: (tmp size).] 			ifFalse:[tmp := tmp copyFrom:4 to: (tmp size).].].		 concat := (concat, (i printString), ':  ', (tmp),(String with: (Character cr))). i := i +1. Transcript show: concat.		array add:tmp. ].	Program value: concat.	count := 0.	counting value: 0.		^self</body>

<body package="CS474" selector="SingleInst">SingleInst		| val |	Transcript clear.	Transcript show: array printString.	Transcript show: count printString.	count &gt;= (array size)	ifTrue: [^0]	ifFalse: [count := count + 1.		val := (prog evaluating:(array at: count)).		val = 0 ifFalse: [count := val - 1.].		counting value: count.		updatingw value: (prog w).		updatingx value: (prog x).		updatingy value: (prog y).		updatingz value: (prog z).].		^self</body>

<body package="CS474" selector="updatex">updatex	prog x: updatingx value.^self.</body>

<body package="CS474" selector="count">count	^count</body>

<body package="CS474" selector="count:">count: anObject	count := 0.	^self.</body>

<body package="CS474" selector="assign">assign	"This stub method was generated by UIDefiner"	^self</body>

<body package="CS474" selector="updatey">updatey	prog y: updatingy value.^self.</body>

<body package="CS474" selector="updatez">updatez	prog z: updatingz value.^self.</body>
</methods>

<methods>
<class-id>ProgCalc</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	prog := ProgCalculator new.	prog w:  0.	prog x: 0.	prog y:  0.	prog z: 0.</body>
</methods>



</st-source>
