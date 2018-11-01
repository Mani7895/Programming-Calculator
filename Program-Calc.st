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

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>ProgCalculator</class-id> <category>accessing</category>

<body package="CS474" selector="x:">x: anObject

<body package="CS474" selector="y">y

<body package="CS474" selector="y:">y: anObject

<body package="CS474" selector="z">z

<body package="CS474" selector="z:">z: anObject

<body package="CS474" selector="ternaryoperand:">ternaryoperand: str

<body package="CS474" selector="x">x

<body package="CS474" selector="w">w

<body package="CS474" selector="regtobecopy:copyvaluetoreg:">regtobecopy: reg copyvaluetoreg: value

<body package="CS474" selector="w:">w: anObject

<body package="CS474" selector="accessingvalue:">accessingvalue: reg

<body package="CS474" selector="evaluating:">evaluating: str
</methods>

<methods>
<class-id>ProgCalculator</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>Ternary</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>

<methods>
<class-id>Ternary</class-id> <category>accessing</category>

<body package="CS474" selector="ternaryoperand:">ternaryoperand: str
</methods>


<methods>
<class-id>ProgCalc class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>ProgCalc</class-id> <category>aspects</category>

<body package="CS474" selector="counting">counting

<body package="CS474" selector="updatingw">updatingw

<body package="CS474" selector="updatingx">updatingx

<body package="CS474" selector="updatingz">updatingz

<body package="CS474" selector="updatingy">updatingy

<body package="CS474" selector="Program">Program
</methods>

<methods>
<class-id>ProgCalc</class-id> <category>actions</category>

<body package="CS474" selector="updatew">updatew

<body package="CS474" selector="hitenter">hitenter

<body package="CS474" selector="displayvalue">displayvalue

<body package="CS474" selector="allinst">allinst

<body package="CS474" selector="processinput">processinput

<body package="CS474" selector="SingleInst">SingleInst

<body package="CS474" selector="updatex">updatex

<body package="CS474" selector="count">count

<body package="CS474" selector="count:">count: anObject

<body package="CS474" selector="assign">assign

<body package="CS474" selector="updatey">updatey

<body package="CS474" selector="updatez">updatez
</methods>

<methods>
<class-id>ProgCalc</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>



</st-source>