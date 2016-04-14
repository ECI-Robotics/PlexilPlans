<?xml version="1.0" encoding="UTF-8"?>
<PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xmlns:tr="extended-plexil-translator"
            FileName="timed-iteration.ple">
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
   </GlobalDeclarations>
   <Node NodeType="NodeList" epx="Sequence" LineNo="7" ColNo="4">
      <NodeId>TimedIteration</NodeId>
      <VariableDeclarations>
         <DeclareVariable LineNo="6" ColNo="4">
            <Name>run_start_time</Name>
            <Type>Real</Type>
         </DeclareVariable>
         <DeclareVariable LineNo="7" ColNo="4">
            <Name>elapsed_time</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>0</RealValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="8" ColNo="4">
            <Name>run_length</Name>
            <Type>Real</Type>
         </DeclareVariable>
         <DeclareVariable LineNo="9" ColNo="4">
            <Name>tolerance</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>2</RealValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="10" ColNo="4">
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
            <Node NodeType="NodeList" epx="Sequence" LineNo="13" ColNo="4">
               <NodeId>Sequence__0</NodeId>
               <InvariantCondition>
                  <NOT>
                     <OR>
                        <AND>
                           <EQInternal>
                              <NodeOutcomeVariable>
                                 <NodeRef dir="child">SetupTimes</NodeRef>
                              </NodeOutcomeVariable>
                              <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                           </EQInternal>
                           <EQInternal>
                              <NodeStateVariable>
                                 <NodeRef dir="child">SetupTimes</NodeRef>
                              </NodeStateVariable>
                              <NodeStateValue>FINISHED</NodeStateValue>
                           </EQInternal>
                        </AND>
                        <AND>
                           <EQInternal>
                              <NodeOutcomeVariable>
                                 <NodeRef dir="child">periodicIteration</NodeRef>
                              </NodeOutcomeVariable>
                              <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                           </EQInternal>
                           <EQInternal>
                              <NodeStateVariable>
                                 <NodeRef dir="child">periodicIteration</NodeRef>
                              </NodeStateVariable>
                              <NodeStateValue>FINISHED</NodeStateValue>
                           </EQInternal>
                        </AND>
                     </OR>
                  </NOT>
               </InvariantCondition>
               <NodeBody>
                  <NodeList>
                     <Node NodeType="NodeList" epx="Sequence" LineNo="16" ColNo="12">
                        <NodeId>SetupTimes</NodeId>
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
                              <Node NodeType="Command" LineNo="15" ColNo="12">
                                 <NodeId>COMMAND__1</NodeId>
                                 <NodeBody>
                                    <Command>
                                       <Name>
                                          <StringValue>pprint</StringValue>
                                       </Name>
                                       <Arguments LineNo="16" ColNo="20">
                                          <StringValue>Time setup</StringValue>
                                       </Arguments>
                                    </Command>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="Assignment" LineNo="17" ColNo="12">
                                 <NodeId>ASSIGNMENT__2</NodeId>
                                 <StartCondition>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="sibling">COMMAND__1</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </StartCondition>
                                 <NodeBody>
                                    <Assignment>
                                       <RealVariable>run_start_time</RealVariable>
                                       <NumericRHS>
                                          <NodeTimepointValue>
                                             <NodeId>TimedIteration</NodeId>
                                             <NodeStateValue>EXECUTING</NodeStateValue>
                                             <Timepoint>START</Timepoint>
                                          </NodeTimepointValue>
                                       </NumericRHS>
                                    </Assignment>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="Assignment" LineNo="18" ColNo="12">
                                 <NodeId>ASSIGNMENT__3</NodeId>
                                 <StartCondition>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="sibling">ASSIGNMENT__2</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </StartCondition>
                                 <NodeBody>
                                    <Assignment>
                                       <RealVariable>run_length</RealVariable>
                                       <NumericRHS>
                                          <RealValue>10</RealValue>
                                       </NumericRHS>
                                    </Assignment>
                                 </NodeBody>
                              </Node>
                           </NodeList>
                        </NodeBody>
                     </Node>
                     <Node NodeType="NodeList" epx="Sequence" LineNo="24" ColNo="12">
                        <NodeId>periodicIteration</NodeId>
                        <VariableDeclarations>
                           <DeclareVariable LineNo="23" ColNo="12">
                              <Name>iteration_start_time</Name>
                              <Type>Real</Type>
                           </DeclareVariable>
                        </VariableDeclarations>
                        <StartCondition>
                           <AND>
                              <EQInternal>
                                 <NodeStateVariable>
                                    <NodeRef dir="sibling">SetupTimes</NodeRef>
                                 </NodeStateVariable>
                                 <NodeStateValue>FINISHED</NodeStateValue>
                              </EQInternal>
                              <EQInternal>
                                 <NodeStateVariable>
                                    <NodeId>SetupTimes</NodeId>
                                 </NodeStateVariable>
                                 <NodeStateValue>FINISHED</NodeStateValue>
                              </EQInternal>
                           </AND>
                        </StartCondition>
                        <RepeatCondition>
                           <BooleanVariable>continue</BooleanVariable>
                        </RepeatCondition>
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
                              </OR>
                           </NOT>
                        </InvariantCondition>
                        <NodeBody>
                           <NodeList>
                              <Node NodeType="Assignment" LineNo="28" ColNo="12">
                                 <NodeId>ASSIGNMENT__4</NodeId>
                                 <NodeBody>
                                    <Assignment>
                                       <RealVariable>iteration_start_time</RealVariable>
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
                              <Node NodeType="Assignment" LineNo="31" ColNo="12">
                                 <NodeId>ASSIGNMENT__5</NodeId>
                                 <StartCondition>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="sibling">ASSIGNMENT__4</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </StartCondition>
                                 <NodeBody>
                                    <Assignment>
                                       <RealVariable>elapsed_time</RealVariable>
                                       <NumericRHS>
                                          <SUB LineNo="31" ColNo="48">
                                             <RealVariable>iteration_start_time</RealVariable>
                                             <RealVariable>run_start_time</RealVariable>
                                          </SUB>
                                       </NumericRHS>
                                    </Assignment>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="Command" LineNo="32" ColNo="12">
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
                                       <Arguments LineNo="33" ColNo="20">
                                          <StringValue>elapsed_time: </StringValue>
                                          <RealVariable>elapsed_time</RealVariable>
                                       </Arguments>
                                    </Command>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="Empty" epx="Wait" LineNo="35" ColNo="22">
                                 <NodeId>WaitABit</NodeId>
                                 <StartCondition>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="sibling">COMMAND__6</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </StartCondition>
                                 <EndCondition>
                                    <GE>
                                       <LookupOnChange>
                                          <Name>
                                             <StringValue>time</StringValue>
                                          </Name>
                                          <Tolerance>
                                             <RealValue>1.0</RealValue>
                                          </Tolerance>
                                       </LookupOnChange>
                                       <ADD>
                                          <MUL LineNo="35" ColNo="29">
                                             <IntegerValue>2</IntegerValue>
                                             <RealVariable>tolerance</RealVariable>
                                          </MUL>
                                          <NodeTimepointValue>
                                             <NodeId>WaitABit</NodeId>
                                             <NodeStateValue>EXECUTING</NodeStateValue>
                                             <Timepoint>START</Timepoint>
                                          </NodeTimepointValue>
                                       </ADD>
                                    </GE>
                                 </EndCondition>
                              </Node>
                              <Node NodeType="NodeList" epx="Sequence" LineNo="39" ColNo="16">
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
                                       <LE>
                                          <RealVariable>elapsed_time</RealVariable>
                                          <RealVariable>run_length</RealVariable>
                                       </LE>
                                    </AND>
                                 </SkipCondition>
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
                                       <Node NodeType="Assignment" LineNo="41" ColNo="16">
                                          <NodeId>ASSIGNMENT__7</NodeId>
                                          <NodeBody>
                                             <Assignment>
                                                <BooleanVariable>continue</BooleanVariable>
                                                <BooleanRHS>
                                                   <BooleanValue>false</BooleanValue>
                                                </BooleanRHS>
                                             </Assignment>
                                          </NodeBody>
                                       </Node>
                                       <Node NodeType="Command" LineNo="41" ColNo="16">
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
                                                <Arguments LineNo="42" ColNo="24">
                                                   <StringValue>Ending periodic iteration</StringValue>
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
</PlexilPlan>