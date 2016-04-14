<?xml version="1.0" encoding="UTF-8"?>
<PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xmlns:tr="extended-plexil-translator"
            FileName="TickEvent.ple">
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
   </GlobalDeclarations>
   <Node NodeType="NodeList" epx="Sequence" LineNo="15" ColNo="1">
      <NodeId>EventsTest</NodeId>
      <VariableDeclarations>
         <DeclareVariable LineNo="14" ColNo="1">
            <Name>tick</Name>
            <Type>Integer</Type>
            <InitialValue>
               <IntegerValue>0</IntegerValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="15" ColNo="4">
            <Name>continue</Name>
            <Type>Boolean</Type>
            <InitialValue>
               <BooleanValue>true</BooleanValue>
            </InitialValue>
         </DeclareVariable>
      </VariableDeclarations>
      <InvariantCondition>
         <NOT>
            <AND>
               <EQInternal>
                  <NodeOutcomeVariable>
                     <NodeRef dir="child">TICK2</NodeRef>
                  </NodeOutcomeVariable>
                  <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
               </EQInternal>
               <EQInternal>
                  <NodeStateVariable>
                     <NodeRef dir="child">TICK2</NodeRef>
                  </NodeStateVariable>
                  <NodeStateValue>FINISHED</NodeStateValue>
               </EQInternal>
            </AND>
         </NOT>
      </InvariantCondition>
      <NodeBody>
         <NodeList>
            <Node NodeType="NodeList" epx="Sequence" LineNo="20" ColNo="8">
               <NodeId>TICK2</NodeId>
               <RepeatCondition>
                  <BooleanVariable>continue</BooleanVariable>
               </RepeatCondition>
               <InvariantCondition>
                  <NOT>
                     <OR>
                        <AND>
                           <EQInternal>
                              <NodeOutcomeVariable>
                                 <NodeRef dir="child">ASSIGNMENT__0</NodeRef>
                              </NodeOutcomeVariable>
                              <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                           </EQInternal>
                           <EQInternal>
                              <NodeStateVariable>
                                 <NodeRef dir="child">ASSIGNMENT__0</NodeRef>
                              </NodeStateVariable>
                              <NodeStateValue>FINISHED</NodeStateValue>
                           </EQInternal>
                        </AND>
                        <AND>
                           <EQInternal>
                              <NodeOutcomeVariable>
                                 <NodeRef dir="child">ConditionallyEndIteration</NodeRef>
                              </NodeOutcomeVariable>
                              <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                           </EQInternal>
                           <EQInternal>
                              <NodeStateVariable>
                                 <NodeRef dir="child">ConditionallyEndIteration</NodeRef>
                              </NodeStateVariable>
                              <NodeStateValue>FINISHED</NodeStateValue>
                           </EQInternal>
                        </AND>
                     </OR>
                  </NOT>
               </InvariantCondition>
               <NodeBody>
                  <NodeList>
                     <Node NodeType="Assignment" LineNo="21" ColNo="8">
                        <NodeId>ASSIGNMENT__0</NodeId>
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
                     <Node NodeType="NodeList" epx="Sequence" LineNo="25" ColNo="12">
                        <NodeId>ConditionallyEndIteration</NodeId>
                        <StartCondition>
                           <EQInternal>
                              <NodeStateVariable>
                                 <NodeRef dir="sibling">ASSIGNMENT__0</NodeRef>
                              </NodeStateVariable>
                              <NodeStateValue>FINISHED</NodeStateValue>
                           </EQInternal>
                        </StartCondition>
                        <SkipCondition>
                           <AND>
                              <EQInternal>
                                 <NodeStateVariable>
                                    <NodeRef dir="sibling">ASSIGNMENT__0</NodeRef>
                                 </NodeStateVariable>
                                 <NodeStateValue>FINISHED</NodeStateValue>
                              </EQInternal>
                              <LT>
                                 <IntegerVariable>tick</IntegerVariable>
                                 <IntegerValue>10</IntegerValue>
                              </LT>
                           </AND>
                        </SkipCondition>
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
                              <Node NodeType="Assignment" LineNo="26" ColNo="12">
                                 <NodeId>ASSIGNMENT__1</NodeId>
                                 <NodeBody>
                                    <Assignment>
                                       <BooleanVariable>continue</BooleanVariable>
                                       <BooleanRHS>
                                          <BooleanValue>false</BooleanValue>
                                       </BooleanRHS>
                                    </Assignment>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="Command" LineNo="26" ColNo="12">
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
                                       <Arguments LineNo="27" ColNo="20">
                                          <StringValue>Ending periodic iteration with tick=</StringValue>
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
</PlexilPlan>