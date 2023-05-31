//[ExternalGroup RadiationReceiver]
//[NormalChecks]
/*<>*/ //[Check --clock]
/*<>*/  //*** Primary Clock: clk, for module: RadiationProcessor
/*<>*/ //[Check --reset]
/*<>*/  //*** Reset: reset, for module: RadiationProcessor
//[InferClocks]
module RadiationProcessor(
/*<>*/     input wire  clk,
/*<>*/     input wire  reset,
/*<>*/     output  requestEthernetValues__OUTPUT,
/*<>*/     output  valueReady__OUTPUT,
/*<>*/     output [9:0] radiationValue__OUTPUT,
/*<>*/     output [31:0] debugSource__OUTPUT,
/*<>*/     output  startReceivingData__OUTPUT,
/*<>*/     output [15:0] ethernetLoadFloor__OUTPUT,
/*<>*/     output [31:0] ethernetValue__OUTPUT,
/*<>*/     output [31:0] ethernetValuesReceived__OUTPUT,
/*<>*/     output [31:0] radiationValuesSent__OUTPUT,
/*<>*/     output [31:0] countAmount__OUTPUT,
/*<>*/     output [31:0] nextValueDelaySaved__OUTPUT,
/*<>*/     output [31:0] radiationTimer__OUTPUT,
/*<>*/     input wire  debugSource_Write,
/*<>*/     input wire [31:0] debugSource_WriteValue,
/*<>*/     input wire  debugSource_Read,
/*<>*/     input wire  startReceivingData_Write,
/*<>*/     input wire  startReceivingData_WriteValue,
/*<>*/     input wire  startReceivingData_Read,
/*<>*/     input wire  ethernetLoadFloor_Write,
/*<>*/     input wire [15:0] ethernetLoadFloor_WriteValue,
/*<>*/     input wire  ethernetLoadFloor_Read,
/*<>*/     input wire  clearRequestEthernetValues_Write,
/*<>*/     input wire  ethernetValue_Write,
/*<>*/     input wire [31:0] ethernetValue_WriteValue,
/*<>*/     input wire  ethernetValue_Read,
/*<>*/     input wire  ethernetValuesReceived_Write,
/*<>*/     input wire [31:0] ethernetValuesReceived_WriteValue,
/*<>*/     input wire  ethernetValuesReceived_Read,
/*<>*/     input wire  radiationValue_Write,
/*<>*/     input wire [31:0] radiationValue_WriteValue,
/*<>*/     input wire  radiationValue_Read,
/*<>*/     input wire  radiationValuesSent_Write,
/*<>*/     input wire [31:0] radiationValuesSent_WriteValue,
/*<>*/     input wire  radiationValuesSent_Read,
/*<>*/     input wire  countAmount_Write,
/*<>*/     input wire [31:0] countAmount_WriteValue,
/*<>*/     input wire  countAmount_Read,
/*<>*/     input wire  nextValueDelaySaved_Write,
/*<>*/     input wire [31:0] nextValueDelaySaved_WriteValue,
/*<>*/     input wire  nextValueDelaySaved_Read,
/*<>*/     input wire  valueProcessingFinished_Write,
/*<>*/     input wire  radiationTimer_Write,
/*<>*/     input wire [31:0] radiationTimer_WriteValue,
/*<>*/     input wire  radiationTimer_Read
);


/*[.RadiationReceiver]*/ wire clk;
/*[.RadiationReceiver S_AXI_ARESETN]*//*<>:*/ /*[Reset --activeLow]*/ /*:<>*/ wire reset;

/*[External]*/
/*<>*/ //[AxiReg:RadiationReceiver]
/*[BasicAxiReadWrite]*/
reg [31:0] debugSource;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         debugSource <= 0;
/*<>*/     else if(/*[$debugSource.write]*//*<>:*/ debugSource_Write/*:<>*/)
/*<>*/         debugSource <= /*[$debugSource.writeValue]*//*<>:*/ debugSource_WriteValue/*:<>*/;
/*<>*/     else
/*<>*/         debugSource <= debugSource;
/*<>*/ end
/*<>*/ //***Base:     $debugSource
/*<>*/ //***Members:  $.write, $.writeValue, $.read
/*<>*/ /*[$debugSource.write]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_debugSource_WriteReceived]
/*<>*/     wire debugSource_Write;
/*<>*/ /*[$debugSource.writeValue]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_debugSource_Write]
/*<>*/     wire [31:0] debugSource_WriteValue;
/*<>*/ /*[$debugSource.read]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_debugSource_ReadReceived]
/*<>*/     wire debugSource_Read;

