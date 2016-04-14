<?xml version="1.0" encoding="UTF-8"?>
<PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xmlns:tr="extended-plexil-translator"
            FileName="PositionTracking.ple">
   <GlobalDeclarations LineNo="2" ColNo="5">
      <StateDeclaration LineNo="2" ColNo="5">
         <Name>time</Name>
         <Return>
            <Name>_return_0</Name>
            <Type>Date</Type>
         </Return>
      </StateDeclaration>
      <StateDeclaration LineNo="4" ColNo="8">
         <Name>PositionChanged</Name>
         <Return>
            <Name>_return_0</Name>
            <Type>Integer</Type>
         </Return>
      </StateDeclaration>
      <CommandDeclaration LineNo="7" ColNo="0">
         <Name>TurnFrontWheels</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="10" ColNo="0">
         <Name>TurnRearWheels</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="13" ColNo="0">
         <Name>MoveForward</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="16" ColNo="0">
         <Name>MoveBackward</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="19" ColNo="0">
         <Name>StopEngine</Name>
      </CommandDeclaration>
      <CommandDeclaration LineNo="21" ColNo="0">
         <Name>pprint</Name>
      </CommandDeclaration>
   </GlobalDeclarations>
   <Node NodeType="NodeList" epx="Sequence" LineNo="25" ColNo="4">
      <NodeId>CommandsTest</NodeId>
      <VariableDeclarations>
         <DeclareVariable LineNo="24" ColNo="4">
            <Name>pi</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>0</RealValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="25" ColNo="4">
            <Name>ct</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>0</RealValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="27" ColNo="4">
            <Name>startime</Name>
            <Type>Real</Type>
         </DeclareVariable>
         <DeclareVariable LineNo="28" ColNo="4">
            <Name>oneMeter</Name>
            <Type>Boolean</Type>
            <InitialValue>
               <BooleanValue>false</BooleanValue>
            </InitialValue>
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
                              <Node NodeType="Command" LineNo="46" ColNo="16">
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
                                 <NodeBody>
                                    <Command>
                                       <Name>
                                          <StringValue>pprint</StringValue>
                                       </Name>
                                       <Arguments LineNo="47" ColNo="23">
                                          <StringValue>&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;</StringValue>
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