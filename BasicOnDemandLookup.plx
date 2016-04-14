<?xml version="1.0" encoding="UTF-8"?>
<PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xmlns:tr="extended-plexil-translator"
            FileName="BasicOnDemandLookup.ple">
   <GlobalDeclarations LineNo="2" ColNo="5">
      <StateDeclaration LineNo="2" ColNo="5">
         <Name>Latitude</Name>
         <Return>
            <Name>_return_0</Name>
            <Type>Real</Type>
         </Return>
      </StateDeclaration>
      <CommandDeclaration LineNo="4" ColNo="0">
         <Name>pprint</Name>
      </CommandDeclaration>
   </GlobalDeclarations>
   <Node NodeType="NodeList" epx="Sequence" LineNo="8" ColNo="4">
      <NodeId>CommandsTest</NodeId>
      <VariableDeclarations>
         <DeclareVariable LineNo="7" ColNo="4">
            <Name>pi</Name>
            <Type>Real</Type>
         </DeclareVariable>
      </VariableDeclarations>
      <InvariantCondition>
         <NOT>
            <AND>
               <EQInternal>
                  <NodeOutcomeVariable>
                     <NodeRef dir="child">sequence</NodeRef>
                  </NodeOutcomeVariable>
                  <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
               </EQInternal>
               <EQInternal>
                  <NodeStateVariable>
                     <NodeRef dir="child">sequence</NodeRef>
                  </NodeStateVariable>
                  <NodeStateValue>FINISHED</NodeStateValue>
               </EQInternal>
            </AND>
         </NOT>
      </InvariantCondition>
      <NodeBody>
         <NodeList>
            <Node NodeType="NodeList" epx="Sequence" LineNo="12" ColNo="8">
               <NodeId>sequence</NodeId>
               <InvariantCondition>
                  <NOT>
                     <OR>
                        <AND>
                           <EQInternal>
                              <NodeOutcomeVariable>
                                 <NodeRef dir="child">init</NodeRef>
                              </NodeOutcomeVariable>
                              <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                           </EQInternal>
                           <EQInternal>
                              <NodeStateVariable>
                                 <NodeRef dir="child">init</NodeRef>
                              </NodeStateVariable>
                              <NodeStateValue>FINISHED</NodeStateValue>
                           </EQInternal>
                        </AND>
                        <AND>
                           <EQInternal>
                              <NodeOutcomeVariable>
                                 <NodeRef dir="child">concurrence</NodeRef>
                              </NodeOutcomeVariable>
                              <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                           </EQInternal>
                           <EQInternal>
                              <NodeStateVariable>
                                 <NodeRef dir="child">concurrence</NodeRef>
                              </NodeStateVariable>
                              <NodeStateValue>FINISHED</NodeStateValue>
                           </EQInternal>
                        </AND>
                     </OR>
                  </NOT>
               </InvariantCondition>
               <NodeBody>
                  <NodeList>
                     <Node NodeType="NodeList" epx="Sequence" LineNo="13" ColNo="12">
                        <NodeId>init</NodeId>
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
                              </OR>
                           </NOT>
                        </InvariantCondition>
                        <NodeBody>
                           <NodeList>
                              <Node NodeType="Assignment" LineNo="13" ColNo="12">
                                 <NodeId>ASSIGNMENT__0</NodeId>
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
                              <Node NodeType="Command" LineNo="13" ColNo="12">
                                 <NodeId>COMMAND__1</NodeId>
                                 <StartCondition>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="sibling">ASSIGNMENT__0</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </StartCondition>
                                 <NodeBody>
                                    <Command>
                                       <Name>
                                          <StringValue>pprint</StringValue>
                                       </Name>
                                       <Arguments LineNo="14" ColNo="19">
                                          <StringValue>===&gt;Latitude intialized</StringValue>
                                          <RealVariable>pi</RealVariable>
                                       </Arguments>
                                    </Command>
                                 </NodeBody>
                              </Node>
                           </NodeList>
                        </NodeBody>
                     </Node>
                     <Node NodeType="NodeList" epx="Sequence" LineNo="18" ColNo="12">
                        <NodeId>concurrence</NodeId>
                        <StartCondition>
                           <EQInternal>
                              <NodeStateVariable>
                                 <NodeRef dir="sibling">init</NodeRef>
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
                                          <NodeRef dir="child">LatUpdateNotifier</NodeRef>
                                       </NodeOutcomeVariable>
                                       <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                    </EQInternal>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="child">LatUpdateNotifier</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </AND>
                                 <AND>
                                    <EQInternal>
                                       <NodeOutcomeVariable>
                                          <NodeRef dir="child">LatUpdateNotifier2</NodeRef>
                                       </NodeOutcomeVariable>
                                       <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                    </EQInternal>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="child">LatUpdateNotifier2</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </AND>
                                 <AND>
                                    <EQInternal>
                                       <NodeOutcomeVariable>
                                          <NodeRef dir="child">EndNode</NodeRef>
                                       </NodeOutcomeVariable>
                                       <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                                    </EQInternal>
                                    <EQInternal>
                                       <NodeStateVariable>
                                          <NodeRef dir="child">EndNode</NodeRef>
                                       </NodeStateVariable>
                                       <NodeStateValue>FINISHED</NodeStateValue>
                                    </EQInternal>
                                 </AND>
                              </OR>
                           </NOT>
                        </InvariantCondition>
                        <NodeBody>
                           <NodeList>
                              <Node NodeType="NodeList" epx="Sequence" LineNo="19" ColNo="16">
                                 <NodeId>LatUpdateNotifier</NodeId>
                                 <StartCondition>
                                    <GT>
                                       <LookupOnChange>
                                          <Name>
                                             <StringValue>Latitude</StringValue>
                                          </Name>
                                       </LookupOnChange>
                                       <IntegerValue>2</IntegerValue>
                                    </GT>
                                 </StartCondition>
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
                                       </OR>
                                    </NOT>
                                 </InvariantCondition>
                                 <NodeBody>
                                    <NodeList>
                                       <Node NodeType="Assignment" LineNo="22" ColNo="16">
                                          <NodeId>ASSIGNMENT__2</NodeId>
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
                                       <Node NodeType="Command" LineNo="22" ColNo="16">
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
                                                <Arguments LineNo="23" ColNo="23">
                                                   <StringValue>=====&gt;Latitude changed to:</StringValue>
                                                   <RealVariable>pi</RealVariable>
                                                </Arguments>
                                             </Command>
                                          </NodeBody>
                                       </Node>
                                    </NodeList>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="NodeList" epx="Sequence" LineNo="27" ColNo="16">
                                 <NodeId>LatUpdateNotifier2</NodeId>
                                 <StartCondition>
                                    <AND>
                                       <EQInternal>
                                          <NodeStateVariable>
                                             <NodeRef dir="sibling">LatUpdateNotifier</NodeRef>
                                          </NodeStateVariable>
                                          <NodeStateValue>FINISHED</NodeStateValue>
                                       </EQInternal>
                                       <GT>
                                          <LookupOnChange>
                                             <Name>
                                                <StringValue>Latitude</StringValue>
                                             </Name>
                                          </LookupOnChange>
                                          <IntegerValue>2</IntegerValue>
                                       </GT>
                                    </AND>
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
                                       </OR>
                                    </NOT>
                                 </InvariantCondition>
                                 <NodeBody>
                                    <NodeList>
                                       <Node NodeType="Assignment" LineNo="30" ColNo="16">
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
                                       <Node NodeType="Command" LineNo="30" ColNo="16">
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
                                                <Arguments LineNo="31" ColNo="23">
                                                   <StringValue>*****&gt;Latitude changed to:</StringValue>
                                                   <RealVariable>pi</RealVariable>
                                                </Arguments>
                                             </Command>
                                          </NodeBody>
                                       </Node>
                                    </NodeList>
                                 </NodeBody>
                              </Node>
                              <Node NodeType="Command" LineNo="36" ColNo="20">
                                 <NodeId>EndNode</NodeId>
                                 <StartCondition>
                                    <AND>
                                       <EQInternal>
                                          <NodeStateVariable>
                                             <NodeRef dir="sibling">LatUpdateNotifier2</NodeRef>
                                          </NodeStateVariable>
                                          <NodeStateValue>FINISHED</NodeStateValue>
                                       </EQInternal>
                                       <GT>
                                          <LookupOnChange>
                                             <Name>
                                                <StringValue>Latitude</StringValue>
                                             </Name>
                                          </LookupOnChange>
                                          <IntegerValue>4</IntegerValue>
                                       </GT>
                                    </AND>
                                 </StartCondition>
                                 <NodeBody>
                                    <Command>
                                       <Name>
                                          <StringValue>pprint</StringValue>
                                       </Name>
                                       <Arguments LineNo="37" ColNo="27">
                                          <StringValue>Done</StringValue>
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