/*[External]*/
/*<>*/ //[AxiReg:RadiationReceiver]
/*[BasicAxiReadWrite]*/
reg startReceivingData;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         startReceivingData <= 0;
/*<>*/     else if(/*[$startReceivingData.write]*//*<>:*/ startReceivingData_Write/*:<>*/)
/*<>*/         startReceivingData <= /*[$startReceivingData.writeValue]*//*<>:*/ startReceivingData_WriteValue/*:<>*/;
/*<>*/     else
/*<>*/         startReceivingData <= startReceivingData;
/*<>*/ end
/*<>*/ //***Base:     $startReceivingData
/*<>*/ //***Members:  $.write, $.writeValue, $.read
/*<>*/ /*[$startReceivingData.write]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_startReceivingData_WriteReceived]
/*<>*/     wire startReceivingData_Write;
/*<>*/ /*[$startReceivingData.writeValue]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_startReceivingData_Write]
/*<>*/     wire  startReceivingData_WriteValue;
/*<>*/ /*[$startReceivingData.read]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_startReceivingData_ReadReceived]
/*<>*/     wire startReceivingData_Read;


//*********************************************************
//***********************  Ethernet  **********************
//*********************************************************

/*[External]*/
/*<>*/ //[AxiReg:RadiationReceiver]
/*[BasicAxiReadWrite]*/
reg [15:0] ethernetLoadFloor;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         ethernetLoadFloor <= 0;
/*<>*/     else if(/*[$ethernetLoadFloor.write]*//*<>:*/ ethernetLoadFloor_Write/*:<>*/)
/*<>*/         ethernetLoadFloor <= /*[$ethernetLoadFloor.writeValue]*//*<>:*/ ethernetLoadFloor_WriteValue/*:<>*/;
/*<>*/     else
/*<>*/         ethernetLoadFloor <= ethernetLoadFloor;
/*<>*/ end
/*<>*/ //***Base:     $ethernetLoadFloor
/*<>*/ //***Members:  $.write, $.writeValue, $.read
/*<>*/ /*[$ethernetLoadFloor.write]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_ethernetLoadFloor_WriteReceived]
/*<>*/     wire ethernetLoadFloor_Write;
/*<>*/ /*[$ethernetLoadFloor.writeValue]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_ethernetLoadFloor_Write]
/*<>*/     wire [15:0] ethernetLoadFloor_WriteValue;
/*<>*/ /*[$ethernetLoadFloor.read]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_ethernetLoadFloor_ReadReceived]
/*<>*/     wire ethernetLoadFloor_Read;

reg requestMoreValues;
/*[always requestMoreValues]*//*<>:*/
always@(posedge clk)/*:<>*/ begin
    /*[Reset]*/
/*<>*/     if(!reset)
        /*[<= 0]*/
/*<>*/         requestMoreValues <= 0;
    else if(radiationValuesSent >= ethernetValuesReceived - ethernetLoadFloor
            &&  ethernetValuesReceived != 0)
        /*[<= 1]*/
/*<>*/         requestMoreValues <= 1;
    else
        /*[<= 0]*/
/*<>*/         requestMoreValues <= 0;
end

/*[Counter --count 50 --start clearRequestEthernetValues]*/
reg [7:0] ethernetHoldInterruptTimer;
/*<>*/ //***Base:     $ethernetHoldInterruptTimer
/*<>*/ //***Members:  $.countTo, $.start, $.done
/*<>*/ /*[$ethernetHoldInterruptTimer.countTo 50]*/
/*<>*/ /*[$ethernetHoldInterruptTimer.start clearRequestEthernetValues]*/
/*<>*/ /*[$ethernetHoldInterruptTimer.done]*/ wire ethernetHoldInterruptTimerDone;
/*<>*/ assign ethernetHoldInterruptTimerDone = ethernetHoldInterruptTimer == 50;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         ethernetHoldInterruptTimer <= 0;
/*<>*/     else
/*<>*/     if(ethernetHoldInterruptTimerDone)
/*<>*/         ethernetHoldInterruptTimer <= 0;
/*<>*/     else if(clearRequestEthernetValues || (ethernetHoldInterruptTimer > 0))
/*<>*/         ethernetHoldInterruptTimer <= ethernetHoldInterruptTimer + 1;
/*<>*/     else
/*<>*/         ethernetHoldInterruptTimer <= 0;
/*<>*/ end

