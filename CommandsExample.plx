<?xml version="1.0" encoding="UTF-8"?>
<PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xmlns:tr="extended-plexil-translator"
            FileName="/Users/hcadavid/ECI/2015-2/Robotics-Plexil/source-adapter/robotics-interfacing/eci-robotics-plans/CommandsExample.ple">
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
   <Node NodeType="NodeList" epx="Concurrence" LineNo="9" ColNo="4">
      <NodeId>CommandsTest</NodeId>
      <NodeBody>
         <NodeList>
            <Node NodeType="Command" LineNo="12" ColNo="12">
               <NodeId>TFWR</NodeId>
               <StartCondition>
                  <EQInternal>
                     <NodeStateVariable>
                        <NodeId>MB</NodeId>
                     </NodeStateVariable>
                     <NodeStateValue>FINISHED</NodeStateValue>
                  </EQInternal>
               </StartCondition>
               <NodeBody>
                  <Command>
                     <Name>
                        <StringValue>TurnFrontWheels</StringValue>
                     </Name>
                     <Arguments LineNo="13" ColNo="29">
                        <IntegerValue>-30</IntegerValue>
                     </Arguments>
                  </Command>
               </NodeBody>
            </Node>
            <Node NodeType="Command" LineNo="16" ColNo="12">
               <NodeId>TFWL</NodeId>
               <StartCondition>
                  <EQInternal>
                     <NodeStateVariable>
                        <NodeId>TFWR</NodeId>
                     </NodeStateVariable>
                     <NodeStateValue>FINISHED</NodeStateValue>
                  </EQInternal>
               </StartCondition>
               <NodeBody>
                  <Command>
                     <Name>
                        <StringValue>TurnFrontWheels</StringValue>
                     </Name>
                     <Arguments LineNo="17" ColNo="28">
                        <IntegerValue>30</IntegerValue>
                     </Arguments>
                  </Command>
               </NodeBody>
            </Node>
            <Node NodeType="Command" LineNo="20" ColNo="12">
               <NodeId>TRWR</NodeId>
               <StartCondition>
                  <EQInternal>
                     <NodeStateVariable>
                        <NodeId>TFWL</NodeId>
                     </NodeStateVariable>
                     <NodeStateValue>FINISHED</NodeStateValue>
                  </EQInternal>
               </StartCondition>
               <NodeBody>
                  <Command>
                     <Name>
                        <StringValue>TurnRearWheels</StringValue>
                     </Name>
                     <Arguments LineNo="21" ColNo="28">
                        <IntegerValue>-30</IntegerValue>
                     </Arguments>
                  </Command>
               </NodeBody>
            </Node>
            <Node NodeType="Command" LineNo="24" ColNo="12">
               <NodeId>TRWL</NodeId>
               <StartCondition>
                  <EQInternal>
                     <NodeStateVariable>
                        <NodeId>TRWR</NodeId>
                     </NodeStateVariable>
                     <NodeStateValue>FINISHED</NodeStateValue>
                  </EQInternal>
               </StartCondition>
               <NodeBody>
                  <Command>
                     <Name>
                        <StringValue>TurnRearWheels</StringValue>
                     </Name>
                     <Arguments LineNo="25" ColNo="27">
                        <IntegerValue>30</IntegerValue>
                     </Arguments>
                  </Command>
               </NodeBody>
            </Node>
            <Node NodeType="Command" LineNo="28" ColNo="12">
               <NodeId>PS</NodeId>
               <StartCondition>
                  <EQInternal>
                     <NodeStateVariable>
                        <NodeId>TRWL</NodeId>
                     </NodeStateVariable>
                     <NodeStateValue>FINISHED</NodeStateValue>
                  </EQInternal>
               </StartCondition>
               <NodeBody>
                  <Command>
                     <Name>
                        <StringValue>PlantSeed</StringValue>
                     </Name>
                  </Command>
               </NodeBody>
            </Node>
            <Node NodeType="Command" LineNo="31" ColNo="12">
               <NodeId>MF</NodeId>
               <NodeBody>
                  <Command>
                     <Name>
                        <StringValue>MoveForward</StringValue>
                     </Name>
                     <Arguments LineNo="32" ColNo="24">
                        <IntegerValue>3</IntegerValue>
                     </Arguments>
                  </Command>
               </NodeBody>
            </Node>
            <Node NodeType="Command" LineNo="35" ColNo="12">
               <NodeId>MB</NodeId>
               <StartCondition>
                  <EQInternal>
                     <NodeStateVariable>
                        <NodeId>MF</NodeId>
                     </NodeStateVariable>
                     <NodeStateValue>FINISHED</NodeStateValue>
                  </EQInternal>
               </StartCondition>
               <NodeBody>
                  <Command>
                     <Name>
                        <StringValue>MoveBackward</StringValue>
                     </Name>
                     <Arguments LineNo="36" ColNo="25">
                        <IntegerValue>3</IntegerValue>
                     </Arguments>
                  </Command>
               </NodeBody>
            </Node>
         </NodeList>
      </NodeBody>
   </Node>
</PlexilPlan>