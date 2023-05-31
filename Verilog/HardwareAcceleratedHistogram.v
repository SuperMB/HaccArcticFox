//[ExternalGroup RadiationReceiver]
/*[NormalChecks]*/
/*<>*/ //[Check --clock]
/*<>*/  //*** Primary Clock: clk, for module: HardwareAcceleratedHistogram
/*<>*/ //[Check --reset]
/*<>*/  //*** Reset: reset, for module: HardwareAcceleratedHistogram
module HardwareAcceleratedHistogram(
/*<>*/     output [15:0] histogramReadValue__OUTPUT,
/*<>*/     input wire  clk,
/*<>*/     input wire  reset,
/*<>*/     input wire  valueReady,
/*<>*/     input wire [9:0] radiationValue,
/*<>*/     output [9:0] histogramReadAddress__OUTPUT,
/*<>*/     input wire  histogramReadAddress_Write,
/*<>*/     input wire [9:0] histogramReadAddress_WriteValue,
/*<>*/     input wire  histogramReadAddress_Read,
/*<>*/     input wire  histogramReadValue_Write,
/*<>*/     input wire [15:0] histogramReadValue_WriteValue,
/*<>*/     input wire  histogramReadValue_Read
);


/*[.RadiationReceiver]*/
wire clk;
/*[.RadiationReceiver S_AXI_ARESETN]*//*<>:*/ /*[Reset --activeLow]*/ /*:<>*/
/*[ResetTime --time 1000]*/
wire reset;

/*[.RadiationProcessor]*/
wire valueReady;
/*[.RadiationProcessor]*/
wire [9:0] radiationValue;




/*[DualMemory --name histogram --addressWidth 10 --dataWidth 16]*/
/*<>*/ /*[$histogram.writeA]*/ reg histogramWriteA;
/*<>*/ /*[$histogram.addressA]*/ reg [9:0] histogramAddressA;
/*<>*/ /*[$histogram.dataInA]*/ reg [15:0] histogramDataInA;
/*<>*/ /*[$histogram.writeB]*/ reg histogramWriteB;
/*<>*/ /*[$histogram.addressB]*/ reg [9:0] histogramAddressB;
/*<>*/ /*[$histogram.dataInB]*/ reg [15:0] histogramDataInB;
/*<>*/
/*<>*/ /*[$histogram.dataOutA]*/ wire [15:0] histogramDataOutA;
/*<>*/ /*[$histogram.dataOutB]*/ wire [15:0] histogramDataOutB;
/*<>*/ BRAM_1024_16 memoryhistogram (
/*<>*/     .clka(clk),
/*<>*/     .addra(histogramAddressA),
/*<>*/     .dina(histogramDataInA),
/*<>*/     .wea(histogramWriteA),
/*<>*/     .clkb(clk),
/*<>*/     .addrb(histogramAddressB),
/*<>*/     .dinb(histogramDataInB),
/*<>*/     .web(histogramWriteB),
/*<>*/
/*<>*/     .douta(histogramDataOutA),
/*<>*/     .doutb(histogramDataOutB)
/*<>*/ );

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

/*[Previous $valueReady.rising]*/
/*<>*/ /*[$valueReady.rising.previous]*/
reg p1_risingValueReady;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         p1_risingValueReady <= 0;
/*<>*/     else
/*<>*/         p1_risingValueReady <= risingValueReady;
/*<>*/ end

/*[Previous $valueReady.rising.previous]*/
/*<>*/ /*[$valueReady.rising.previous.previous]*/
reg p2_risingValueReady;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         p2_risingValueReady <= 0;
/*<>*/     else
/*<>*/         p2_risingValueReady <= p1_risingValueReady;
/*<>*/ end

/*[always.memory histogram A]*//*<>:*/
always@(posedge clk)/*:<>*/ begin
    /*[Reset]*/
/*<>*/     if(!reset)
        /*[<= 0]*/
/*<>*/         begin
/*<>*/             histogramWriteA <= 0;
/*<>*/             histogramAddressA <= 0;
/*<>*/             histogramDataInA <= 0;
/*<>*/         end
    else if(/*[$valueReady.rising]*//*<>:*/ risingValueReady/*:<>*/)
        /*[<= radiationValue]*/