/*[Interrupt]*/
reg requestEthernetValues;
/*[always requestEthernetValues]*//*<>:*/
always@(posedge clk)/*:<>*/ begin
    /*[Reset]*/
/*<>*/     if(!reset)
        /*[<= 0]*/
/*<>*/         requestEthernetValues <= 0;
    else if(clearRequestEthernetValues)
        /*[<= 0]*/
/*<>*/         requestEthernetValues <= 0;
    else if(ethernetHoldInterruptTimer > 0)
        /*[<= 0]*/
/*<>*/         requestEthernetValues <= 0;
    else if(requestMoreValues || /*[$startReceivingData.write]*//*<>:*/ startReceivingData_Write/*:<>*/)
        /*[<= 1]*/
/*<>*/         requestEthernetValues <= 1;
    else
        /*[<=]*/
/*<>*/         requestEthernetValues <= requestEthernetValues;
end

/*[External --pulse]*/
/*<>*/ //[AxiReg:RadiationReceiver pulse]
wire clearRequestEthernetValues;
/*<>*/ //***Base:     $clearRequestEthernetValues
/*<>*/ //***Members:  $.pulse
/*<>*/ /*[$clearRequestEthernetValues.pulse clearRequestEthernetValues]*/
/*<>*/ //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_clearRequestEthernetValues_WriteReceived]
/*<>*/ wire clearRequestEthernetValues_Write;
/*<>*/ /*[RisingEdge]*/
/*<>*/  /*[$clearRequestEthernetValues_Write.rising]*/
/*<>*/ wire risingClearRequestEthernetValues_Write;
/*<>*/ //[Previous clearRequestEthernetValues_Write]
/*<>*/  /*[$clearRequestEthernetValues_Write.previous]*/
/*<>*/ reg p1_clearRequestEthernetValues_Write;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         p1_clearRequestEthernetValues_Write <= 0;
/*<>*/     else
/*<>*/         p1_clearRequestEthernetValues_Write <= clearRequestEthernetValues_Write;
/*<>*/ end
/*<>*/
/*<>*/ assign risingClearRequestEthernetValues_Write = clearRequestEthernetValues_Write && !p1_clearRequestEthernetValues_Write;
/*<>*/ assign clearRequestEthernetValues = risingClearRequestEthernetValues_Write;

//[External]
/*<>*/ //[AxiReg:RadiationReceiver]
/*[BasicAxiReadWrite]*/
reg [31:0] ethernetValue;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         ethernetValue <= 0;
/*<>*/     else if(/*[$ethernetValue.write]*//*<>:*/ ethernetValue_Write/*:<>*/)
/*<>*/         ethernetValue <= /*[$ethernetValue.writeValue]*//*<>:*/ ethernetValue_WriteValue/*:<>*/;
/*<>*/     else
/*<>*/         ethernetValue <= ethernetValue;
/*<>*/ end
/*<>*/ //***Base:     $ethernetValue
/*<>*/ //***Members:  $.write, $.writeValue, $.read
/*<>*/ /*[$ethernetValue.write]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_ethernetValue_WriteReceived]
/*<>*/     wire ethernetValue_Write;
/*<>*/ /*[$ethernetValue.writeValue]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_ethernetValue_Write]
/*<>*/     wire [31:0] ethernetValue_WriteValue;
/*<>*/ /*[$ethernetValue.read]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_ethernetValue_ReadReceived]
/*<>*/     wire ethernetValue_Read;
/*[RisingEdge $ethernetValue.write]*/
/*<>*/ /*[$ethernetValue.write.rising]*/
wire risingEthernetValueWrite;
/*<>*/ //[Previous ethernetValue_Write]
/*<>*/  /*[$ethernetValue_Write.previous]*/
/*<>*/ reg p1_ethernetValue_Write;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         p1_ethernetValue_Write <= 0;
/*<>*/     else
/*<>*/         p1_ethernetValue_Write <= ethernetValue_Write;
/*<>*/ end
/*<>*/
/*<>*/ assign risingEthernetValueWrite = ethernetValue_Write && !p1_ethernetValue_Write;
/*[Previous]*/
/*<>*/ /*[$risingEthernetValueWrite.previous]*/
reg p1_risingEthernetValueWrite;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         p1_risingEthernetValueWrite <= 0;
/*<>*/     else
/*<>*/         p1_risingEthernetValueWrite <= risingEthernetValueWrite;
/*<>*/ end
/*[Previous]*/
/*<>*/ /*[$p1_risingEthernetValueWrite.previous]*/
reg p2_risingEthernetValueWrite;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         p2_risingEthernetValueWrite <= 0;
/*<>*/     else
/*<>*/         p2_risingEthernetValueWrite <= p1_risingEthernetValueWrite;
/*<>*/ end
/*[Previous]*/
/*<>*/ /*[$p2_risingEthernetValueWrite.previous]*/
reg p3_risingEthernetValueWrite;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         p3_risingEthernetValueWrite <= 0;
/*<>*/     else
/*<>*/         p3_risingEthernetValueWrite <= p2_risingEthernetValueWrite;
/*<>*/ end
/*[Previous]*/
/*<>*/ /*[$p3_risingEthernetValueWrite.previous]*/
reg p4_risingEthernetValueWrite;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         p4_risingEthernetValueWrite <= 0;
/*<>*/     else
/*<>*/         p4_risingEthernetValueWrite <= p3_risingEthernetValueWrite;
/*<>*/ end

