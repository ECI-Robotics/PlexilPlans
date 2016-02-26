<?xml version="1.0" encoding="UTF-8"?>
<PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xmlns:tr="extended-plexil-translator"
            FileName="eci-robotics-plans/rover-demo-plan.ple">
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
      <CommandDeclaration LineNo="4" ColNo="0">
         <Name>Sleep</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="5" ColNo="0">
         <Name>Stop</Name>
      </CommandDeclaration>
      <StateDeclaration LineNo="6" ColNo="8">
         <Name>StartRequested</Name>
         <Return>
            <Name>_return_0</Name>
            <Type>Integer</Type>
         </Return>
      </StateDeclaration>
      <StateDeclaration LineNo="7" ColNo="8">
         <Name>AbortRequested</Name>
         <Return>
            <Name>_return_0</Name>
            <Type>Integer</Type>
         </Return>
      </StateDeclaration>
   </GlobalDeclarations>
   <Node NodeType="NodeList" epx="Sequence" LineNo="13" ColNo="4">
      <NodeId>CountIteration</NodeId>
      <VariableDeclarations>
         <DeclareVariable LineNo="12" ColNo="4">
            <Name>stepsCount</Name>
            <Type>Integer</Type>
            <InitialValue>
               <IntegerValue>0</IntegerValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="13" ColNo="4">
            <Name>continue</Name>
            <Type>Boolean</Type>
            <InitialValue>
               <BooleanValue>true</BooleanValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="14" ColNo="4">
            <Name>tickCont</Name>
            <Type>Boolean</Type>
            <InitialValue>
               <BooleanValue>true</BooleanValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="15" ColNo="4">
            <Name>abortedPlan</Name>
            <Type>Boolean</Type>
            <InitialValue>
               <BooleanValue>false</BooleanValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="16" ColNo="4">
            <Name>succeedPlan</Name>
            <Type>Boolean</Type>
            <InitialValue>
               <BooleanValue>false</BooleanValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="17" ColNo="4">
            <Name>delay</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>0.5</RealValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="18" ColNo="4">
            <Name>tolerance</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>0.1</RealValue>
            </InitialValue>
         </DeclareVariable>
      </VariableDeclarations>
      <StartCondition>
         <EQNumeric>
            <LookupOnChange>
               <Name>
                  <StringValue>StartRequested</StringValue>
               </Name>
            </LookupOnChange>
            <IntegerValue>1</IntegerValue>
         </EQNumeric>
      </StartCondition>
      <EndCondition>
         <OR>
            <BooleanVariable>abortedPlan</BooleanVariable>
            <BooleanVariable>succeedPlan</BooleanVariable>
         </OR>
      </EndCondition>
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
            <Node NodeType="NodeList" epx="Concurrence" LineNo="26" ColNo="4">
               <NodeId>Concurrence__0</NodeId>
               <NodeBody>
                  <NodeList>
                     <Node NodeType="NodeList" epx="Sequence" LineNo="28" ColNo="12">
                        <NodeId>AbortedPlanHandler</NodeId>
                        <StartCondition>
                           <EQNumeric>
                              <LookupOnChange>
                                 <Name>
                                    <StringValue>AbortRequested</StringValue>
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
                                          <NodeRef dir="child">COMMAND__1</NodeRef>
                                       </NodeOutcomeVariable>
                                       <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                    </EQInternal>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="child">COMMAND__1</NodeRef>
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
                                 <AND>
                                    <EQInternal>
                                       <NodeOutcomeVariable>
                                          <NodeRef dir="child">ASSIGNMENT__3</NodeRef>
                                       </NodeOutcomeVariable>
                                       <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                    </EQInternal>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="child">ASSIGNMENT__3</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </AND>
                              </OR>
                           </NOT>
                        </InvariantCondition>
                        <NodeBody>
                           <NodeList>
                              <Node NodeType="Command" LineNo="28" ColNo="12">
                                 <NodeId>COMMAND__1</NodeId>
                                 <NodeBody>
                                    <Command>
                                       <Name>
                                          <StringValue>pprint</StringValue>
                                       </Name>
                                       <Arguments LineNo="29" ColNo="20">
                                          <StringValue>Plan abortion requested.</StringValue>
                                       </Arguments>
                                    </Command>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="Command" LineNo="29" ColNo="12">
                                 <NodeId>COMMAND__2</NodeId>
                                 <StartCondition>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="sibling">COMMAND__1</NodeRef>
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
                              <Node NodeType="Assignment" LineNo="31" ColNo="12">
                                 <NodeId>ASSIGNMENT__3</NodeId>
                                 <StartCondition>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="sibling">COMMAND__2</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </StartCondition>
                                 <NodeBody>
                                    <Assignment>
                                       <BooleanVariable>abortedPlan</BooleanVariable>
                                       <BooleanRHS>
                                          <BooleanValue>true</BooleanValue>
                                       </BooleanRHS>
                                    </Assignment>
                                 </NodeBody>
                              </Node>
                           </NodeList>
                        </NodeBody>
                     </Node>
                     <Node NodeType="NodeList" epx="Sequence" LineNo="35" ColNo="12">
                        <NodeId>PlanSuccessHandler</NodeId>
                        <StartCondition>
                           <AND>
                              <EQInternal>
                                 <NodeStateVariable>
                                    <NodeId>MainPlan</NodeId>
                                 </NodeStateVariable>
                                 <NodeStateValue>FINISHED</NodeStateValue>
                              </EQInternal>
                              <EQInternal>
                                 <NodeOutcomeVariable>
                                    <NodeId>MainPlan</NodeId>
                                 </NodeOutcomeVariable>
                                 <NodeOutcomeValue>SUCCESS</NodeOutcomeValue>
                              </EQInternal>
                           </AND>
                        </StartCondition>
                        <InvariantCondition>
                           <NOT>
                              <OR>
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
                              </OR>
                           </NOT>
                        </InvariantCondition>
                        <NodeBody>
                           <NodeList>
                              <Node NodeType="Command" LineNo="35" ColNo="12">
                                 <NodeId>COMMAND__4</NodeId>
                                 <NodeBody>
                                    <Command>
                                       <Name>
                                          <StringValue>pprint</StringValue>
                                       </Name>
                                       <Arguments LineNo="36" ColNo="20">
                                          <StringValue>Plan success!.</StringValue>
                                       </Arguments>
                                    </Command>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="Assignment" LineNo="37" ColNo="12">
                                 <NodeId>ASSIGNMENT__5</NodeId>
                                 <StartCondition>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="sibling">COMMAND__4</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </StartCondition>
                                 <NodeBody>
                                    <Assignment>
                                       <BooleanVariable>succeedPlan</BooleanVariable>
                                       <BooleanRHS>
                                          <BooleanValue>true</BooleanValue>
                                       </BooleanRHS>
                                    </Assignment>
                                 </NodeBody>
                              </Node>
                           </NodeList>
                        </NodeBody>
                     </Node>
                     <Node NodeType="NodeList" epx="Sequence" LineNo="42" ColNo="12">
                        <NodeId>MainPlan</NodeId>
                        <InvariantCondition>
                           <NOT>
                              <AND>
                                 <EQInternal>
                                    <NodeOutcomeVariable>
                                       <NodeRef dir="child">Concurrence__6</NodeRef>
                                    </NodeOutcomeVariable>
                                    <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                 </EQInternal>
                                 <EQInternal>
                                    <NodeStateVariable>
                                       <NodeRef dir="child">Concurrence__6</NodeRef>
                                    </NodeStateVariable>
                                    <NodeStateValue>FINISHED</NodeStateValue>
                                 </EQInternal>
                              </AND>
                           </NOT>
                        </InvariantCondition>
                        <NodeBody>
                           <NodeList>
                              <Node NodeType="NodeList" epx="Concurrence" LineNo="42" ColNo="12">
                                 <NodeId>Concurrence__6</NodeId>
                                 <NodeBody>
                                    <NodeList>
                                       <Node NodeType="Command" LineNo="45" ColNo="20">
                                          <NodeId>obstacleCheck</NodeId>
                                          <StartCondition>
                                             <EQInternal>
                                                <NodeStateVariable>
                                                   <NodeId>periodicIteration</NodeId>
                                                </NodeStateVariable>
                                                <NodeStateValue>FINISHED</NodeStateValue>
                                             </EQInternal>
                                          </StartCondition>
                                          <NodeBody>
                                             <Command>
                                                <Name>
                                                   <StringValue>pprint</StringValue>
                                                </Name>
                                                <Arguments LineNo="46" ColNo="28">
                                                   <StringValue>Periodic iteration finished.</StringValue>
                                                </Arguments>
                                             </Command>
                                          </NodeBody>
                                       </Node>
                                       <Node NodeType="NodeList" epx="Sequence" LineNo="51" ColNo="20">
                                          <NodeId>periodicIteration</NodeId>
                                          <RepeatCondition>
                                             <BooleanVariable>continue</BooleanVariable>
                                          </RepeatCondition>
                                          <InvariantCondition>
                                             <NOT>
                                                <OR>
                                                   <AND>
                                                      <EQInternal>
                                                         <NodeOutcomeVariable>
                                                            <NodeRef dir="child">ASSIGNMENT__8</NodeRef>
                                                         </NodeOutcomeVariable>
                                                         <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                      </EQInternal>
                                                      <EQInternal>
                                                         <NodeStateVariable>
                                                            <NodeRef dir="child">ASSIGNMENT__8</NodeRef>
                                                         </NodeStateVariable>
                                                         <NodeStateValue>FINISHED</NodeStateValue>
                                                      </EQInternal>
                                                   </AND>
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
                                                            <NodeRef dir="child">Sequence__10</NodeRef>
                                                         </NodeOutcomeVariable>
                                                         <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                      </EQInternal>
                                                      <EQInternal>
                                                         <NodeStateVariable>
                                                            <NodeRef dir="child">Sequence__10</NodeRef>
                                                         </NodeStateVariable>
                                                         <NodeStateValue>FINISHED</NodeStateValue>
                                                      </EQInternal>
                                                   </AND>
                                                </OR>
                                             </NOT>
                                          </InvariantCondition>
                                          <NodeBody>
                                             <NodeList>
                                                <Node NodeType="Assignment" LineNo="53" ColNo="20">
                                                   <NodeId>ASSIGNMENT__8</NodeId>
                                                   <NodeBody>
                                                      <Assignment>
                                                         <IntegerVariable>stepsCount</IntegerVariable>
                                                         <NumericRHS>
                                                            <ADD LineNo="53" ColNo="41">
                                                               <IntegerVariable>stepsCount</IntegerVariable>
                                                               <IntegerValue>1</IntegerValue>
                                                            </ADD>
                                                         </NumericRHS>
                                                      </Assignment>
                                                   </NodeBody>
                                                </Node>
                                                <Node NodeType="Command" LineNo="54" ColNo="20">
                                                   <NodeId>COMMAND__9</NodeId>
                                                   <StartCondition>
                                                      <EQInternal>
                                                         <NodeStateVariable>
                                                            <NodeRef dir="sibling">ASSIGNMENT__8</NodeRef>
                                                         </NodeStateVariable>
                                                         <NodeStateValue>FINISHED</NodeStateValue>
                                                      </EQInternal>
                                                   </StartCondition>
                                                   <NodeBody>
                                                      <Command>
                                                         <Name>
                                                            <StringValue>pprint</StringValue>
                                                         </Name>
                                                         <Arguments LineNo="55" ColNo="28">
                                                            <StringValue>steps Performed: </StringValue>
                                                            <IntegerVariable>stepsCount</IntegerVariable>
                                                         </Arguments>
                                                      </Command>
                                                   </NodeBody>
                                                </Node>
                                                <Node NodeType="NodeList" epx="Sequence" LineNo="57" ColNo="20">
                                                   <NodeId>Sequence__10</NodeId>
                                                   <StartCondition>
                                                      <EQInternal>
                                                         <NodeStateVariable>
                                                            <NodeRef dir="sibling">COMMAND__9</NodeRef>
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
                                                         <Node NodeType="NodeList" epx="Sequence" LineNo="60" ColNo="28">
                                                            <NodeId>WaitABit</NodeId>
                                                            <InvariantCondition>
                                                               <NOT>
                                                                  <AND>
                                                                     <EQInternal>
                                                                        <NodeOutcomeVariable>
                                                                           <NodeRef dir="child">Wait__11</NodeRef>
                                                                        </NodeOutcomeVariable>
                                                                        <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                                                     </EQInternal>
                                                                     <EQInternal>
                                                                        <NodeStateVariable>
                                                                           <NodeRef dir="child">Wait__11</NodeRef>
                                                                        </NodeStateVariable>
                                                                        <NodeStateValue>FINISHED</NodeStateValue>
                                                                     </EQInternal>
                                                                  </AND>
                                                               </NOT>
                                                            </InvariantCondition>
                                                            <NodeBody>
                                                               <NodeList>
                                                                  <Node NodeType="Empty" epx="Wait" LineNo="60" ColNo="28">
                                                                     <NodeId>Wait__11</NodeId>
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
                                                                              <MUL LineNo="60" ColNo="39">
                                                                                 <RealVariable>delay</RealVariable>
                                                                                 <IntegerValue>2</IntegerValue>
                                                                              </MUL>
                                                                              <NodeTimepointValue>
                                                                                 <NodeId>Wait__11</NodeId>
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
                                                         <Node NodeType="Assignment" LineNo="67" ColNo="28">
                                                            <NodeId>ConditionallyEndIteration</NodeId>
                                                            <StartCondition>
                                                               <EQInternal>
                                                                  <NodeStateVariable>
                                                                     <NodeRef dir="sibling">WaitABit</NodeRef>
                                                                  </NodeStateVariable>
                                                                  <NodeStateValue>FINISHED</NodeStateValue>
                                                               </EQInternal>
                                                            </StartCondition>
                                                            <SkipCondition>
                                                               <AND>
                                                                  <EQInternal>
                                                                     <NodeStateVariable>
                                                                        <NodeRef dir="sibling">WaitABit</NodeRef>
                                                                     </NodeStateVariable>
                                                                     <NodeStateValue>FINISHED</NodeStateValue>
                                                                  </EQInternal>
                                                                  <LT>
                                                                     <IntegerVariable>stepsCount</IntegerVariable>
                                                                     <IntegerValue>5</IntegerValue>
                                                                  </LT>
                                                               </AND>
                                                            </SkipCondition>
                                                            <NodeBody>
                                                               <Assignment>
                                                                  <BooleanVariable>continue</BooleanVariable>
                                                                  <BooleanRHS>
                                                                     <BooleanValue>false</BooleanValue>
                                                                  </BooleanRHS>
                                                               </Assignment>
                                                            </NodeBody>
                                                         </Node>
                                                         <Node NodeType="Command" LineNo="72" ColNo="28">
                                                            <NodeId>StepOne</NodeId>
                                                            <StartCondition>
                                                               <EQInternal>
                                                                  <NodeStateVariable>
                                                                     <NodeRef dir="sibling">ConditionallyEndIteration</NodeRef>
                                                                  </NodeStateVariable>
                                                                  <NodeStateValue>FINISHED</NodeStateValue>
                                                               </EQInternal>
                                                            </StartCondition>
                                                            <SkipCondition>
                                                               <AND>
                                                                  <EQInternal>
                                                                     <NodeStateVariable>
                                                                        <NodeRef dir="sibling">ConditionallyEndIteration</NodeRef>
                                                                     </NodeStateVariable>
                                                                     <NodeStateValue>FINISHED</NodeStateValue>
                                                                  </EQInternal>
                                                                  <NENumeric>
                                                                     <IntegerVariable>stepsCount</IntegerVariable>
                                                                     <IntegerValue>1</IntegerValue>
                                                                  </NENumeric>
                                                               </AND>
                                                            </SkipCondition>
                                                            <NodeBody>
                                                               <Command>
                                                                  <Name>
                                                                     <StringValue>pprint</StringValue>
                                                                  </Name>
                                                                  <Arguments LineNo="73" ColNo="36">
                                                                     <StringValue>Step one</StringValue>
                                                                  </Arguments>
                                                               </Command>
                                                            </NodeBody>
                                                         </Node>
                                                         <Node NodeType="Command" LineNo="76" ColNo="28">
                                                            <NodeId>StepTwo</NodeId>
                                                            <StartCondition>
                                                               <EQInternal>
                                                                  <NodeStateVariable>
                                                                     <NodeRef dir="sibling">StepOne</NodeRef>
                                                                  </NodeStateVariable>
                                                                  <NodeStateValue>FINISHED</NodeStateValue>
                                                               </EQInternal>
                                                            </StartCondition>
                                                            <SkipCondition>
                                                               <AND>
                                                                  <EQInternal>
                                                                     <NodeStateVariable>
                                                                        <NodeRef dir="sibling">StepOne</NodeRef>
                                                                     </NodeStateVariable>
                                                                     <NodeStateValue>FINISHED</NodeStateValue>
                                                                  </EQInternal>
                                                                  <NENumeric>
                                                                     <IntegerVariable>stepsCount</IntegerVariable>
                                                                     <IntegerValue>2</IntegerValue>
                                                                  </NENumeric>
                                                               </AND>
                                                            </SkipCondition>
                                                            <NodeBody>
                                                               <Command>
                                                                  <Name>
                                                                     <StringValue>pprint</StringValue>
                                                                  </Name>
                                                                  <Arguments LineNo="77" ColNo="36">
                                                                     <StringValue>Step two</StringValue>
                                                                  </Arguments>
                                                               </Command>
                                                            </NodeBody>
                                                         </Node>
                                                         <Node NodeType="Command" LineNo="80" ColNo="28">
                                                            <NodeId>StepThree</NodeId>
                                                            <StartCondition>
                                                               <EQInternal>
                                                                  <NodeStateVariable>
                                                                     <NodeRef dir="sibling">StepTwo</NodeRef>
                                                                  </NodeStateVariable>
                                                                  <NodeStateValue>FINISHED</NodeStateValue>
                                                               </EQInternal>
                                                            </StartCondition>
                                                            <SkipCondition>
                                                               <AND>
                                                                  <EQInternal>
                                                                     <NodeStateVariable>
                                                                        <NodeRef dir="sibling">StepTwo</NodeRef>
                                                                     </NodeStateVariable>
                                                                     <NodeStateValue>FINISHED</NodeStateValue>
                                                                  </EQInternal>
                                                                  <NENumeric>
                                                                     <IntegerVariable>stepsCount</IntegerVariable>
                                                                     <IntegerValue>3</IntegerValue>
                                                                  </NENumeric>
                                                               </AND>
                                                            </SkipCondition>
                                                            <NodeBody>
                                                               <Command>
                                                                  <Name>
                                                                     <StringValue>pprint</StringValue>
                                                                  </Name>
                                                                  <Arguments LineNo="81" ColNo="36">
                                                                     <StringValue>Step three</StringValue>
                                                                  </Arguments>
                                                               </Command>
                                                            </NodeBody>
                                                         </Node>
                                                         <Node NodeType="Command" LineNo="84" ColNo="28">
                                                            <NodeId>StepFour</NodeId>
                                                            <StartCondition>
                                                               <EQInternal>
                                                                  <NodeStateVariable>
                                                                     <NodeRef dir="sibling">StepThree</NodeRef>
                                                                  </NodeStateVariable>
                                                                  <NodeStateValue>FINISHED</NodeStateValue>
                                                               </EQInternal>
                                                            </StartCondition>
                                                            <SkipCondition>
                                                               <AND>
                                                                  <EQInternal>
                                                                     <NodeStateVariable>
                                                                        <NodeRef dir="sibling">StepThree</NodeRef>
                                                                     </NodeStateVariable>
                                                                     <NodeStateValue>FINISHED</NodeStateValue>
                                                                  </EQInternal>
                                                                  <NENumeric>
                                                                     <IntegerVariable>stepsCount</IntegerVariable>
                                                                     <IntegerValue>4</IntegerValue>
                                                                  </NENumeric>
                                                               </AND>
                                                            </SkipCondition>
                                                            <NodeBody>
                                                               <Command>
                                                                  <Name>
                                                                     <StringValue>pprint</StringValue>
                                                                  </Name>
                                                                  <Arguments LineNo="85" ColNo="36">
                                                                     <StringValue>Step four</StringValue>
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