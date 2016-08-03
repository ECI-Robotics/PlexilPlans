<?xml version="1.0" encoding="UTF-8"?><PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tr="extended-plexil-translator" FileName="bootplan3.ple"><GlobalDeclarations LineNo="2" ColNo="5"><StateDeclaration LineNo="2" ColNo="5"><Name>time</Name><Return><Name>_return_0</Name><Type>Date</Type></Return></StateDeclaration><CommandDeclaration LineNo="5" ColNo="0"><Name>TurnFrontWheels</Name><Parameter><Type>Integer</Type></Parameter></CommandDeclaration><CommandDeclaration LineNo="8" ColNo="0"><Name>TurnRearWheels</Name><Parameter><Type>Integer</Type></Parameter></CommandDeclaration><CommandDeclaration LineNo="11" ColNo="0"><Name>MoveForward</Name><Parameter><Type>Integer</Type></Parameter></CommandDeclaration><CommandDeclaration LineNo="14" ColNo="0"><Name>MoveBackward</Name><Parameter><Type>Integer</Type></Parameter></CommandDeclaration><CommandDeclaration LineNo="17" ColNo="0"><Name>OpenSprinkler</Name></CommandDeclaration><CommandDeclaration LineNo="20" ColNo="0"><Name>Stop</Name></CommandDeclaration><CommandDeclaration LineNo="22" ColNo="0"><Name>pprint</Name></CommandDeclaration></GlobalDeclarations><Node NodeType="NodeList" epx="Sequence" LineNo="35" ColNo="4"><NodeId>Bootstrap</NodeId><VariableDeclarations><DeclareVariable LineNo="34" ColNo="4"><Name>smallDelay</Name><Type>Real</Type><InitialValue><RealValue>1</RealValue></InitialValue></DeclareVariable><DeclareVariable LineNo="35" ColNo="4"><Name>delay1</Name><Type>Real</Type><InitialValue><RealValue>2</RealValue></InitialValue></DeclareVariable><DeclareVariable LineNo="36" ColNo="4"><Name>delay2</Name><Type>Real</Type><InitialValue><RealValue>5</RealValue></InitialValue></DeclareVariable><DeclareVariable LineNo="37" ColNo="4"><Name>delay3</Name><Type>Real</Type><InitialValue><RealValue>10</RealValue></InitialValue></DeclareVariable><DeclareVariable LineNo="38" ColNo="4"><Name>tolerance</Name><Type>Real</Type><InitialValue><RealValue>0.1</RealValue></InitialValue></DeclareVariable></VariableDeclarations><InvariantCondition><NOT><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Sequence__0</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Sequence__0</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND></NOT></InvariantCondition><NodeBody><NodeList><Node NodeType="NodeList" epx="Sequence" LineNo="41" ColNo="4"><NodeId>Sequence__0</NodeId><InvariantCondition><NOT><OR><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">BackAndForth</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">BackAndForth</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">LaneChange</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">LaneChange</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND></OR></NOT></InvariantCondition><NodeBody><NodeList><Node NodeType="NodeList" epx="Sequence" LineNo="44" ColNo="12"><NodeId>BackAndForth</NodeId><InvariantCondition><NOT><OR><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__1</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__1</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Wait__2</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Wait__2</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__3</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__3</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Wait__4</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Wait__4</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND></OR></NOT></InvariantCondition><NodeBody><NodeList><Node NodeType="Command" LineNo="43" ColNo="12"><NodeId>COMMAND__1</NodeId><NodeBody><Command><Name><StringValue>MoveForward</StringValue></Name><Arguments LineNo="44" ColNo="24"><IntegerValue>10</IntegerValue></Arguments></Command></NodeBody></Node><Node NodeType="Empty" epx="Wait" LineNo="45" ColNo="12"><NodeId>Wait__2</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">COMMAND__1</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><EndCondition><GE><LookupOnChange><Name><StringValue>time</StringValue></Name><Tolerance><RealVariable>tolerance</RealVariable></Tolerance></LookupOnChange><ADD><RealVariable>delay2</RealVariable><NodeTimepointValue><NodeId>Wait__2</NodeId><NodeStateValue>EXECUTING</NodeStateValue><Timepoint>START</Timepoint></NodeTimepointValue></ADD></GE></EndCondition></Node><Node NodeType="Command" LineNo="45" ColNo="12"><NodeId>COMMAND__3</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">Wait__2</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Command><Name><StringValue>Stop</StringValue></Name></Command></NodeBody></Node><Node NodeType="Empty" epx="Wait" LineNo="47" ColNo="12"><NodeId>Wait__4</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">COMMAND__3</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><EndCondition><GE><LookupOnChange><Name><StringValue>time</StringValue></Name><Tolerance><RealVariable>tolerance</RealVariable></Tolerance></LookupOnChange><ADD><RealVariable>smallDelay</RealVariable><NodeTimepointValue><NodeId>Wait__4</NodeId><NodeStateValue>EXECUTING</NodeStateValue><Timepoint>START</Timepoint></NodeTimepointValue></ADD></GE></EndCondition></Node></NodeList></NodeBody></Node><Node NodeType="NodeList" epx="Sequence" LineNo="51" ColNo="12"><NodeId>LaneChange</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">BackAndForth</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><InvariantCondition><NOT><OR><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__5</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__5</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Wait__6</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Wait__6</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__7</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__7</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Wait__8</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Wait__8</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__9</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__9</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Wait__10</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Wait__10</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__11</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__11</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Wait__12</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Wait__12</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__13</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__13</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Wait__14</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Wait__14</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__15</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__15</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Wait__16</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Wait__16</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__17</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__17</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Wait__18</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Wait__18</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__19</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__19</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Wait__20</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Wait__20</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__21</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__21</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Wait__22</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Wait__22</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__23</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__23</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Wait__24</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Wait__24</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__25</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__25</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Wait__26</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Wait__26</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__27</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__27</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Wait__28</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Wait__28</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND></OR></NOT></InvariantCondition><NodeBody><NodeList><Node NodeType="Command" LineNo="50" ColNo="12"><NodeId>COMMAND__5</NodeId><NodeBody><Command><Name><StringValue>TurnFrontWheels</StringValue></Name><Arguments LineNo="51" ColNo="28"><IntegerValue>15</IntegerValue></Arguments></Command></NodeBody></Node><Node NodeType="Empty" epx="Wait" LineNo="52" ColNo="12"><NodeId>Wait__6</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">COMMAND__5</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><EndCondition><GE><LookupOnChange><Name><StringValue>time</StringValue></Name><Tolerance><RealVariable>tolerance</RealVariable></Tolerance></LookupOnChange><ADD><RealVariable>smallDelay</RealVariable><NodeTimepointValue><NodeId>Wait__6</NodeId><NodeStateValue>EXECUTING</NodeStateValue><Timepoint>START</Timepoint></NodeTimepointValue></ADD></GE></EndCondition></Node><Node NodeType="Command" LineNo="52" ColNo="12"><NodeId>COMMAND__7</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">Wait__6</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Command><Name><StringValue>MoveForward</StringValue></Name><Arguments LineNo="53" ColNo="24"><IntegerValue>10</IntegerValue></Arguments></Command></NodeBody></Node><Node NodeType="Empty" epx="Wait" LineNo="54" ColNo="12"><NodeId>Wait__8</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">COMMAND__7</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><EndCondition><GE><LookupOnChange><Name><StringValue>time</StringValue></Name><Tolerance><RealVariable>tolerance</RealVariable></Tolerance></LookupOnChange><ADD><RealVariable>delay2</RealVariable><NodeTimepointValue><NodeId>Wait__8</NodeId><NodeStateValue>EXECUTING</NodeStateValue><Timepoint>START</Timepoint></NodeTimepointValue></ADD></GE></EndCondition></Node><Node NodeType="Command" LineNo="54" ColNo="12"><NodeId>COMMAND__9</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">Wait__8</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Command><Name><StringValue>Stop</StringValue></Name></Command></NodeBody></Node><Node NodeType="Empty" epx="Wait" LineNo="56" ColNo="12"><NodeId>Wait__10</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">COMMAND__9</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><EndCondition><GE><LookupOnChange><Name><StringValue>time</StringValue></Name><Tolerance><RealVariable>tolerance</RealVariable></Tolerance></LookupOnChange><ADD><RealVariable>delay1</RealVariable><NodeTimepointValue><NodeId>Wait__10</NodeId><NodeStateValue>EXECUTING</NodeStateValue><Timepoint>START</Timepoint></NodeTimepointValue></ADD></GE></EndCondition></Node><Node NodeType="Command" LineNo="58" ColNo="12"><NodeId>COMMAND__11</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">Wait__10</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Command><Name><StringValue>TurnFrontWheels</StringValue></Name><Arguments LineNo="59" ColNo="28"><IntegerValue>0</IntegerValue></Arguments></Command></NodeBody></Node><Node NodeType="Empty" epx="Wait" LineNo="60" ColNo="12"><NodeId>Wait__12</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">COMMAND__11</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><EndCondition><GE><LookupOnChange><Name><StringValue>time</StringValue></Name><Tolerance><RealVariable>tolerance</RealVariable></Tolerance></LookupOnChange><ADD><RealVariable>smallDelay</RealVariable><NodeTimepointValue><NodeId>Wait__12</NodeId><NodeStateValue>EXECUTING</NodeStateValue><Timepoint>START</Timepoint></NodeTimepointValue></ADD></GE></EndCondition></Node><Node NodeType="Command" LineNo="60" ColNo="12"><NodeId>COMMAND__13</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">Wait__12</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Command><Name><StringValue>MoveForward</StringValue></Name><Arguments LineNo="61" ColNo="24"><IntegerValue>10</IntegerValue></Arguments></Command></NodeBody></Node><Node NodeType="Empty" epx="Wait" LineNo="62" ColNo="12"><NodeId>Wait__14</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">COMMAND__13</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><EndCondition><GE><LookupOnChange><Name><StringValue>time</StringValue></Name><Tolerance><RealVariable>tolerance</RealVariable></Tolerance></LookupOnChange><ADD><RealVariable>delay3</RealVariable><NodeTimepointValue><NodeId>Wait__14</NodeId><NodeStateValue>EXECUTING</NodeStateValue><Timepoint>START</Timepoint></NodeTimepointValue></ADD></GE></EndCondition></Node><Node NodeType="Command" LineNo="62" ColNo="12"><NodeId>COMMAND__15</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">Wait__14</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Command><Name><StringValue>Stop</StringValue></Name></Command></NodeBody></Node><Node NodeType="Empty" epx="Wait" LineNo="64" ColNo="12"><NodeId>Wait__16</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">COMMAND__15</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><EndCondition><GE><LookupOnChange><Name><StringValue>time</StringValue></Name><Tolerance><RealVariable>tolerance</RealVariable></Tolerance></LookupOnChange><ADD><RealVariable>delay1</RealVariable><NodeTimepointValue><NodeId>Wait__16</NodeId><NodeStateValue>EXECUTING</NodeStateValue><Timepoint>START</Timepoint></NodeTimepointValue></ADD></GE></EndCondition></Node><Node NodeType="Command" LineNo="66" ColNo="12"><NodeId>COMMAND__17</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">Wait__16</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Command><Name><StringValue>TurnFrontWheels</StringValue></Name><Arguments LineNo="67" ColNo="29"><IntegerValue>-15</IntegerValue></Arguments></Command></NodeBody></Node><Node NodeType="Empty" epx="Wait" LineNo="68" ColNo="12"><NodeId>Wait__18</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">COMMAND__17</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><EndCondition><GE><LookupOnChange><Name><StringValue>time</StringValue></Name><Tolerance><RealVariable>tolerance</RealVariable></Tolerance></LookupOnChange><ADD><RealVariable>smallDelay</RealVariable><NodeTimepointValue><NodeId>Wait__18</NodeId><NodeStateValue>EXECUTING</NodeStateValue><Timepoint>START</Timepoint></NodeTimepointValue></ADD></GE></EndCondition></Node><Node NodeType="Command" LineNo="68" ColNo="12"><NodeId>COMMAND__19</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">Wait__18</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Command><Name><StringValue>MoveForward</StringValue></Name><Arguments LineNo="69" ColNo="24"><IntegerValue>10</IntegerValue></Arguments></Command></NodeBody></Node><Node NodeType="Empty" epx="Wait" LineNo="70" ColNo="12"><NodeId>Wait__20</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">COMMAND__19</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><EndCondition><GE><LookupOnChange><Name><StringValue>time</StringValue></Name><Tolerance><RealVariable>tolerance</RealVariable></Tolerance></LookupOnChange><ADD><RealVariable>delay2</RealVariable><NodeTimepointValue><NodeId>Wait__20</NodeId><NodeStateValue>EXECUTING</NodeStateValue><Timepoint>START</Timepoint></NodeTimepointValue></ADD></GE></EndCondition></Node><Node NodeType="Command" LineNo="70" ColNo="12"><NodeId>COMMAND__21</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">Wait__20</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Command><Name><StringValue>Stop</StringValue></Name></Command></NodeBody></Node><Node NodeType="Empty" epx="Wait" LineNo="72" ColNo="12"><NodeId>Wait__22</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">COMMAND__21</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><EndCondition><GE><LookupOnChange><Name><StringValue>time</StringValue></Name><Tolerance><RealVariable>tolerance</RealVariable></Tolerance></LookupOnChange><ADD><RealVariable>delay1</RealVariable><NodeTimepointValue><NodeId>Wait__22</NodeId><NodeStateValue>EXECUTING</NodeStateValue><Timepoint>START</Timepoint></NodeTimepointValue></ADD></GE></EndCondition></Node><Node NodeType="Command" LineNo="73" ColNo="12"><NodeId>COMMAND__23</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">Wait__22</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Command><Name><StringValue>TurnFrontWheels</StringValue></Name><Arguments LineNo="74" ColNo="28"><IntegerValue>0</IntegerValue></Arguments></Command></NodeBody></Node><Node NodeType="Empty" epx="Wait" LineNo="75" ColNo="12"><NodeId>Wait__24</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">COMMAND__23</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><EndCondition><GE><LookupOnChange><Name><StringValue>time</StringValue></Name><Tolerance><RealVariable>tolerance</RealVariable></Tolerance></LookupOnChange><ADD><RealVariable>smallDelay</RealVariable><NodeTimepointValue><NodeId>Wait__24</NodeId><NodeStateValue>EXECUTING</NodeStateValue><Timepoint>START</Timepoint></NodeTimepointValue></ADD></GE></EndCondition></Node><Node NodeType="Command" LineNo="75" ColNo="12"><NodeId>COMMAND__25</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">Wait__24</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Command><Name><StringValue>MoveForward</StringValue></Name><Arguments LineNo="76" ColNo="24"><IntegerValue>10</IntegerValue></Arguments></Command></NodeBody></Node><Node NodeType="Empty" epx="Wait" LineNo="77" ColNo="12"><NodeId>Wait__26</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">COMMAND__25</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><EndCondition><GE><LookupOnChange><Name><StringValue>time</StringValue></Name><Tolerance><RealVariable>tolerance</RealVariable></Tolerance></LookupOnChange><ADD><RealVariable>delay2</RealVariable><NodeTimepointValue><NodeId>Wait__26</NodeId><NodeStateValue>EXECUTING</NodeStateValue><Timepoint>START</Timepoint></NodeTimepointValue></ADD></GE></EndCondition></Node><Node NodeType="Command" LineNo="77" ColNo="12"><NodeId>COMMAND__27</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">Wait__26</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Command><Name><StringValue>Stop</StringValue></Name></Command></NodeBody></Node><Node NodeType="Empty" epx="Wait" LineNo="79" ColNo="12"><NodeId>Wait__28</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">COMMAND__27</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><EndCondition><GE><LookupOnChange><Name><StringValue>time</StringValue></Name><Tolerance><RealVariable>tolerance</RealVariable></Tolerance></LookupOnChange><ADD><RealVariable>delay1</RealVariable><NodeTimepointValue><NodeId>Wait__28</NodeId><NodeStateValue>EXECUTING</NodeStateValue><Timepoint>START</Timepoint></NodeTimepointValue></ADD></GE></EndCondition></Node></NodeList></NodeBody></Node></NodeList></NodeBody></Node></NodeList></NodeBody></Node></PlexilPlan>