/*[External]*/
/*<>*/ //[AxiReg:RadiationReceiver]
//Track the number of values written to the PL from the Ethernet PS
reg [31:0] ethernetValuesReceived;
/*<>*/ //***Base:     $ethernetValuesReceived
/*<>*/ //***Members:  $.write, $.writeValue, $.read
/*<>*/ /*[$ethernetValuesReceived.write]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_ethernetValuesReceived_WriteReceived]
/*<>*/     wire ethernetValuesReceived_Write;
/*<>*/ /*[$ethernetValuesReceived.writeValue]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_ethernetValuesReceived_Write]
/*<>*/     wire [31:0] ethernetValuesReceived_WriteValue;
/*<>*/ /*[$ethernetValuesReceived.read]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_ethernetValuesReceived_ReadReceived]
/*<>*/     wire ethernetValuesReceived_Read;
/*[always ethernetValuesReceived]*//*<>:*/
always@(posedge clk)/*:<>*/ begin
    /*[Reset]*/
/*<>*/     if(!reset)
        /*[<= 0]*/
/*<>*/         ethernetValuesReceived <= 0;
    else if(/*[$ethernetValue.write.rising]*//*<>:*/ risingEthernetValueWrite/*:<>*/)
        /*[<= this + 1]*/
/*<>*/         ethernetValuesReceived <= ethernetValuesReceived + 1;
    else
        /*[<=]*/
/*<>*/         ethernetValuesReceived <= ethernetValuesReceived;
end


//*********************************************************
//********************  Radiation Value  ******************
//*********************************************************

/*[SetExternalOrUseHardwareAcceleration]*/
/*<>*/ /*[External]*/
/*<>*/  //[AxiReg:RadiationReceiver]
/*<>*/ wire [31:0] radiationValue;
/*<>*/ //***Base:     $radiationValue
/*<>*/ //***Members:  $.write, $.writeValue, $.read
/*<>*/ /*[$radiationValue.write]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_radiationValue_WriteReceived]
/*<>*/     wire radiationValue_Write;
/*<>*/ /*[$radiationValue.writeValue]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_radiationValue_Write]
/*<>*/     wire [31:0] radiationValue_WriteValue;
/*<>*/ /*[$radiationValue.read]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_radiationValue_ReadReceived]
/*<>*/     wire radiationValue_Read;
/*<>*/ /*[Interrupt]*/
/*<>*/ reg valueReady;


