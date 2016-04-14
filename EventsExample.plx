<?xml version="1.0" encoding="UTF-8"?>
<PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xmlns:tr="extended-plexil-translator"
            FileName="EventsExample.ple">
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
   <Node NodeType="NodeList" epx="Concurrence" LineNo="14" ColNo="4">
      <NodeId>EventsTest</NodeId>
      <NodeBody>
         <NodeList>
            <Node NodeType="Command" LineNo="17" ColNo="12">
               <NodeId>LATITUDE</NodeId>
               <StartCondition>
                  <GT>
                     <LookupOnChange>
                        <Name>
                           <StringValue>Latitude</StringValue>
                        </Name>
                     </LookupOnChange>
                     <RealValue>10.1</RealValue>
                  </GT>
               </StartCondition>
               <NodeBody>
                  <Command>
                     <Name>
                        <StringValue>pprint</StringValue>
                     </Name>
                     <Arguments LineNo="18" ColNo="19">
                        <StringValue>Latitude &gt; 10.1</StringValue>
                     </Arguments>
                  </Command>
               </NodeBody>
            </Node>
            <Node NodeType="Command" LineNo="22" ColNo="12">
               <NodeId>LONG</NodeId>
               <StartCondition>
                  <GT>
                     <LookupOnChange>
                        <Name>
                           <StringValue>Longitude</StringValue>
                        </Name>
                     </LookupOnChange>
                     <RealValue>10.1</RealValue>
                  </GT>
               </StartCondition>
               <NodeBody>
                  <Command>
                     <Name>
                        <StringValue>pprint</StringValue>
                     </Name>
                     <Arguments LineNo="23" ColNo="19">
                        <StringValue>Longitude &gt; 10.1</StringValue>
                     </Arguments>
                  </Command>
               </NodeBody>
            </Node>
            <Node NodeType="NodeList" epx="Sequence" LineNo="27" ColNo="12">
               <NodeId>WHEELSTUCKLISTENER</NodeId>
               <StartCondition>
                  <EQNumeric>
                     <LookupOnChange>
                        <Name>
                           <StringValue>WheelStuck</StringValue>
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
                     <Node NodeType="Command" LineNo="27" ColNo="12">
                        <NodeId>COMMAND__3</NodeId>
                        <NodeBody>
                           <Command>
                              <Name>
                                 <StringValue>pprint</StringValue>
                              </Name>
                              <Arguments LineNo="28" ColNo="20">
                                 <StringValue>*************** GOT EVENT: WHEELSTUCK:</StringValue>
                              </Arguments>
                           </Command>
                        </NodeBody>
                     </Node>
                     <Node NodeType="Command" LineNo="28" ColNo="12">
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
</PlexilPlan>