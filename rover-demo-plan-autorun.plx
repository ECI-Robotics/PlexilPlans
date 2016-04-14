<?xml version="1.0" encoding="UTF-8"?>
<PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xmlns:tr="extended-plexil-translator"
            FileName="rover-demo-plan-autorun.ple">
   <GlobalDeclarations LineNo="2" ColNo="5">
      <StateDeclaration LineNo="2" ColNo="5">
         <Name>time</Name>
         <Return>
            <Name>_return_0</Name>
            <Type>Date</Type>
         </Return>
      </StateDeclaration>
      <CommandDeclaration LineNo="3" ColNo="0">
         <Name>pprint</Name>
      </CommandDeclaration>
      <CommandDeclaration LineNo="7" ColNo="0">
         <Name>TurnFrontWheels</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="8" ColNo="0">
         <Name>TurnRearWheels</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="9" ColNo="0">
         <Name>MoveForward</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="10" ColNo="0">
         <Name>MoveBackward</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="11" ColNo="0">
         <Name>Stop</Name>
      </CommandDeclaration>
   </GlobalDeclarations>
   <Node NodeType="NodeList" epx="Sequence" LineNo="16" ColNo="4">
      <NodeId>CountIteration</NodeId>
      <VariableDeclarations>
         <DeclareVariable LineNo="15" ColNo="4">
            <Name>stepsCount</Name>
            <Type>Integer</Type>
            <InitialValue>
               <IntegerValue>0</IntegerValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="16" ColNo="4">
            <Name>continue</Name>
            <Type>Boolean</Type>
            <InitialValue>
               <BooleanValue>true</BooleanValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="17" ColNo="4">
            <Name>tickCont</Name>
            <Type>Boolean</Type>
            <InitialValue>
               <BooleanValue>true</BooleanValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="18" ColNo="4">
            <Name>abortedPlan</Name>
            <Type>Boolean</Type>
            <InitialValue>
               <BooleanValue>false</BooleanValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="19" ColNo="4">
            <Name>succeedPlan</Name>
            <Type>Boolean</Type>
            <InitialValue>
               <BooleanValue>false</BooleanValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="20" ColNo="4">
            <Name>delay</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>0.5</RealValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="21" ColNo="4">
            <Name>tolerance</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>0.1</RealValue>
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
            <Node NodeType="NodeList" epx="Concurrence" LineNo="27" ColNo="4">
               <NodeId>Concurrence__0</NodeId>
               <NodeBody>
                  <NodeList>
                     <Node NodeType="NodeList" epx="Sequence" LineNo="51" ColNo="16">
                        <NodeId>MainPlan</NodeId>
                        <InvariantCondition>
                           <NOT>
                              <AND>
                                 <EQInternal>
                                    <NodeOutcomeVariable>
                                       <NodeRef dir="child">Concurrence__1</NodeRef>
                                    </NodeOutcomeVariable>
                                    <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                 </EQInternal>
                                 <EQInternal>
                                    <NodeStateVariable>
                                       <NodeRef dir="child">Concurrence__1</NodeRef>
                                    </NodeStateVariable>
                                    <NodeStateValue>FINISHED</NodeStateValue>
                                 </EQInternal>
                              </AND>
                           </NOT>
                        </InvariantCondition>
                        <NodeBody>
                           <NodeList>
                              <Node NodeType="NodeList" epx="Concurrence" LineNo="44" ColNo="12">
                                 <NodeId>Concurrence__1</NodeId>
                                 <NodeBody>
                                    <NodeList>
                                       <Node NodeType="NodeList" epx="Sequence" LineNo="54" ColNo="20">
                                          <NodeId>planSequence</NodeId>
                                          <InvariantCondition>
                                             <NOT>
                                                <AND>
                                                   <EQInternal>
                                                      <NodeOutcomeVariable>
                                                         <NodeRef dir="child">Sequence__2</NodeRef>
                                                      </NodeOutcomeVariable>
                                                      <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                   </EQInternal>
                                                   <EQInternal>
                                                      <NodeStateVariable>
                                                         <NodeRef dir="child">Sequence__2</NodeRef>
                                                      </NodeStateVariable>
                                                      <NodeStateValue>FINISHED</NodeStateValue>
                                                   </EQInternal>
                                                </AND>
                                             </NOT>
                                          </InvariantCondition>
                                          <NodeBody>
                                             <NodeList>
                                                <Node NodeType="NodeList" epx="Sequence" LineNo="54" ColNo="20">
                                                   <NodeId>Sequence__2</NodeId>
                                                   <InvariantCondition>
                                                      <NOT>
                                                         <OR>
                                                            <AND>
                                                               <EQInternal>
                                                                  <NodeOutcomeVariable>
                                                                     <NodeRef dir="child">StepOne</NodeRef>
                                                                  </NodeOutcomeVariable>
                                                                  <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                               </EQInternal>
                                                               <EQInternal>
                                                                  <NodeStateVariable>
                                                                     <NodeRef dir="child">StepOne</NodeRef>
                                                                  </NodeStateVariable>
                                                                  <NodeStateValue>FINISHED</NodeStateValue>
                                                               </EQInternal>
                                                            </AND>
                                                            <AND>
                                                               <EQInternal>
                                                                  <NodeOutcomeVariable>
                                                                     <NodeRef dir="child">StepTwo</NodeRef>
                                                                  </NodeOutcomeVariable>
                                                                  <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                               </EQInternal>
                                                               <EQInternal>
                                                                  <NodeStateVariable>
                                                                     <NodeRef dir="child">StepTwo</NodeRef>
                                                                  </NodeStateVariable>
                                                                  <NodeStateValue>FINISHED</NodeStateValue>
                                                               </EQInternal>
                                                            </AND>
                                                            <AND>
                                                               <EQInternal>
                                                                  <NodeOutcomeVariable>
                                                                     <NodeRef dir="child">StepThree</NodeRef>
                                                                  </NodeOutcomeVariable>
                                                                  <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                               </EQInternal>
                                                               <EQInternal>
                                                                  <NodeStateVariable>
                                                                     <NodeRef dir="child">StepThree</NodeRef>
                                                                  </NodeStateVariable>
                                                                  <NodeStateValue>FINISHED</NodeStateValue>
                                                               </EQInternal>
                                                            </AND>
                                                            <AND>
                                                               <EQInternal>
                                                                  <NodeOutcomeVariable>
                                                                     <NodeRef dir="child">StepFour</NodeRef>
                                                                  </NodeOutcomeVariable>
                                                                  <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                               </EQInternal>
                                                               <EQInternal>
                                                                  <NodeStateVariable>
                                                                     <NodeRef dir="child">StepFour</NodeRef>
                                                                  </NodeStateVariable>
                                                                  <NodeStateValue>FINISHED</NodeStateValue>
                                                               </EQInternal>
                                                            </AND>
                                                         </OR>
                                                      </NOT>
                                                   </InvariantCondition>
                                                   <NodeBody>
                                                      <NodeList>
                                                         <Node NodeType="NodeList" epx="Sequence" LineNo="57" ColNo="28">
                                                            <NodeId>StepOne</NodeId>
                                                            <InvariantCondition>
                                                               <NOT>
                                                                  <OR>
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
                                                                              <NodeRef dir="child">WaitABit</NodeRef>
                                                                           </NodeOutcomeVariable>
                                                                           <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                                        </EQInternal>
                                                                        <EQInternal>
                                                                           <NodeStateVariable>
                                                                              <NodeRef dir="child">WaitABit</NodeRef>
                                                                           </NodeStateVariable>
                                                                           <NodeStateValue>FINISHED</NodeStateValue>
                                                                        </EQInternal>
                                                                     </AND>
                                                                  </OR>
                                                               </NOT>
                                                            </InvariantCondition>
                                                            <NodeBody>
                                                               <NodeList>
                                                                  <Node NodeType="Command" LineNo="56" ColNo="28">
                                                                     <NodeId>COMMAND__3</NodeId>
                                                                     <NodeBody>
                                                                        <Command>
                                                                           <Name>
                                                                              <StringValue>pprint</StringValue>
                                                                           </Name>
                                                                           <Arguments LineNo="57" ColNo="36">
                                                                              <StringValue>Driving forward for 5 seconds.</StringValue>
                                                                           </Arguments>
                                                                        </Command>
                                                                     </NodeBody>
                                                                  </Node>
                                                                  <Node NodeType="NodeList" epx="Sequence" LineNo="60" ColNo="32">
                                                                     <NodeId>WaitABit</NodeId>
                                                                     <StartCondition>
                                                                        <EQInternal>
                                                                           <NodeStateVariable>
                                                                              <NodeRef dir="sibling">COMMAND__3</NodeRef>
                                                                           </NodeStateVariable>
                                                                           <NodeStateValue>FINISHED</NodeStateValue>
                                                                        </EQInternal>
                                                                     </StartCondition>
                                                                     <InvariantCondition>
                                                                        <NOT>
                                                                           <AND>
                                                                              <EQInternal>
                                                                                 <NodeOutcomeVariable>
                                                                                    <NodeRef dir="child">Wait__4</NodeRef>
                                                                                 </NodeOutcomeVariable>
                                                                                 <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                                              </EQInternal>
                                                                              <EQInternal>
                                                                                 <NodeStateVariable>
                                                                                    <NodeRef dir="child">Wait__4</NodeRef>
                                                                                 </NodeStateVariable>
                                                                                 <NodeStateValue>FINISHED</NodeStateValue>
                                                                              </EQInternal>
                                                                           </AND>
                                                                        </NOT>
                                                                     </InvariantCondition>
                                                                     <NodeBody>
                                                                        <NodeList>
                                                                           <Node NodeType="Empty" epx="Wait" LineNo="60" ColNo="32">
                                                                              <NodeId>Wait__4</NodeId>
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
                                                                                    <ADD>
                                                                                       <MUL LineNo="60" ColNo="43">
                                                                                          <RealVariable>delay</RealVariable>
                                                                                          <IntegerValue>10</IntegerValue>
                                                                                       </MUL>
                                                                                       <NodeTimepointValue>
                                                                                          <NodeId>Wait__4</NodeId>
                                                                                          <NodeStateValue>EXECUTING</NodeStateValue>
                                                                                          <Timepoint>START</Timepoint>
                                                                                       </NodeTimepointValue>
                                                                                    </ADD>
                                                                                 </GE>
                                                                              </EndCondition>
                                                                           </Node>
                                                                        </NodeList>
                                                                     </NodeBody>
                                                                  </Node>
                                                               </NodeList>
                                                            </NodeBody>
                                                         </Node>
                                                         <Node NodeType="NodeList" epx="Sequence" LineNo="64" ColNo="28">
                                                            <NodeId>StepTwo</NodeId>
                                                            <StartCondition>
                                                               <EQInternal>
                                                                  <NodeStateVariable>
                                                                     <NodeRef dir="sibling">StepOne</NodeRef>
                                                                  </NodeStateVariable>
                                                                  <NodeStateValue>FINISHED</NodeStateValue>
                                                               </EQInternal>
                                                            </StartCondition>
                                                            <InvariantCondition>
                                                               <NOT>
                                                                  <OR>
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
                                                                              <NodeRef dir="child">WaitABit</NodeRef>
                                                                           </NodeOutcomeVariable>
                                                                           <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                                        </EQInternal>
                                                                        <EQInternal>
                                                                           <NodeStateVariable>
                                                                              <NodeRef dir="child">WaitABit</NodeRef>
                                                                           </NodeStateVariable>
                                                                           <NodeStateValue>FINISHED</NodeStateValue>
                                                                        </EQInternal>
                                                                     </AND>
                                                                  </OR>
                                                               </NOT>
                                                            </InvariantCondition>
                                                            <NodeBody>
                                                               <NodeList>
                                                                  <Node NodeType="Command" LineNo="63" ColNo="28">
                                                                     <NodeId>COMMAND__5</NodeId>
                                                                     <NodeBody>
                                                                        <Command>
                                                                           <Name>
                                                                              <StringValue>pprint</StringValue>
                                                                           </Name>
                                                                           <Arguments LineNo="64" ColNo="36">
                                                                              <StringValue>Turning front wheels 30 degrees and continue for 2 seconds.</StringValue>
                                                                           </Arguments>
                                                                        </Command>
                                                                     </NodeBody>
                                                                  </Node>
                                                                  <Node NodeType="NodeList" epx="Sequence" LineNo="67" ColNo="32">
                                                                     <NodeId>WaitABit</NodeId>
                                                                     <StartCondition>
                                                                        <EQInternal>
                                                                           <NodeStateVariable>
                                                                              <NodeRef dir="sibling">COMMAND__5</NodeRef>
                                                                           </NodeStateVariable>
                                                                           <NodeStateValue>FINISHED</NodeStateValue>
                                                                        </EQInternal>
                                                                     </StartCondition>
                                                                     <InvariantCondition>
                                                                        <NOT>
                                                                           <AND>
                                                                              <EQInternal>
                                                                                 <NodeOutcomeVariable>
                                                                                    <NodeRef dir="child">Wait__6</NodeRef>
                                                                                 </NodeOutcomeVariable>
                                                                                 <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                                              </EQInternal>
                                                                              <EQInternal>
                                                                                 <NodeStateVariable>
                                                                                    <NodeRef dir="child">Wait__6</NodeRef>
                                                                                 </NodeStateVariable>
                                                                                 <NodeStateValue>FINISHED</NodeStateValue>
                                                                              </EQInternal>
                                                                           </AND>
                                                                        </NOT>
                                                                     </InvariantCondition>
                                                                     <NodeBody>
                                                                        <NodeList>
                                                                           <Node NodeType="Empty" epx="Wait" LineNo="67" ColNo="32">
                                                                              <NodeId>Wait__6</NodeId>
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
                                                                                    <ADD>
                                                                                       <MUL LineNo="67" ColNo="43">
                                                                                          <RealVariable>delay</RealVariable>
                                                                                          <IntegerValue>4</IntegerValue>
                                                                                       </MUL>
                                                                                       <NodeTimepointValue>
                                                                                          <NodeId>Wait__6</NodeId>
                                                                                          <NodeStateValue>EXECUTING</NodeStateValue>
                                                                                          <Timepoint>START</Timepoint>
                                                                                       </NodeTimepointValue>
                                                                                    </ADD>
                                                                                 </GE>
                                                                              </EndCondition>
                                                                           </Node>
                                                                        </NodeList>
                                                                     </NodeBody>
                                                                  </Node>
                                                               </NodeList>
                                                            </NodeBody>
                                                         </Node>
                                                         <Node NodeType="NodeList" epx="Sequence" LineNo="71" ColNo="28">
                                                            <NodeId>StepThree</NodeId>
                                                            <StartCondition>
                                                               <EQInternal>
                                                                  <NodeStateVariable>
                                                                     <NodeRef dir="sibling">StepTwo</NodeRef>
                                                                  </NodeStateVariable>
                                                                  <NodeStateValue>FINISHED</NodeStateValue>
                                                               </EQInternal>
                                                            </StartCondition>
                                                            <InvariantCondition>
                                                               <NOT>
                                                                  <OR>
                                                                     <AND>
                                                                        <EQInternal>
                                                                           <NodeOutcomeVariable>
                                                                              <NodeRef dir="child">COMMAND__7</NodeRef>
                                                                           </NodeOutcomeVariable>
                                                                           <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                                        </EQInternal>
                                                                        <EQInternal>
                                                                           <NodeStateVariable>
                                                                              <NodeRef dir="child">COMMAND__7</NodeRef>
                                                                           </NodeStateVariable>
                                                                           <NodeStateValue>FINISHED</NodeStateValue>
                                                                        </EQInternal>
                                                                     </AND>
                                                                     <AND>
                                                                        <EQInternal>
                                                                           <NodeOutcomeVariable>
                                                                              <NodeRef dir="child">WaitABit</NodeRef>
                                                                           </NodeOutcomeVariable>
                                                                           <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                                        </EQInternal>
                                                                        <EQInternal>
                                                                           <NodeStateVariable>
                                                                              <NodeRef dir="child">WaitABit</NodeRef>
                                                                           </NodeStateVariable>
                                                                           <NodeStateValue>FINISHED</NodeStateValue>
                                                                        </EQInternal>
                                                                     </AND>
                                                                  </OR>
                                                               </NOT>
                                                            </InvariantCondition>
                                                            <NodeBody>
                                                               <NodeList>
                                                                  <Node NodeType="Command" LineNo="70" ColNo="28">
                                                                     <NodeId>COMMAND__7</NodeId>
                                                                     <NodeBody>
                                                                        <Command>
                                                                           <Name>
                                                                              <StringValue>pprint</StringValue>
                                                                           </Name>
                                                                           <Arguments LineNo="71" ColNo="36">
                                                                              <StringValue>Return front wheels to 0 degrees, and keep driving for 3 seconds.</StringValue>
                                                                           </Arguments>
                                                                        </Command>
                                                                     </NodeBody>
                                                                  </Node>
                                                                  <Node NodeType="NodeList" epx="Sequence" LineNo="73" ColNo="32">
                                                                     <NodeId>WaitABit</NodeId>
                                                                     <StartCondition>
                                                                        <EQInternal>
                                                                           <NodeStateVariable>
                                                                              <NodeRef dir="sibling">COMMAND__7</NodeRef>
                                                                           </NodeStateVariable>
                                                                           <NodeStateValue>FINISHED</NodeStateValue>
                                                                        </EQInternal>
                                                                     </StartCondition>
                                                                     <InvariantCondition>
                                                                        <NOT>
                                                                           <AND>
                                                                              <EQInternal>
                                                                                 <NodeOutcomeVariable>
                                                                                    <NodeRef dir="child">Wait__8</NodeRef>
                                                                                 </NodeOutcomeVariable>
                                                                                 <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                                              </EQInternal>
                                                                              <EQInternal>
                                                                                 <NodeStateVariable>
                                                                                    <NodeRef dir="child">Wait__8</NodeRef>
                                                                                 </NodeStateVariable>
                                                                                 <NodeStateValue>FINISHED</NodeStateValue>
                                                                              </EQInternal>
                                                                           </AND>
                                                                        </NOT>
                                                                     </InvariantCondition>
                                                                     <NodeBody>
                                                                        <NodeList>
                                                                           <Node NodeType="Empty" epx="Wait" LineNo="73" ColNo="32">
                                                                              <NodeId>Wait__8</NodeId>
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
                                                                                    <ADD>
                                                                                       <MUL LineNo="73" ColNo="43">
                                                                                          <RealVariable>delay</RealVariable>
                                                                                          <IntegerValue>6</IntegerValue>
                                                                                       </MUL>
                                                                                       <NodeTimepointValue>
                                                                                          <NodeId>Wait__8</NodeId>
                                                                                          <NodeStateValue>EXECUTING</NodeStateValue>
                                                                                          <Timepoint>START</Timepoint>
                                                                                       </NodeTimepointValue>
                                                                                    </ADD>
                                                                                 </GE>
                                                                              </EndCondition>
                                                                           </Node>
                                                                        </NodeList>
                                                                     </NodeBody>
                                                                  </Node>
                                                               </NodeList>
                                                            </NodeBody>
                                                         </Node>
                                                         <Node NodeType="NodeList" epx="Sequence" LineNo="77" ColNo="28">
                                                            <NodeId>StepFour</NodeId>
                                                            <StartCondition>
                                                               <EQInternal>
                                                                  <NodeStateVariable>
                                                                     <NodeRef dir="sibling">StepThree</NodeRef>
                                                                  </NodeStateVariable>
                                                                  <NodeStateValue>FINISHED</NodeStateValue>
                                                               </EQInternal>
                                                            </StartCondition>
                                                            <InvariantCondition>
                                                               <NOT>
                                                                  <OR>
                                                                     <AND>
                                                                        <EQInternal>
                                                                           <NodeOutcomeVariable>
                                                                              <NodeRef dir="child">COMMAND__9</NodeRef>
                                                                           </NodeOutcomeVariable>
                                                                           <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                                        </EQInternal>
                                                                        <EQInternal>
                                                                           <NodeStateVariable>
                                                                              <NodeRef dir="child">COMMAND__9</NodeRef>
                                                                           </NodeStateVariable>
                                                                           <NodeStateValue>FINISHED</NodeStateValue>
                                                                        </EQInternal>
                                                                     </AND>
                                                                     <AND>
                                                                        <EQInternal>
                                                                           <NodeOutcomeVariable>
                                                                              <NodeRef dir="child">COMMAND__10</NodeRef>
                                                                           </NodeOutcomeVariable>
                                                                           <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                                        </EQInternal>
                                                                        <EQInternal>
                                                                           <NodeStateVariable>
                                                                              <NodeRef dir="child">COMMAND__10</NodeRef>
                                                                           </NodeStateVariable>
                                                                           <NodeStateValue>FINISHED</NodeStateValue>
                                                                        </EQInternal>
                                                                     </AND>
                                                                  </OR>
                                                               </NOT>
                                                            </InvariantCondition>
                                                            <NodeBody>
                                                               <NodeList>
                                                                  <Node NodeType="Command" LineNo="76" ColNo="28">
                                                                     <NodeId>COMMAND__9</NodeId>
                                                                     <NodeBody>
                                                                        <Command>
                                                                           <Name>
                                                                              <StringValue>pprint</StringValue>
                                                                           </Name>
                                                                           <Arguments LineNo="77" ColNo="36">
                                                                              <StringValue>Stop.</StringValue>
                                                                           </Arguments>
                                                                        </Command>
                                                                     </NodeBody>
                                                                  </Node>
                                                                  <Node NodeType="Command" LineNo="77" ColNo="28">
                                                                     <NodeId>COMMAND__10</NodeId>
                                                                     <StartCondition>
                                                                        <EQInternal>
                                                                           <NodeStateVariable>
                                                                              <NodeRef dir="sibling">COMMAND__9</NodeRef>
                                                                           </NodeStateVariable>
                                                                           <NodeStateValue>FINISHED</NodeStateValue>
                                                                        </EQInternal>
                                                                     </StartCondition>
                                                                     <NodeBody>
                                                                        <Command>
                                                                           <Name>
                                                                              <StringValue>Stop</StringValue>
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