/*[RisingEdge $radiationValue.read]*/
/*<>*/ /*[$radiationValue.read.rising]*/
wire risingRadiationValueRead;
/*<>*/ //[Previous radiationValue_Read]
/*<>*/  /*[$radiationValue_Read.previous]*/
/*<>*/ reg p1_radiationValue_Read;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         p1_radiationValue_Read <= 0;
/*<>*/     else
/*<>*/         p1_radiationValue_Read <= radiationValue_Read;
/*<>*/ end
/*<>*/
/*<>*/ assign risingRadiationValueRead = radiationValue_Read && !p1_radiationValue_Read;


assign radiationValue = /*[$radiationMemory.dataOutB]*//*<>:*/ radiationMemoryDataOutB/*:<>*/[15:0];

/*[External]*/
/*<>*/ //[AxiReg:RadiationReceiver]
reg [31:0] radiationValuesSent;
/*<>*/ //***Base:     $radiationValuesSent
/*<>*/ //***Members:  $.write, $.writeValue, $.read
/*<>*/ /*[$radiationValuesSent.write]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_radiationValuesSent_WriteReceived]
/*<>*/     wire radiationValuesSent_Write;
/*<>*/ /*[$radiationValuesSent.writeValue]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_radiationValuesSent_Write]
/*<>*/     wire [31:0] radiationValuesSent_WriteValue;
/*<>*/ /*[$radiationValuesSent.read]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_radiationValuesSent_ReadReceived]
/*<>*/     wire radiationValuesSent_Read;
/*[always radiationValuesSent]*//*<>:*/
always@(posedge clk)/*:<>*/ begin
    /*[Reset]*/
/*<>*/     if(!reset)
        /*[<= 0]*/
/*<>*/         radiationValuesSent <= 0;
    else if(sendNextValue)
        /*[<= this + 1]*/
/*<>*/         radiationValuesSent <= radiationValuesSent + 1;
    else
        /*[<=]*/
/*<>*/         radiationValuesSent <= radiationValuesSent;
end

/*[External]*/
/*<>*/ //[AxiReg:RadiationReceiver]
/*[BasicAxiReadWrite]*/
reg [31:0] countAmount;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         countAmount <= 0;
/*<>*/     else if(/*[$countAmount.write]*//*<>:*/ countAmount_Write/*:<>*/)
/*<>*/         countAmount <= /*[$countAmount.writeValue]*//*<>:*/ countAmount_WriteValue/*:<>*/;
/*<>*/     else
/*<>*/         countAmount <= countAmount;
/*<>*/ end
/*<>*/ //***Base:     $countAmount
/*<>*/ //***Members:  $.write, $.writeValue, $.read
/*<>*/ /*[$countAmount.write]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_countAmount_WriteReceived]
/*<>*/     wire countAmount_Write;
/*<>*/ /*[$countAmount.writeValue]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_countAmount_Write]
/*<>*/     wire [31:0] countAmount_WriteValue;
/*<>*/ /*[$countAmount.read]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_countAmount_ReadReceived]
/*<>*/     wire countAmount_Read;



//MBHERE fix lines 122 and 130
/*[always valueReady]*//*<>:*/
always@(posedge clk)/*:<>*/  begin
    /*[Reset]*/
/*<>*/     if(!reset)
        /*[<= 0]*/
/*<>*/         valueReady <= 0;
    // else if(/*[$radiationValue.read.rising]*/) /*[IfValueReadySetTo0]*/
    else if(/*<>*/ risingRadiationValueRead) /*[IfValueReadySetTo0]*/
        /*[<= 0]*/
/*<>*/         valueReady <= 0;
    else if(sendNextValue)
        /*[<= 1]*/
/*<>*/         valueReady <= 1;
    else
        /*[<=]*/
/*<>*/         valueReady <= valueReady;
end


// /*[Counter --count countAmount --start valueReady && $radiationValue.read]*/
// reg [31:0] counter;

reg [15:0] nextValueDelay;
/*[always nextValueDelay]*//*<>:*/
always@(posedge clk)/*:<>*/ begin
    /*[Reset]*/
/*<>*/     if(!reset)
        /*[<= 0]*/
/*<>*/         nextValueDelay <= 0;
    else if(/*[this]*//*<>:*/ nextValueDelay/*:<>*/ > 0)
        /*[<= this - 1]*/
/*<>*/         nextValueDelay <= nextValueDelay - 1;
    else if(sendNextValue)
        /*[<= $radiationMemory.dataOutB[31:16]]*/
