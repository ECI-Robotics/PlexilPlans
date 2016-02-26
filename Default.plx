<?xml version="1.0" encoding="UTF-8"?>
<PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xmlns:tr="extended-plexil-translator"
            FileName="Default.ple">
   <GlobalDeclarations LineNo="2" ColNo="0">
      <CommandDeclaration LineNo="2" ColNo="0">
         <Name>PlantSeed</Name>
      </CommandDeclaration>
      <CommandDeclaration LineNo="3" ColNo="0">
         <Name>TurnFrontWheels</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="4" ColNo="0">
         <Name>TurnRearWheels</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="5" ColNo="0">
         <Name>MoveForward</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
      <CommandDeclaration LineNo="6" ColNo="0">
         <Name>MoveBackward</Name>
         <Parameter>
            <Type>Integer</Type>
         </Parameter>
      </CommandDeclaration>
   </GlobalDeclarations>
   <Node NodeType="NodeList" epx="Sequence" LineNo="9" ColNo="4">
      <NodeId>CommandsTest</NodeId>
      <InvariantCondition>
         <NOT>
            <OR>
               <AND>
                  <EQInternal>
                     <NodeOutcomeVariable>
                        <NodeRef dir="child">BLINK</NodeRef>
                     </NodeOutcomeVariable>
                     <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                  </EQInternal>
                  <EQInternal>
                     <NodeStateVariable>
                        <NodeRef dir="child">BLINK</NodeRef>
                     </NodeStateVariable>
                     <NodeStateValue>FINISHED</NodeStateValue>
                  </EQInternal>
               </AND>
               <AND>
                  <EQInternal>
                     <NodeOutcomeVariable>
                        <NodeRef dir="child">BLINK2</NodeRef>
                     </NodeOutcomeVariable>
                     <NodeOutcomeValue>FAILURE</NodeOutcomeValue>
                  </EQInternal>
                  <EQInternal>
                     <NodeStateVariable>
                        <NodeRef dir="child">BLINK2</NodeRef>
                     </NodeStateVariable>
                     <NodeStateValue>FINISHED</NodeStateValue>
                  </EQInternal>
               </AND>
            </OR>
         </NOT>
      </InvariantCondition>
      <NodeBody>
         <NodeList>
            <Node NodeType="Command" LineNo="11" ColNo="12">
               <NodeId>BLINK</NodeId>
               <NodeBody>
                  <Command>
                     <Name>
                        <StringValue>TurnFrontWheels</StringValue>
                     </Name>
                     <Arguments LineNo="12" ColNo="28">
                        <IntegerValue>30</IntegerValue>
                     </Arguments>
                  </Command>
               </NodeBody>
            </Node>
            <Node NodeType="Command" LineNo="15" ColNo="12">
               <NodeId>BLINK2</NodeId>
               <StartCondition>
                  <EQInternal>
                     <NodeStateVariable>
                        <NodeRef dir="sibling">BLINK</NodeRef>
                     </NodeStateVariable>
                     <NodeStateValue>FINISHED</NodeStateValue>
                  </EQInternal>
               </StartCondition>
               <NodeBody>
                  <Command>
                     <Name>
                        <StringValue>TurnRearWheels</StringValue>
                     </Name>
                     <Arguments LineNo="16" ColNo="27">
                        <IntegerValue>30</IntegerValue>
                     </Arguments>
                  </Command>
               </NodeBody>
            </Node>
         </NodeList>
      </NodeBody>
   </Node>
</PlexilPlan>