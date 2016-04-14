<?xml version="1.0" encoding="UTF-8"?>
<PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xmlns:tr="extended-plexil-translator"
            FileName="wait-problem2.ple">
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
   <Node NodeType="NodeList" epx="Sequence" LineNo="11" ColNo="4">
      <NodeId>CountIteration</NodeId>
      <VariableDeclarations>
         <DeclareVariable LineNo="10" ColNo="4">
            <Name>continue</Name>
            <Type>Boolean</Type>
            <InitialValue>
               <BooleanValue>true</BooleanValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="11" ColNo="4">
            <Name>delay</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>2</RealValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="12" ColNo="4">
            <Name>tolerance</Name>
            <Type>Real</Type>
            <InitialValue>
               <RealValue>0.5</RealValue>
            </InitialValue>
         </DeclareVariable>
         <DeclareVariable LineNo="13" ColNo="4">
            <Name>stepsCount</Name>
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
                     <NodeRef dir="child">while__0</NodeRef>
                  </NodeOutcomeVariable>
                  <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
               </EQInternal>
               <EQInternal>
                  <NodeStateVariable>
                     <NodeRef dir="child">while__0</NodeRef>
                  </NodeStateVariable>
                  <NodeStateValue>FINISHED</NodeStateValue>
               </EQInternal>
            </AND>
         </NOT>
      </InvariantCondition>
      <NodeBody>
         <NodeList>
            <Node NodeType="NodeList" epx="While" LineNo="16" ColNo="4">
               <NodeId>while__0</NodeId>
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
                           <BooleanValue>true</BooleanValue>
                        </PostCondition>
                     </Node>
                     <Node NodeType="NodeList" epx="Action" LineNo="17" ColNo="8">
                        <NodeId>BLOCK__1</NodeId>
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
                              <Node NodeType="NodeList" epx="Sequence" LineNo="17" ColNo="18">
                                 <NodeId>WaitABit</NodeId>
                                 <InvariantCondition>
                                    <NOT>
                                       <AND>
                                          <EQInternal>
                                             <NodeOutcomeVariable>
                                                <NodeRef dir="child">Wait__2</NodeRef>
                                             </NodeOutcomeVariable>
                                             <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                          </EQInternal>
                                          <EQInternal>
                                             <NodeStateVariable>
                                                <NodeRef dir="child">Wait__2</NodeRef>
                                             </NodeStateVariable>
                                             <NodeStateValue>FINISHED</NodeStateValue>
                                          </EQInternal>
                                       </AND>
                                    </NOT>
                                 </InvariantCondition>
                                 <NodeBody>
                                    <NodeList>
                                       <Node NodeType="Empty" epx="Wait" LineNo="17" ColNo="18">
                                          <NodeId>Wait__2</NodeId>
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
                                                   <RealVariable>delay</RealVariable>
                                                   <NodeTimepointValue>
                                                      <NodeId>Wait__2</NodeId>
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
                              <Node NodeType="Command" LineNo="17" ColNo="8">
                                 <NodeId>COMMAND__3</NodeId>
                                 <StartCondition>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="sibling">WaitABit</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </StartCondition>
                                 <NodeBody>
                                    <Command>
                                       <Name>
                                          <StringValue>pprint</StringValue>
                                       </Name>
                                       <Arguments LineNo="18" ColNo="16">
                                          <StringValue>steps Performed </StringValue>
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