<?xml version="1.0" encoding="UTF-8"?>
<PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xmlns:tr="extended-plexil-translator"
            FileName="TickEvent3.ple">
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
      <StateDeclaration LineNo="13" ColNo="5">
         <Name>time</Name>
         <Return>
            <Name>_return_0</Name>
            <Type>Date</Type>
         </Return>
      </StateDeclaration>
      <StateDeclaration LineNo="14" ColNo="5">
         <Name>start</Name>
         <Return>
            <Name>_return_0</Name>
            <Type>Date</Type>
         </Return>
      </StateDeclaration>
      <StateDeclaration LineNo="15" ColNo="9">
         <Name>duration</Name>
         <Return>
            <Name>_return_0</Name>
            <Type>Duration</Type>
         </Return>
      </StateDeclaration>
   </GlobalDeclarations>
   <Node NodeType="NodeList" epx="Sequence" LineNo="19" ColNo="4">
      <NodeId>Ex</NodeId>
      <VariableDeclarations>
         <DeclareVariable LineNo="18" ColNo="4">
            <Name>current_time</Name>
            <Type>Real</Type>
         </DeclareVariable>
         <DeclareVariable LineNo="19" ColNo="4">
            <Name>run_start_time</Name>
            <Type>Real</Type>
         </DeclareVariable>
         <DeclareVariable LineNo="20" ColNo="4">
            <Name>second_start_time</Name>
            <Type>Real</Type>
         </DeclareVariable>
         <DeclareVariable LineNo="21" ColNo="4">
            <Name>period</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>0.5</RealValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="22" ColNo="4">
            <Name>tolerance</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>1</RealValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="23" ColNo="4">
            <Name>elapsed_time</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>0</RealValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="24" ColNo="4">
            <Name>run_length</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>10</RealValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="25" ColNo="4">
            <Name>wait_period</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>10</RealValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="27" ColNo="4">
            <Name>iterationInterval</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>10</RealValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="29" ColNo="4">
            <Name>continue</Name>
            <Type>Boolean</Type>
            <InitialValue>
               <BooleanValue>true</BooleanValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="31" ColNo="4">
            <Name>loopMax</Name>
            <Type>Integer</Type>
            <InitialValue>
               <IntegerValue>100</IntegerValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="32" ColNo="4">
            <Name>loopCount</Name>
            <Type>Integer</Type>
            <InitialValue>
               <IntegerValue>0</IntegerValue>
            </InitialValue>
         </DeclareVariable>
      </VariableDeclarations>
      <InvariantCondition>
         <NOT>
            <AND>
               <EQInternal>
                  <NodeOutcomeVariable>
                     <NodeRef dir="child">Concurrence__0</NodeRef>
                  </NodeOutcomeVariable>
                  <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
               </EQInternal>
               <EQInternal>
                  <NodeStateVariable>
                     <NodeRef dir="child">Concurrence__0</NodeRef>
                  </NodeStateVariable>
                  <NodeStateValue>FINISHED</NodeStateValue>
               </EQInternal>
            </AND>
         </NOT>
      </InvariantCondition>
      <NodeBody>
         <NodeList>
            <Node NodeType="NodeList" epx="Concurrence" LineNo="36" ColNo="4">
               <NodeId>Concurrence__0</NodeId>
               <NodeBody>
                  <NodeList>
                     <Node NodeType="NodeList" epx="Sequence" LineNo="39" ColNo="12">
                        <NodeId>SetupTimes</NodeId>
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
                              <Node NodeType="Assignment" LineNo="39" ColNo="12">
                                 <NodeId>ASSIGNMENT__1</NodeId>
                                 <NodeBody>
                                    <Assignment>
                                       <RealVariable>run_start_time</RealVariable>
                                       <NumericRHS>
                                          <NodeTimepointValue>
                                             <NodeId>Ex</NodeId>
                                             <NodeStateValue>EXECUTING</NodeStateValue>
                                             <Timepoint>START</Timepoint>
                                          </NodeTimepointValue>
                                       </NumericRHS>
                                    </Assignment>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="Assignment" LineNo="40" ColNo="12">
                                 <NodeId>ASSIGNMENT__2</NodeId>
                                 <StartCondition>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="sibling">ASSIGNMENT__1</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </StartCondition>
                                 <NodeBody>
                                    <Assignment>
                                       <RealVariable>second_start_time</RealVariable>
                                       <NumericRHS>
                                          <ADD LineNo="40" ColNo="47">
                                             <RealVariable>run_start_time</RealVariable>
                                             <RealValue>30</RealValue>
                                          </ADD>
                                       </NumericRHS>
                                    </Assignment>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="Command" LineNo="40" ColNo="12">
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
                                       <Arguments LineNo="41" ColNo="20">
                                          <StringValue>run_start_time:</StringValue>
                                          <RealVariable>run_start_time</RealVariable>
                                       </Arguments>
                                    </Command>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="Command" LineNo="41" ColNo="12">
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
                                       <Arguments LineNo="42" ColNo="20">
                                          <StringValue>second_start_time:</StringValue>
                                          <RealVariable>second_start_time</RealVariable>
                                       </Arguments>
                                    </Command>
                                 </NodeBody>
                              </Node>
                           </NodeList>
                        </NodeBody>
                     </Node>
                     <Node NodeType="NodeList" epx="Sequence" LineNo="47" ColNo="12">
                        <NodeId>Delay2</NodeId>
                        <RepeatCondition>
                           <BooleanValue>true</BooleanValue>
                        </RepeatCondition>
                        <EndCondition>
                           <GE>
                              <LookupOnChange>
                                 <Name>
                                    <StringValue>time</StringValue>
                                 </Name>
                                 <Tolerance>
                                    <RealVariable>tolerance</RealVariable>
                                 </Tolerance>
                              </LookupOnChange>
                              <ADD LineNo="48" ColNo="75">
                                 <NodeTimepointValue>
                                    <NodeId>Delay2</NodeId>
                                    <NodeStateValue>EXECUTING</NodeStateValue>
                                    <Timepoint>START</Timepoint>
                                 </NodeTimepointValue>
                                 <RealVariable>iterationInterval</RealVariable>
                              </ADD>
                           </GE>
                        </EndCondition>
                        <InvariantCondition>
                           <NOT>
                              <OR>
                                 <AND>
                                    <EQInternal>
                                       <NodeOutcomeVariable>
                                          <NodeRef dir="child">ASSIGNMENT__5</NodeRef>
                                       </NodeOutcomeVariable>
                                       <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                    </EQInternal>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="child">ASSIGNMENT__5</NodeRef>
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
                              <Node NodeType="Assignment" LineNo="49" ColNo="12">
                                 <NodeId>ASSIGNMENT__5</NodeId>
                                 <NodeBody>
                                    <Assignment>
                                       <IntegerVariable>loopCount</IntegerVariable>
                                       <NumericRHS>
                                          <ADD LineNo="49" ColNo="31">
                                             <IntegerVariable>loopCount</IntegerVariable>
                                             <IntegerValue>1</IntegerValue>
                                          </ADD>
                                       </NumericRHS>
                                    </Assignment>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="Command" LineNo="50" ColNo="12">
                                 <NodeId>COMMAND__6</NodeId>
                                 <StartCondition>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="sibling">ASSIGNMENT__5</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </StartCondition>
                                 <NodeBody>
                                    <Command>
                                       <Name>
                                          <StringValue>pprint</StringValue>
                                       </Name>
                                       <Arguments LineNo="51" ColNo="20">
                                          <StringValue>start2</StringValue>
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
                     <Node NodeType="Command" LineNo="62" ColNo="12">
                        <NodeId>AfterDelay</NodeId>
                        <StartCondition>
                           <EQInternal>
                              <NodeStateVariable>
                                 <NodeId>Delay2</NodeId>
                              </NodeStateVariable>
                              <NodeStateValue>FINISHED</NodeStateValue>
                           </EQInternal>
                        </StartCondition>
                        <NodeBody>
                           <Command>
                              <Name>
                                 <StringValue>pprint</StringValue>
                              </Name>
                              <Arguments LineNo="63" ColNo="20">
                                 <StringValue>after delay</StringValue>
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
         </NodeList>
      </NodeBody>
   </Node>
</PlexilPlan>