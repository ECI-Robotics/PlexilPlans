<?xml version="1.0" encoding="UTF-8"?>
<PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xmlns:tr="extended-plexil-translator"
            FileName="TickEvent2.ple">
   <GlobalDeclarations LineNo="2" ColNo="0">
      <CommandDeclaration LineNo="2" ColNo="0">
         <Name>PlantSeed</Name>
      </CommandDeclaration>
      <CommandDeclaration LineNo="3" ColNo="0">
         <Name>TurnFrontWheelsRight</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="4" ColNo="0">
         <Name>TurnFrontWheelsLeft</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="5" ColNo="0">
         <Name>TurnRearWheelsRight</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="6" ColNo="0">
         <Name>TurnRearWheelsLeft</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="7" ColNo="0">
         <Name>MoveForward</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="8" ColNo="0">
         <Name>MoveBackward</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="9" ColNo="0">
         <Name>Stop</Name>
      </CommandDeclaration>
      <CommandDeclaration LineNo="10" ColNo="0">
         <Name>pprint</Name>
      </CommandDeclaration>
      <CommandDeclaration LineNo="11" ColNo="0">
         <Name>NativeSleep</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <StateDeclaration LineNo="12" ColNo="5">
         <Name>time</Name>
         <Return>
            <Name>_return_0</Name>
            <Type>Real</Type>
         </Return>
      </StateDeclaration>
   </GlobalDeclarations>
   <Node NodeType="NodeList" epx="Concurrence" LineNo="17" ColNo="4">
      <NodeId>EventsTest</NodeId>
      <VariableDeclarations>
         <DeclareVariable LineNo="17" ColNo="8">
            <Name>continue</Name>
            <Type>Boolean</Type>
            <InitialValue>
               <BooleanValue>true</BooleanValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="18" ColNo="8">
            <Name>tick</Name>
            <Type>Integer</Type>
            <InitialValue>
               <IntegerValue>0</IntegerValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="19" ColNo="8">
            <Name>vini</Name>
            <Type>Integer</Type>
            <InitialValue>
               <IntegerValue>0</IntegerValue>
            </InitialValue>
         </DeclareVariable>
      </VariableDeclarations>
      <NodeBody>
         <NodeList>
            <Node NodeType="Assignment" LineNo="22" ColNo="8">
               <NodeId>ASSIGNMENT__1</NodeId>
               <NodeBody>
                  <Assignment>
                     <IntegerVariable>vini</IntegerVariable>
                     <NumericRHS>
                        <LookupNow>
                           <Name>
                              <StringValue>ClockTick</StringValue>
                           </Name>
                        </LookupNow>
                     </NumericRHS>
                  </Assignment>
               </NodeBody>
            </Node>
            <Node NodeType="NodeList" epx="Sequence" LineNo="25" ColNo="12">
               <NodeId>TICK2</NodeId>
               <InvariantCondition>
                  <NOT>
                     <OR>
                        <AND>
                           <EQInternal>
                              <NodeOutcomeVariable>
                                 <NodeRef dir="child">TickListener</NodeRef>
                              </NodeOutcomeVariable>
                              <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                           </EQInternal>
                           <EQInternal>
                              <NodeStateVariable>
                                 <NodeRef dir="child">TickListener</NodeRef>
                              </NodeStateVariable>
                              <NodeStateValue>FINISHED</NodeStateValue>
                           </EQInternal>
                        </AND>
                        <AND>
                           <EQInternal>
                              <NodeOutcomeVariable>
                                 <NodeRef dir="child">while__5</NodeRef>
                              </NodeOutcomeVariable>
                              <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                           </EQInternal>
                           <EQInternal>
                              <NodeStateVariable>
                                 <NodeRef dir="child">while__5</NodeRef>
                              </NodeStateVariable>
                              <NodeStateValue>FINISHED</NodeStateValue>
                           </EQInternal>
                        </AND>
                     </OR>
                  </NOT>
               </InvariantCondition>
               <NodeBody>
                  <NodeList>
                     <Node NodeType="NodeList" epx="Sequence" LineNo="26" ColNo="16">
                        <NodeId>TickListener</NodeId>
                        <StartCondition>
                           <GT>
                              <LookupOnChange>
                                 <Name>
                                    <StringValue>ClockTick</StringValue>
                                 </Name>
                              </LookupOnChange>
                              <IntegerValue>0</IntegerValue>
                           </GT>
                        </StartCondition>
                        <RepeatCondition>
                           <LT>
                              <LookupOnChange>
                                 <Name>
                                    <StringValue>ClockTick</StringValue>
                                 </Name>
                              </LookupOnChange>
                              <IntegerValue>10</IntegerValue>
                           </LT>
                        </RepeatCondition>
                        <InvariantCondition>
                           <NOT>
                              <OR>
                                 <AND>
                                    <EQInternal>
                                       <NodeOutcomeVariable>
                                          <NodeRef dir="child">ASSIGNMENT__2</NodeRef>
                                       </NodeOutcomeVariable>
                                       <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                    </EQInternal>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="child">ASSIGNMENT__2</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </AND>
                                 <AND>
                                    <EQInternal>
                                       <NodeOutcomeVariable>
                                          <NodeRef dir="child">COMMAND__3</NodeRef>
                                       </NodeOutcomeVariable>
                                       <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                    </EQInternal>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="child">COMMAND__3</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </AND>
                                 <AND>
                                    <EQInternal>
                                       <NodeOutcomeVariable>
                                          <NodeRef dir="child">COMMAND__4</NodeRef>
                                       </NodeOutcomeVariable>
                                       <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                    </EQInternal>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="child">COMMAND__4</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </AND>
                              </OR>
                           </NOT>
                        </InvariantCondition>
                        <NodeBody>
                           <NodeList>
                              <Node NodeType="Assignment" LineNo="28" ColNo="16">
                                 <NodeId>ASSIGNMENT__2</NodeId>
                                 <NodeBody>
                                    <Assignment>
                                       <IntegerVariable>tick</IntegerVariable>
                                       <NumericRHS>
                                          <LookupNow>
                                             <Name>
                                                <StringValue>ClockTick</StringValue>
                                             </Name>
                                          </LookupNow>
                                       </NumericRHS>
                                    </Assignment>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="Command" LineNo="28" ColNo="16">
                                 <NodeId>COMMAND__3</NodeId>
                                 <StartCondition>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="sibling">ASSIGNMENT__2</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </StartCondition>
                                 <NodeBody>
                                    <Command>
                                       <Name>
                                          <StringValue>pprint</StringValue>
                                       </Name>
                                       <Arguments LineNo="29" ColNo="24">
                                          <StringValue>NEW </StringValue>
                                          <IntegerVariable>tick</IntegerVariable>
                                       </Arguments>
                                    </Command>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="Command" LineNo="29" ColNo="16">
                                 <NodeId>COMMAND__4</NodeId>
                                 <StartCondition>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="sibling">COMMAND__3</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </StartCondition>
                                 <NodeBody>
                                    <Command>
                                       <Name>
                                          <StringValue>pprint</StringValue>
                                       </Name>
                                       <Arguments LineNo="30" ColNo="24">
                                          <StringValue>Time: </StringValue>
                                          <LookupNow>
                                             <Name>
                                                <StringValue>time</StringValue>
                                             </Name>
                                          </LookupNow>
                                       </Arguments>
                                    </Command>
                                 </NodeBody>
                              </Node>
                           </NodeList>
                        </NodeBody>
                     </Node>
                     <Node NodeType="NodeList" epx="While" LineNo="33" ColNo="12">
                        <NodeId>while__5</NodeId>
                        <StartCondition>
                           <EQInternal>
                              <NodeStateVariable>
                                 <NodeRef dir="sibling">TickListener</NodeRef>
                              </NodeStateVariable>
                              <NodeStateValue>FINISHED</NodeStateValue>
                           </EQInternal>
                        </StartCondition>
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
                                    <LT>
                                       <IntegerVariable>tick</IntegerVariable>
                                       <IntegerValue>10</IntegerValue>
                                    </LT>
                                 </PostCondition>
                              </Node>
                              <Node NodeType="NodeList" epx="Action" LineNo="34" ColNo="16">
                                 <NodeId>BLOCK__6</NodeId>
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
                                       <Node NodeType="Assignment" LineNo="34" ColNo="16">
                                          <NodeId>ASSIGNMENT__7</NodeId>
                                          <NodeBody>
                                             <Assignment>
                                                <IntegerVariable>tick</IntegerVariable>
                                                <NumericRHS>
                                                   <LookupNow>
                                                      <Name>
                                                         <StringValue>ClockTick</StringValue>
                                                      </Name>
                                                   </LookupNow>
                                                </NumericRHS>
                                             </Assignment>
                                          </NodeBody>
                                       </Node>
                                       <Node NodeType="Command" LineNo="34" ColNo="16">
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
                                                <Arguments LineNo="35" ColNo="24">
                                                   <StringValue>Tick </StringValue>
                                                   <IntegerVariable>tick</IntegerVariable>
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
            <Node NodeType="Command" LineNo="40" ColNo="12">
               <NodeId>TICK1</NodeId>
               <NodeBody>
                  <Command>
                     <Name>
                        <StringValue>pprint</StringValue>
                     </Name>
                     <Arguments LineNo="41" ColNo="20">
                        <StringValue>Done </StringValue>
                     </Arguments>
                  </Command>
               </NodeBody>
            </Node>
         </NodeList>
      </NodeBody>
   </Node>
</PlexilPlan>