/*<>*/         nextValueDelay <= radiationMemoryDataOutB[31:16];
    else if(/*[$radiationMemory.addressB]*//*<>:*/ radiationMemoryAddressB/*:<>*/ != /*[$radiationMemory.addressA]*//*<>:*/ radiationMemoryAddressA/*:<>*/ && /*[$radiationMemory.addressB]*//*<>:*/ radiationMemoryAddressB/*:<>*/ == /*[$radiationMemory.addressA.previous]*//*<>:*/ p1_radiationMemoryAddressA/*:<>*/)
    // else if(radiationMemoryAddressBTemp != /*[$radiationMemory.addressA]*/ && radiationMemoryAddressBTemp == /*[$radiationMemory.addressA.previous]*/)
        /*[<= 50000]*/
/*<>*/         nextValueDelay <= 50000;
    else
        /*[<=]*/
/*<>*/         nextValueDelay <= nextValueDelay;
end

/*[Previous]*/
/*<>*/ /*[$nextValueDelay.previous]*/
reg [31:0] p1_nextValueDelay;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         p1_nextValueDelay <= 0;
/*<>*/     else
/*<>*/         p1_nextValueDelay <= nextValueDelay;
/*<>*/ end

wire getNextValue;
assign getNextValue = nextValueDelay == 0 && /*[$nextValueDelay.previous]*//*<>:*/ p1_nextValueDelay/*:<>*/ != 0;

/*[Previous]*/
/*<>*/ /*[$getNextValue.previous]*/
reg p1_getNextValue;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         p1_getNextValue <= 0;
/*<>*/     else
/*<>*/         p1_getNextValue <= getNextValue;
/*<>*/ end
/*[Previous]*/
/*<>*/ /*[$p1_getNextValue.previous]*/
reg p2_getNextValue;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         p2_getNextValue <= 0;
/*<>*/     else
/*<>*/         p2_getNextValue <= p1_getNextValue;
/*<>*/ end

/*[Previous --signal p2_getNextValue]*/
/*<>*/ /*[$p2_getNextValue.previous]*/
reg sendNextValue;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         sendNextValue <= 0;
/*<>*/     else
/*<>*/         sendNextValue <= p2_getNextValue;
/*<>*/ end

/*[External]*/
/*<>*/ //[AxiReg:RadiationReceiver]
reg [31:0] nextValueDelaySaved;
/*<>*/ //***Base:     $nextValueDelaySaved
/*<>*/ //***Members:  $.write, $.writeValue, $.read
/*<>*/ /*[$nextValueDelaySaved.write]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_nextValueDelaySaved_WriteReceived]
/*<>*/     wire nextValueDelaySaved_Write;
/*<>*/ /*[$nextValueDelaySaved.writeValue]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_nextValueDelaySaved_Write]
/*<>*/     wire [31:0] nextValueDelaySaved_WriteValue;
/*<>*/ /*[$nextValueDelaySaved.read]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_nextValueDelaySaved_ReadReceived]
/*<>*/     wire nextValueDelaySaved_Read;

/*[always nextValueDelaySaved]*//*<>:*/
always@(posedge clk)/*:<>*/ begin
    /*[Reset]*/
/*<>*/     if(!reset)
        /*[<= 0]*/
/*<>*/         nextValueDelaySaved <= 0;
    else if(nextValueDelay > nextValueDelaySaved)
        /*[<= nextValueDelay]*/
/*<>*/         nextValueDelaySaved <= nextValueDelay;
    else
        /*[<=]*/
/*<>*/         nextValueDelaySaved <= nextValueDelaySaved;
end


/*[RisingEdge]*/
/*<>*/ /*[$valueReady.rising]*/
wire risingValueReady;
/*<>*/ //[Previous valueReady]
/*<>*/  /*[$valueReady.previous]*/
/*<>*/ reg p1_valueReady;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         p1_valueReady <= 0;
/*<>*/     else
/*<>*/         p1_valueReady <= valueReady;
/*<>*/ end
/*<>*/
/*<>*/ assign risingValueReady = valueReady && !p1_valueReady;

