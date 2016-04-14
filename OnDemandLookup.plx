<?xml version="1.0" encoding="UTF-8"?>
<PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xmlns:tr="extended-plexil-translator"
            FileName="OnDemandLookup.ple">
   <GlobalDeclarations LineNo="2" ColNo="5">
      <StateDeclaration LineNo="2" ColNo="5">
         <Name>Latitude</Name>
         <Return>
            <Name>_return_0</Name>
            <Type>Real</Type>
         </Return>
      </StateDeclaration>
      <StateDeclaration LineNo="3" ColNo="5">
         <Name>time</Name>
         <Return>
            <Name>_return_0</Name>
            <Type>Date</Type>
         </Return>
      </StateDeclaration>
      <StateDeclaration LineNo="5" ColNo="8">
         <Name>PositionChanged</Name>
         <Return>
            <Name>_return_0</Name>
            <Type>Integer</Type>
         </Return>
      </StateDeclaration>
      <CommandDeclaration LineNo="8" ColNo="0">
         <Name>TurnFrontWheels</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="11" ColNo="0">
         <Name>TurnRearWheels</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="14" ColNo="0">
         <Name>MoveForward</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="17" ColNo="0">
         <Name>MoveBackward</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="20" ColNo="0">
         <Name>StopEngine</Name>
      </CommandDeclaration>
      <CommandDeclaration LineNo="22" ColNo="0">
         <Name>pprint</Name>
      </CommandDeclaration>
   </GlobalDeclarations>
   <Node NodeType="NodeList" epx="Sequence" LineNo="26" ColNo="4">
      <NodeId>CommandsTest</NodeId>
      <VariableDeclarations>
         <DeclareVariable LineNo="25" ColNo="4">
            <Name>pi</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>0</RealValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="26" ColNo="4">
            <Name>ct</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>0</RealValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="28" ColNo="4">
            <Name>startime</Name>
            <Type>Real</Type>
         </DeclareVariable>
         <DeclareVariable LineNo="30" ColNo="4">
            <Name>maxtime</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>5</RealValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="31" ColNo="4">
            <Name>tolerance</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>0.01</RealValue>
            </InitialValue>
         </DeclareVariable>
      </VariableDeclarations>
      <InvariantCondition>
         <NOT>
            <AND>
               <EQInternal>
                  <NodeOutcomeVariable>
                     <NodeRef dir="child">Sequence__0</NodeRef>
                  </NodeOutcomeVariable>
                  <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
               </EQInternal>
               <EQInternal>
                  <NodeStateVariable>
                     <NodeRef dir="child">Sequence__0</NodeRef>
                  </NodeStateVariable>
                  <NodeStateValue>FINISHED</NodeStateValue>
               </EQInternal>
            </AND>
         </NOT>
      </InvariantCondition>
      <NodeBody>
         <NodeList>
            <Node NodeType="NodeList" epx="Sequence" LineNo="34" ColNo="4">
               <NodeId>Sequence__0</NodeId>
               <InvariantCondition>
                  <NOT>
                     <OR>
                        <AND>
                           <EQInternal>
                              <NodeOutcomeVariable>
                                 <NodeRef dir="child">Setup</NodeRef>
                              </NodeOutcomeVariable>
                              <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                           </EQInternal>
                           <EQInternal>
                              <NodeStateVariable>
                                 <NodeRef dir="child">Setup</NodeRef>
                              </NodeStateVariable>
                              <NodeStateValue>FINISHED</NodeStateValue>
                           </EQInternal>
                        </AND>
                        <AND>
                           <EQInternal>
                              <NodeOutcomeVariable>
                                 <NodeRef dir="child">Concurrence__3</NodeRef>
                              </NodeOutcomeVariable>
                              <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                           </EQInternal>
                           <EQInternal>
                              <NodeStateVariable>
                                 <NodeRef dir="child">Concurrence__3</NodeRef>
                              </NodeStateVariable>
                              <NodeStateValue>FINISHED</NodeStateValue>
                           </EQInternal>
                        </AND>
                     </OR>
                  </NOT>
               </InvariantCondition>
               <NodeBody>
                  <NodeList>
                     <Node NodeType="NodeList" epx="Sequence" LineNo="37" ColNo="12">
                        <NodeId>Setup</NodeId>
                        <InvariantCondition>
                           <NOT>
                              <OR>
                                 <AND>
                                    <EQInternal>
                                       <NodeOutcomeVariable>
                                          <NodeRef dir="child">ASSIGNMENT__1</NodeRef>
                                       </NodeOutcomeVariable>
                                       <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                    </EQInternal>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="child">ASSIGNMENT__1</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </AND>
                                 <AND>
                                    <EQInternal>
                                       <NodeOutcomeVariable>
                                          <NodeRef dir="child">COMMAND__2</NodeRef>
                                       </NodeOutcomeVariable>
                                       <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                    </EQInternal>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="child">COMMAND__2</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </AND>
                              </OR>
                           </NOT>
                        </InvariantCondition>
                        <NodeBody>
                           <NodeList>
                              <Node NodeType="Assignment" LineNo="37" ColNo="12">
                                 <NodeId>ASSIGNMENT__1</NodeId>
                                 <NodeBody>
                                    <Assignment>
                                       <RealVariable>startime</RealVariable>
                                       <NumericRHS>
                                          <LookupNow>
                                             <Name>
                                                <StringValue>time</StringValue>
                                             </Name>
                                          </LookupNow>
                                       </NumericRHS>
                                    </Assignment>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="Command" LineNo="37" ColNo="12">
                                 <NodeId>COMMAND__2</NodeId>
                                 <StartCondition>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="sibling">ASSIGNMENT__1</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </StartCondition>
                                 <NodeBody>
                                    <Command>
                                       <Name>
                                          <StringValue>pprint</StringValue>
                                       </Name>
                                       <Arguments LineNo="38" ColNo="19">
                                          <StringValue>PLAN SETUP AT</StringValue>
                                          <RealVariable>startime</RealVariable>
                                       </Arguments>
                                    </Command>
                                 </NodeBody>
                              </Node>
                           </NodeList>
                        </NodeBody>
                     </Node>
                     <Node NodeType="NodeList" epx="Concurrence" LineNo="44" ColNo="8">
                        <NodeId>Concurrence__3</NodeId>
                        <StartCondition>
                           <EQInternal>
                              <NodeStateVariable>
                                 <NodeRef dir="sibling">Setup</NodeRef>
                              </NodeStateVariable>
                              <NodeStateValue>FINISHED</NodeStateValue>
                           </EQInternal>
                        </StartCondition>
                        <NodeBody>
                           <NodeList>
                              <Node NodeType="NodeList" epx="Sequence" LineNo="46" ColNo="16">
                                 <NodeId>XX</NodeId>
                                 <StartCondition>
                                    <EQNumeric>
                                       <LookupOnChange>
                                          <Name>
                                             <StringValue>PositionChanged</StringValue>
                                          </Name>
                                       </LookupOnChange>
                                       <IntegerValue>1</IntegerValue>
                                    </EQNumeric>
                                 </StartCondition>
                                 <InvariantCondition>
                                    <NOT>
                                       <OR>
                                          <AND>
                                             <EQInternal>
                                                <NodeOutcomeVariable>
                                                   <NodeRef dir="child">ASSIGNMENT__4</NodeRef>
                                                </NodeOutcomeVariable>
                                                <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                             </EQInternal>
                                             <EQInternal>
                                                <NodeStateVariable>
                                                   <NodeRef dir="child">ASSIGNMENT__4</NodeRef>
                                                </NodeStateVariable>
                                                <NodeStateValue>FINISHED</NodeStateValue>
                                             </EQInternal>
                                          </AND>
                                          <AND>
                                             <EQInternal>
                                                <NodeOutcomeVariable>
                                                   <NodeRef dir="child">COMMAND__5</NodeRef>
                                                </NodeOutcomeVariable>
                                                <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                             </EQInternal>
                                             <EQInternal>
                                                <NodeStateVariable>
                                                   <NodeRef dir="child">COMMAND__5</NodeRef>
                                                </NodeStateVariable>
                                                <NodeStateValue>FINISHED</NodeStateValue>
                                             </EQInternal>
                                          </AND>
                                          <AND>
                                             <EQInternal>
                                                <NodeOutcomeVariable>
                                                   <NodeRef dir="child">COMMAND__6</NodeRef>
                                                </NodeOutcomeVariable>
                                                <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                             </EQInternal>
                                             <EQInternal>
                                                <NodeStateVariable>
                                                   <NodeRef dir="child">COMMAND__6</NodeRef>
                                                </NodeStateVariable>
                                                <NodeStateValue>FINISHED</NodeStateValue>
                                             </EQInternal>
                                          </AND>
                                       </OR>
                                    </NOT>
                                 </InvariantCondition>
                                 <NodeBody>
                                    <NodeList>
                                       <Node NodeType="Assignment" LineNo="47" ColNo="16">
                                          <NodeId>ASSIGNMENT__4</NodeId>
                                          <NodeBody>
                                             <Assignment>
                                                <RealVariable>pi</RealVariable>
                                                <NumericRHS>
                                                   <LookupNow>
                                                      <Name>
                                                         <StringValue>Latitude</StringValue>
                                                      </Name>
                                                   </LookupNow>
                                                </NumericRHS>
                                             </Assignment>
                                          </NodeBody>
                                       </Node>
                                       <Node NodeType="Command" LineNo="47" ColNo="16">
                                          <NodeId>COMMAND__5</NodeId>
                                          <StartCondition>
                                             <EQInternal>
                                                <NodeStateVariable>
                                                   <NodeRef dir="sibling">ASSIGNMENT__4</NodeRef>
                                                </NodeStateVariable>
                                                <NodeStateValue>FINISHED</NodeStateValue>
                                             </EQInternal>
                                          </StartCondition>
                                          <NodeBody>
                                             <Command>
                                                <Name>
                                                   <StringValue>pprint</StringValue>
                                                </Name>
                                                <Arguments LineNo="48" ColNo="23">
                                                   <StringValue>Position changed!</StringValue>
                                                </Arguments>
                                             </Command>
                                          </NodeBody>
                                       </Node>
                                       <Node NodeType="Command" LineNo="48" ColNo="16">
                                          <NodeId>COMMAND__6</NodeId>
                                          <StartCondition>
                                             <EQInternal>
                                                <NodeStateVariable>
                                                   <NodeRef dir="sibling">COMMAND__5</NodeRef>
                                                </NodeStateVariable>
                                                <NodeStateValue>FINISHED</NodeStateValue>
                                             </EQInternal>
                                          </StartCondition>
                                          <NodeBody>
                                             <Command>
                                                <Name>
                                                   <StringValue>pprint</StringValue>
                                                </Name>
                                                <Arguments LineNo="49" ColNo="23">
                                                   <StringValue>&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;</StringValue>
                                                   <RealVariable>pi</RealVariable>
                                                </Arguments>
                                             </Command>
                                          </NodeBody>
                                       </Node>
                                    </NodeList>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="NodeList" epx="Sequence" LineNo="54" ColNo="16">
                                 <NodeId>TIMED_EVENT</NodeId>
                                 <StartCondition>
                                    <GT>
                                       <LookupOnChange>
                                          <Name>
                                             <StringValue>time</StringValue>
                                          </Name>
                                          <Tolerance>
                                             <RealVariable>tolerance</RealVariable>
                                          </Tolerance>
                                       </LookupOnChange>
                                       <ADD LineNo="54" ColNo="65">
                                          <RealVariable>startime</RealVariable>
                                          <RealVariable>maxtime</RealVariable>
                                       </ADD>
                                    </GT>
                                 </StartCondition>
                                 <RepeatCondition>
                                    <GT>
                                       <LookupOnChange>
                                          <Name>
                                             <StringValue>time</StringValue>
                                          </Name>
                                          <Tolerance>
                                             <RealVariable>tolerance</RealVariable>
                                          </Tolerance>
                                       </LookupOnChange>
                                       <ADD LineNo="55" ColNo="66">
                                          <RealVariable>startime</RealVariable>
                                          <RealVariable>maxtime</RealVariable>
                                       </ADD>
                                    </GT>
                                 </RepeatCondition>
                                 <InvariantCondition>
                                    <NOT>
                                       <OR>
                                          <AND>
                                             <EQInternal>
                                                <NodeOutcomeVariable>
                                                   <NodeRef dir="child">ASSIGNMENT__7</NodeRef>
                                                </NodeOutcomeVariable>
                                                <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                             </EQInternal>
                                             <EQInternal>
                                                <NodeStateVariable>
                                                   <NodeRef dir="child">ASSIGNMENT__7</NodeRef>
                                                </NodeStateVariable>
                                                <NodeStateValue>FINISHED</NodeStateValue>
                                             </EQInternal>
                                          </AND>
                                          <AND>
                                             <EQInternal>
                                                <NodeOutcomeVariable>
                                                   <NodeRef dir="child">COMMAND__8</NodeRef>
                                                </NodeOutcomeVariable>
                                                <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                             </EQInternal>
                                             <EQInternal>
                                                <NodeStateVariable>
                                                   <NodeRef dir="child">COMMAND__8</NodeRef>
                                                </NodeStateVariable>
                                                <NodeStateValue>FINISHED</NodeStateValue>
                                             </EQInternal>
                                          </AND>
                                       </OR>
                                    </NOT>
                                 </InvariantCondition>
                                 <NodeBody>
                                    <NodeList>
                                       <Node NodeType="Assignment" LineNo="56" ColNo="16">
                                          <NodeId>ASSIGNMENT__7</NodeId>
                                          <NodeBody>
                                             <Assignment>
                                                <RealVariable>startime</RealVariable>
                                                <NumericRHS>
                                                   <LookupNow>
                                                      <Name>
                                                         <StringValue>time</StringValue>
                                                      </Name>
                                                   </LookupNow>
                                                </NumericRHS>
                                             </Assignment>
                                          </NodeBody>
                                       </Node>
                                       <Node NodeType="Command" LineNo="56" ColNo="16">
                                          <NodeId>COMMAND__8</NodeId>
                                          <StartCondition>
                                             <EQInternal>
                                                <NodeStateVariable>
                                                   <NodeRef dir="sibling">ASSIGNMENT__7</NodeRef>
                                                </NodeStateVariable>
                                                <NodeStateValue>FINISHED</NodeStateValue>
                                             </EQInternal>
                                          </StartCondition>
                                          <NodeBody>
                                             <Command>
                                                <Name>
                                                   <StringValue>pprint</StringValue>
                                                </Name>
                                                <Arguments LineNo="57" ColNo="24">
                                                   <StringValue>$$$$ TIMED EVENT</StringValue>
                                                </Arguments>
                                             </Command>
                                          </NodeBody>
                                       </Node>
                                    </NodeList>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="NodeList" epx="Sequence" LineNo="62" ColNo="16">
                                 <NodeId>TF</NodeId>
                                 <InvariantCondition>
                                    <NOT>
                                       <AND>
                                          <EQInternal>
                                             <NodeOutcomeVariable>
                                                <NodeRef dir="child">while__9</NodeRef>
                                             </NodeOutcomeVariable>
                                             <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                          </EQInternal>
                                          <EQInternal>
                                             <NodeStateVariable>
                                                <NodeRef dir="child">while__9</NodeRef>
                                             </NodeStateVariable>
                                             <NodeStateValue>FINISHED</NodeStateValue>
                                          </EQInternal>
                                       </AND>
                                    </NOT>
                                 </InvariantCondition>
                                 <NodeBody>
                                    <NodeList>
                                       <Node NodeType="NodeList" epx="While" LineNo="62" ColNo="16">
                                          <NodeId>while__9</NodeId>
                                          <RepeatCondition>
                                             <EQInternal>
                                                <NodeOutcomeVariable>
                                                   <NodeRef dir="child">ep2cp_WhileTest</NodeRef>
                                                </NodeOutcomeVariable>
                                                <NodeOutcomeValue>SUCCESS</NodeOutcomeValue>
                                             </EQInternal>
                                          </RepeatCondition>
                                          <NodeBody>
                                             <NodeList>
                                                <Node NodeType="Empty" epx="Condition">
                                                   <NodeId>ep2cp_WhileTest</NodeId>
                                                   <PostCondition>
                                                      <EQNumeric>
                                                         <LookupOnChange>
                                                            <Name>
                                                               <StringValue>PositionChanged</StringValue>
                                                            </Name>
                                                         </LookupOnChange>
                                                         <IntegerValue>1</IntegerValue>
                                                      </EQNumeric>
                                                   </PostCondition>
                                                </Node>
                                                <Node NodeType="NodeList" epx="Action" LineNo="63" ColNo="20">
                                                   <NodeId>BLOCK__10</NodeId>
                                                   <InvariantCondition>
                                                      <NOT>
                                                         <OR>
                                                            <AND>
                                                               <EQInternal>
                                                                  <NodeOutcomeVariable>
                                                                     <NodeRef dir="child">ASSIGNMENT__11</NodeRef>
                                                                  </NodeOutcomeVariable>
                                                                  <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                               </EQInternal>
                                                               <EQInternal>
                                                                  <NodeStateVariable>
                                                                     <NodeRef dir="child">ASSIGNMENT__11</NodeRef>
                                                                  </NodeStateVariable>
                                                                  <NodeStateValue>FINISHED</NodeStateValue>
                                                               </EQInternal>
                                                            </AND>
                                                            <AND>
                                                               <EQInternal>
                                                                  <NodeOutcomeVariable>
                                                                     <NodeRef dir="child">COMMAND__12</NodeRef>
                                                                  </NodeOutcomeVariable>
                                                                  <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                               </EQInternal>
                                                               <EQInternal>
                                                                  <NodeStateVariable>
                                                                     <NodeRef dir="child">COMMAND__12</NodeRef>
                                                                  </NodeStateVariable>
                                                                  <NodeStateValue>FINISHED</NodeStateValue>
                                                               </EQInternal>
                                                            </AND>
                                                         </OR>
                                                      </NOT>
                                                   </InvariantCondition>
                                                   <StartCondition>
                                                      <EQInternal>
                                                         <NodeOutcomeVariable>
                                                            <NodeRef dir="sibling">ep2cp_WhileTest</NodeRef>
                                                         </NodeOutcomeVariable>
                                                         <NodeOutcomeValue>SUCCESS</NodeOutcomeValue>
                                                      </EQInternal>
                                                   </StartCondition>
                                                   <SkipCondition>
                                                      <AND>
                                                         <EQInternal>
                                                            <NodeStateVariable>
                                                               <NodeRef dir="sibling">ep2cp_WhileTest</NodeRef>
                                                            </NodeStateVariable>
                                                            <NodeStateValue>FINISHED</NodeStateValue>
                                                         </EQInternal>
                                                         <EQInternal>
                                                            <NodeFailureVariable>
                                                               <NodeRef dir="sibling">ep2cp_WhileTest</NodeRef>
                                                            </NodeFailureVariable>
                                                            <NodeFailureValue>POST_CONDITION_FAILED</NodeFailureValue>
                                                         </EQInternal>
                                                      </AND>
                                                   </SkipCondition>
                                                   <NodeBody>
                                                      <NodeList>
                                                         <Node NodeType="Assignment" LineNo="63" ColNo="20">
                                                            <NodeId>ASSIGNMENT__11</NodeId>
                                                            <NodeBody>
                                                               <Assignment>
                                                                  <RealVariable>pi</RealVariable>
                                                                  <NumericRHS>
                                                                     <LookupNow>
                                                                        <Name>
                                                                           <StringValue>Latitude</StringValue>
                                                                        </Name>
                                                                     </LookupNow>
                                                                  </NumericRHS>
                                                               </Assignment>
                                                            </NodeBody>
                                                         </Node>
                                                         <Node NodeType="Command" LineNo="63" ColNo="20">
                                                            <NodeId>COMMAND__12</NodeId>
                                                            <StartCondition>
                                                               <EQInternal>
                                                                  <NodeStateVariable>
                                                                     <NodeRef dir="sibling">ASSIGNMENT__11</NodeRef>
                                                                  </NodeStateVariable>
                                                                  <NodeStateValue>FINISHED</NodeStateValue>
                                                               </EQInternal>
                                                            </StartCondition>
                                                            <NodeBody>
                                                               <Command>
                                                                  <Name>
                                                                     <StringValue>pprint</StringValue>
                                                                  </Name>
                                                                  <Arguments LineNo="64" ColNo="27">
                                                                     <StringValue>&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;</StringValue>
                                                                     <RealVariable>pi</RealVariable>
                                                                  </Arguments>
                                                               </Command>
                                                            </NodeBody>
                                                         </Node>
                                                      </NodeList>
                                                   </NodeBody>
                                                </Node>
                                             </NodeList>
                                          </NodeBody>
                                       </Node>
                                    </NodeList>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="NodeList" epx="Sequence" LineNo="74" ColNo="16">
                                 <NodeId>WHEELSTUCKLISTENER</NodeId>
                                 <StartCondition>
                                    <GE>
                                       <LookupOnChange>
                                          <Name>
                                             <StringValue>Latitude</StringValue>
                                          </Name>
                                       </LookupOnChange>
                                       <IntegerValue>10</IntegerValue>
                                    </GE>
                                 </StartCondition>
                                 <InvariantCondition>
                                    <NOT>
                                       <OR>
                                          <AND>
                                             <EQInternal>
                                                <NodeOutcomeVariable>
                                                   <NodeRef dir="child">COMMAND__13</NodeRef>
                                                </NodeOutcomeVariable>
                                                <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                             </EQInternal>
                                             <EQInternal>
                                                <NodeStateVariable>
                                                   <NodeRef dir="child">COMMAND__13</NodeRef>
                                                </NodeStateVariable>
                                                <NodeStateValue>FINISHED</NodeStateValue>
                                             </EQInternal>
                                          </AND>
                                          <AND>
                                             <EQInternal>
                                                <NodeOutcomeVariable>
                                                   <NodeRef dir="child">ASSIGNMENT__14</NodeRef>
                                                </NodeOutcomeVariable>
                                                <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                             </EQInternal>
                                             <EQInternal>
                                                <NodeStateVariable>
                                                   <NodeRef dir="child">ASSIGNMENT__14</NodeRef>
                                                </NodeStateVariable>
                                                <NodeStateValue>FINISHED</NodeStateValue>
                                             </EQInternal>
                                          </AND>
                                          <AND>
                                             <EQInternal>
                                                <NodeOutcomeVariable>
                                                   <NodeRef dir="child">COMMAND__15</NodeRef>
                                                </NodeOutcomeVariable>
                                                <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                             </EQInternal>
                                             <EQInternal>
                                                <NodeStateVariable>
                                                   <NodeRef dir="child">COMMAND__15</NodeRef>
                                                </NodeStateVariable>
                                                <NodeStateValue>FINISHED</NodeStateValue>
                                             </EQInternal>
                                          </AND>
                                       </OR>
                                    </NOT>
                                 </InvariantCondition>
                                 <NodeBody>
                                    <NodeList>
                                       <Node NodeType="Command" LineNo="74" ColNo="16">
                                          <NodeId>COMMAND__13</NodeId>
                                          <NodeBody>
                                             <Command>
                                                <Name>
                                                   <StringValue>pprint</StringValue>
                                                </Name>
                                                <Arguments LineNo="75" ColNo="24">
                                                   <StringValue>*************** GOT EVENT: WHEELSTUCK:</StringValue>
                                                </Arguments>
                                             </Command>
                                          </NodeBody>
                                       </Node>
                                       <Node NodeType="Assignment" LineNo="76" ColNo="16">
                                          <NodeId>ASSIGNMENT__14</NodeId>
                                          <StartCondition>
                                             <EQInternal>
                                                <NodeStateVariable>
                                                   <NodeRef dir="sibling">COMMAND__13</NodeRef>
                                                </NodeStateVariable>
                                                <NodeStateValue>FINISHED</NodeStateValue>
                                             </EQInternal>
                                          </StartCondition>
                                          <NodeBody>
                                             <Assignment>
                                                <RealVariable>pi</RealVariable>
                                                <NumericRHS>
                                                   <LookupNow>
                                                      <Name>
                                                         <StringValue>Latitude</StringValue>
                                                      </Name>
                                                   </LookupNow>
                                                </NumericRHS>
                                             </Assignment>
                                          </NodeBody>
                                       </Node>
                                       <Node NodeType="Command" LineNo="78" ColNo="16">
                                          <NodeId>COMMAND__15</NodeId>
                                          <StartCondition>
                                             <EQInternal>
                                                <NodeStateVariable>
                                                   <NodeRef dir="sibling">ASSIGNMENT__14</NodeRef>
                                                </NodeStateVariable>
                                                <NodeStateValue>FINISHED</NodeStateValue>
                                             </EQInternal>
                                          </StartCondition>
                                          <NodeBody>
                                             <Command>
                                                <Name>
                                                   <StringValue>StopEngine</StringValue>
                                                </Name>
                                             </Command>
                                          </NodeBody>
                                       </Node>
                                    </NodeList>
                                 </NodeBody>
                              </Node>
                           </NodeList>
                        </NodeBody>
                     </Node>
                  </NodeList>
               </NodeBody>
            </Node>
         </NodeList>
      </NodeBody>
   </Node>
</PlexilPlan>