/*<>*/         begin
/*<>*/             histogramWriteA <= 0;
/*<>*/             histogramAddressA <= radiationValue;
/*<>*/             histogramDataInA <= 0;
/*<>*/         end
    else if(/*[$valueReady.rising.previous.previous]*//*<>:*/ p2_risingValueReady/*:<>*/)
        /*[<= $histogram.dataOutA + 1 => @]*/
/*<>*/         begin
/*<>*/             histogramWriteA <= 1;
/*<>*/             histogramAddressA <= histogramAddressA;
/*<>*/             histogramDataInA <= histogramDataOutA + 1;
/*<>*/         end
    else
        /*[<=]*/
/*<>*/         begin
/*<>*/             histogramWriteA <= 0;
/*<>*/             histogramAddressA <= histogramAddressA;
/*<>*/             histogramDataInA <= histogramDataInA;
/*<>*/         end
end

/*[External]*/
/*<>*/ //[AxiReg:RadiationReceiver]
/*[BasicAxiReadWrite]*/
reg [9:0] histogramReadAddress;
/*<>*/ always@(posedge clk) begin
/*<>*/     if(!reset)
/*<>*/         histogramReadAddress <= 0;
/*<>*/     else if(/*[$histogramReadAddress.write]*//*<>:*/ histogramReadAddress_Write/*:<>*/)
/*<>*/         histogramReadAddress <= /*[$histogramReadAddress.writeValue]*//*<>:*/ histogramReadAddress_WriteValue/*:<>*/;
/*<>*/     else
/*<>*/         histogramReadAddress <= histogramReadAddress;
/*<>*/ end
/*<>*/ //***Base:     $histogramReadAddress
/*<>*/ //***Members:  $.write, $.writeValue, $.read
/*<>*/ /*[$histogramReadAddress.write]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver HardwareAcceleratedHistogram_histogramReadAddress_WriteReceived]
/*<>*/     wire histogramReadAddress_Write;
/*<>*/ /*[$histogramReadAddress.writeValue]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver HardwareAcceleratedHistogram_histogramReadAddress_Write]
/*<>*/     wire [9:0] histogramReadAddress_WriteValue;
/*<>*/ /*[$histogramReadAddress.read]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver HardwareAcceleratedHistogram_histogramReadAddress_ReadReceived]
/*<>*/     wire histogramReadAddress_Read;

/*[External]*/
/*<>*/ //[AxiReg:RadiationReceiver]
wire [15:0] histogramReadValue;
/*<>*/ //***Base:     $histogramReadValue
/*<>*/ //***Members:  $.write, $.writeValue, $.read
/*<>*/ /*[$histogramReadValue.write]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver HardwareAcceleratedHistogram_histogramReadValue_WriteReceived]
/*<>*/     wire histogramReadValue_Write;
/*<>*/ /*[$histogramReadValue.writeValue]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver HardwareAcceleratedHistogram_histogramReadValue_Write]
/*<>*/     wire [15:0] histogramReadValue_WriteValue;
/*<>*/ /*[$histogramReadValue.read]*/
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver HardwareAcceleratedHistogram_histogramReadValue_ReadReceived]
/*<>*/     wire histogramReadValue_Read;
assign histogramReadValue = /*[$histogram.dataOutB]*//*<>:*/ histogramDataOutB/*:<>*/;

always@(posedge clk) begin
    /*[$histogram.addressB]*//*<>:*/ histogramAddressB/*:<>*/ <= histogramReadAddress;
    /*[$histogram.writeB]*//*<>:*/ histogramWriteB/*:<>*/ <= 0;
    /*[$histogram.dataInB]*//*<>:*/ histogramDataInB/*:<>*/ <= 0;
end

/*<>*/ //***Module end code
/*<>*/ //***Start Routing Signals
/*<>*/ assign histogramReadValue__OUTPUT = histogramReadValue;
/*<>*/ assign histogramReadAddress__OUTPUT = histogramReadAddress;
endmodule