/*[External --pulse]*/
/*<>*/ //[AxiReg:RadiationReceiver pulse]
wire valueProcessingFinished;
/*<>*/ //***Base:     $valueProcessingFinished
/*<>*/ //***Members:  $.pulse
/*<>*/ /*[$valueProcessingFinished.pulse valueProcessingFinished]*/
/*<>*/ //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_valueProcessingFinished_WriteReceived]
/*<>*/ wire valueProcessingFinished_Write;
/*<>*/ /*[RisingEdge]*/
/*<>*/  /*[$valueProcessingFinished_Write.rising]*/
/*<>*/ wire risingValueProcessingFinished_Write;
/*<>*/ //[Previous valueProcessingFinished_Write]
/*<>*/  /*[$valueProcessingFinished_Write.previous]*/
/*<>*/ reg p1_valueProcessingFinished_Write;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         p1_valueProcessingFinished_Write <= 0;
/*<>*/     else
/*<>*/         p1_valueProcessingFinished_Write <= valueProcessingFinished_Write;
/*<>*/ end
/*<>*/
/*<>*/ assign risingValueProcessingFinished_Write = valueProcessingFinished_Write && !p1_valueProcessingFinished_Write;
/*<>*/ assign valueProcessingFinished = risingValueProcessingFinished_Write;

/*[External]*/
/*<>*/ //[AxiReg:RadiationReceiver]
/*[Timer --start risingValueReady --stop valueProcessingFinished]*/
reg [31:0] radiationTimer;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         radiationTimer <= 0;
/*<>*/     else
/*<>*/     if(risingValueReady)
/*<>*/         radiationTimer <= 1;
/*<>*/     else if(valueProcessingFinished)
/*<>*/         radiationTimer <= 0;
/*<>*/     else if(radiationTimer > 0)
/*<>*/         radiationTimer <= radiationTimer + 1;
/*<>*/     else
/*<>*/         radiationTimer <= radiationTimer;
/*<>*/ end
/*<>*/ //***Base:     $radiationTimer
/*<>*/ //***Members:  $.write, $.writeValue, $.read
/*<>*/ /*[$radiationTimer.write]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_radiationTimer_WriteReceived]
/*<>*/     wire radiationTimer_Write;
/*<>*/ /*[$radiationTimer.writeValue]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_radiationTimer_Write]
/*<>*/     wire [31:0] radiationTimer_WriteValue;
/*<>*/ /*[$radiationTimer.read]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver RadiationProcessor_radiationTimer_ReadReceived]
/*<>*/     wire radiationTimer_Read;



//*********************************************************
//*************************  Memory  **********************
//*********************************************************

/*[DualMemory --name radiationMemory --addressWidth 14 --dataWidth 32]*/
/*<>*/ /*[$radiationMemory.writeA]*/ reg radiationMemoryWriteA;
/*<>*/ /*[$radiationMemory.addressA]*/ reg [13:0] radiationMemoryAddressA;
/*<>*/ /*[$radiationMemory.dataInA]*/ reg [31:0] radiationMemoryDataInA;
/*<>*/ /*[$radiationMemory.writeB]*/ reg radiationMemoryWriteB;
/*<>*/ /*[$radiationMemory.addressB]*/ reg [13:0] radiationMemoryAddressB;
/*<>*/ /*[$radiationMemory.dataInB]*/ reg [31:0] radiationMemoryDataInB;
/*<>*/
/*<>*/ /*[$radiationMemory.dataOutA]*/ wire [31:0] radiationMemoryDataOutA;
/*<>*/ /*[$radiationMemory.dataOutB]*/ wire [31:0] radiationMemoryDataOutB;
/*<>*/ BRAM_16384_32 memoryradiationMemory (
/*<>*/     .clka(clk),
/*<>*/     .addra(radiationMemoryAddressA),
/*<>*/     .dina(radiationMemoryDataInA),
/*<>*/     .wea(radiationMemoryWriteA),
/*<>*/     .clkb(clk),
/*<>*/     .addrb(radiationMemoryAddressB),
/*<>*/     .dinb(radiationMemoryDataInB),
/*<>*/     .web(radiationMemoryWriteB),
/*<>*/
/*<>*/     .douta(radiationMemoryDataOutA),
/*<>*/     .doutb(radiationMemoryDataOutB)
/*<>*/ );

/*[Previous $radiationMemory.addressA]*/
/*<>*/ /*[$radiationMemory.addressA.previous]*/
reg [13:0] p1_radiationMemoryAddressA;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         p1_radiationMemoryAddressA <= 0;
/*<>*/     else
/*<>*/         p1_radiationMemoryAddressA <= radiationMemoryAddressA;
/*<>*/ end



/*[always.memory radiationMemory A]*//*<>:*/
always@(posedge clk)/*:<>*/ begin
    /*[Reset]*/
/*<>*/     if(!reset)
        /*[<= 0]*/
/*<>*/         begin
/*<>*/             radiationMemoryWriteA <= 0;
/*<>*/             radiationMemoryAddressA <= 0;
/*<>*/             radiationMemoryDataInA <= 0;
/*<>*/         end
    else if(p3_risingEthernetValueWrite)
        /*[<= ethernetValue => @]*/
/*<>*/         begin
/*<>*/             radiationMemoryWriteA <= 1;
/*<>*/             radiationMemoryAddressA <= radiationMemoryAddressA;
/*<>*/             radiationMemoryDataInA <= ethernetValue;
/*<>*/         end
    else if(p4_risingEthernetValueWrite)
        /*[<= @ + 1]*/
/*<>*/         begin
/*<>*/             radiationMemoryWriteA <= 0;
/*<>*/             radiationMemoryAddressA <= radiationMemoryAddressA + 1;
/*<>*/             radiationMemoryDataInA <= 0;
/*<>*/         end
    else
        /*[<= @]*/
/*<>*/         begin
/*<>*/             radiationMemoryWriteA <= 0;
/*<>*/             radiationMemoryAddressA <= radiationMemoryAddressA;
/*<>*/             radiationMemoryDataInA <= 0;
/*<>*/         end
end


// always@(posedge clk) begin
//     /*[$radiationMemory.dataInB]*/ <= 0;
//     /*[$radiationMemory.writeB]*/ <= 0;
// end

// /*[always radiationMemoryAddressB]*/ begin
//     /*[<= radiationMemoryAddressBTemp - 1]*/
// end

// reg [13:0] radiationMemoryAddressBTemp;
// /*[always radiationMemoryAddressBTemp]*/ begin
//     /*[Reset]*/
//         /*[<= 0]*/
//     else if(getNextValue)
//         /*[<= this + 1]*/
//     else
//         /*[<= this]*/
// end


/*[always.memory radiationMemory B]*//*<>:*/
always@(posedge clk)/*:<>*/ begin
    /*[Reset]*/
/*<>*/     if(!reset)
        /*[<= 0]*/
/*<>*/         begin
/*<>*/             radiationMemoryWriteB <= 0;
/*<>*/             radiationMemoryAddressB <= 0;
/*<>*/             radiationMemoryDataInB <= 0;
/*<>*/         end
    else if(getNextValue)
        /*[<= @ + 1]*/
/*<>*/         begin
/*<>*/             radiationMemoryWriteB <= 0;
/*<>*/             radiationMemoryAddressB <= radiationMemoryAddressB + 1;
/*<>*/             radiationMemoryDataInB <= 0;
/*<>*/         end
    else
        /*[<= @]*/
/*<>*/         begin
/*<>*/             radiationMemoryWriteB <= 0;
/*<>*/             radiationMemoryAddressB <= radiationMemoryAddressB;
/*<>*/             radiationMemoryDataInB <= 0;
/*<>*/         end
end

/*<>*/ //***Module end code
/*<>*/ //***Start Routing Signals
/*<>*/ assign requestEthernetValues__OUTPUT = requestEthernetValues;
/*<>*/ assign valueReady__OUTPUT = valueReady;
/*<>*/ assign radiationValue__OUTPUT = radiationValue;
/*<>*/ assign debugSource__OUTPUT = debugSource;
/*<>*/ assign startReceivingData__OUTPUT = startReceivingData;
/*<>*/ assign ethernetLoadFloor__OUTPUT = ethernetLoadFloor;
/*<>*/ assign ethernetValue__OUTPUT = ethernetValue;
/*<>*/ assign ethernetValuesReceived__OUTPUT = ethernetValuesReceived;
/*<>*/ assign radiationValuesSent__OUTPUT = radiationValuesSent;
/*<>*/ assign countAmount__OUTPUT = countAmount;
/*<>*/ assign nextValueDelaySaved__OUTPUT = nextValueDelaySaved;
/*<>*/ assign radiationTimer__OUTPUT = radiationTimer;
endmodule