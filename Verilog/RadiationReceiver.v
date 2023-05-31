//[ExternalGroup RadiationReceiver]
//[ExternalConnection --axi4LiteSlave]
/*<>*/ //[Axi4LiteSlave:RadiationReceiver --top]
module RadiationReceiver(
/*<>*/     /*[.RadiationProcessor]*/
/*<>*/     output requestEthernetValues,
/*<>*/     /*[.RadiationProcessor]*/
/*<>*/     output valueReady, 
/*<>*/     //[Clock Secondary]
/*<>*/     input wire S_AXI_ACLK,
/*<>*/     //[Reset --activeLow]
/*<>*/     input wire   S_AXI_ARESETN,
/*<>*/     input wire   [5 : 0] S_AXI_AWADDR,
/*<>*/     input wire   [2 : 0] S_AXI_AWPROT,
/*<>*/     input wire   S_AXI_AWVALID,
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver]
/*<>*/     output wire  S_AXI_AWREADY,
/*<>*/     input wire   [31:0] S_AXI_WDATA,
/*<>*/     input wire   [3:0] S_AXI_WSTRB,
/*<>*/     input wire   S_AXI_WVALID,
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver]
/*<>*/     output wire  S_AXI_WREADY,
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver]
/*<>*/     output wire  [1 : 0] S_AXI_BRESP,
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver]
/*<>*/     output wire  S_AXI_BVALID,
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver]
/*<>*/     input wire   S_AXI_BREADY,
/*<>*/     input wire   [5 : 0] S_AXI_ARADDR,
/*<>*/     input wire   [2 : 0] S_AXI_ARPROT,
/*<>*/     input wire   S_AXI_ARVALID,
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver]
/*<>*/     output wire  S_AXI_ARREADY,
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver]
/*<>*/     output wire  [31:0] S_AXI_RDATA,
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver]
/*<>*/     output wire  [1 : 0] S_AXI_RRESP,
/*<>*/     //[.Axi4ListSlaveInterface_RadiationReceiver]
/*<>*/     output wire  S_AXI_RVALID,
/*<>*/     input wire   S_AXI_RREADY,
    //[Clock 100 MHz]
    input clk,

    output reg [3:0] leds
);
/*<>*/ //***Module start code
/*<>*/ Axi4ListSlaveInterface_RadiationReceiver axi4ListSlaveInterface_RadiationReceiver(
/*<>*/     .S_AXI_ACLK(S_AXI_ACLK),
/*<>*/     .S_AXI_ARESETN(S_AXI_ARESETN),
/*<>*/     .S_AXI_AWADDR(PUSHDOWN__S_AXI_AWADDR),
/*<>*/     .S_AXI_AWPROT(PUSHDOWN__S_AXI_AWPROT),
/*<>*/     .S_AXI_AWVALID(PUSHDOWN__S_AXI_AWVALID),
/*<>*/     .S_AXI_WDATA(PUSHDOWN__S_AXI_WDATA),
/*<>*/     .S_AXI_WSTRB(PUSHDOWN__S_AXI_WSTRB),
/*<>*/     .S_AXI_WVALID(PUSHDOWN__S_AXI_WVALID),
/*<>*/     .S_AXI_BREADY(PUSHDOWN__S_AXI_BREADY),
/*<>*/     .S_AXI_ARADDR(PUSHDOWN__S_AXI_ARADDR),
/*<>*/     .S_AXI_ARPROT(PUSHDOWN__S_AXI_ARPROT),
/*<>*/     .S_AXI_ARVALID(PUSHDOWN__S_AXI_ARVALID),
/*<>*/     .S_AXI_RREADY(PUSHDOWN__S_AXI_RREADY),
/*<>*/     .HardwareAcceleratedHistogram_histogramReadAddress_Read(RadiationReceiver__hardwareAcceleratedHistogram2__histogramReadAddress),
/*<>*/     .HardwareAcceleratedHistogram_histogramReadValue_Read(RadiationReceiver__hardwareAcceleratedHistogram2__histogramReadValue),
/*<>*/     .RadiationProcessor_debugSource_Read(RadiationReceiver__radiationProcessor1__debugSource),
/*<>*/     .RadiationProcessor_startReceivingData_Read(RadiationReceiver__radiationProcessor1__startReceivingData),
/*<>*/     .RadiationProcessor_ethernetLoadFloor_Read(RadiationReceiver__radiationProcessor1__ethernetLoadFloor),
/*<>*/     .RadiationProcessor_ethernetValue_Read(RadiationReceiver__radiationProcessor1__ethernetValue),
/*<>*/     .RadiationProcessor_ethernetValuesReceived_Read(RadiationReceiver__radiationProcessor1__ethernetValuesReceived),
/*<>*/     .RadiationProcessor_radiationValue_Read(RadiationReceiver__radiationProcessor1__radiationValue),
/*<>*/     .RadiationProcessor_radiationValuesSent_Read(RadiationReceiver__radiationProcessor1__radiationValuesSent),
/*<>*/     .RadiationProcessor_countAmount_Read(RadiationReceiver__radiationProcessor1__countAmount),
/*<>*/     .RadiationProcessor_nextValueDelaySaved_Read(RadiationReceiver__radiationProcessor1__nextValueDelaySaved),
/*<>*/     .RadiationProcessor_radiationTimer_Read(RadiationReceiver__radiationProcessor1__radiationTimer),
/*<>*/     .RadiationProcessor_debugSource_WriteReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_debugSource_WriteReceived),
/*<>*/     .RadiationProcessor_debugSource_Write__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_debugSource_Write),
/*<>*/     .RadiationProcessor_debugSource_ReadReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_debugSource_ReadReceived),
/*<>*/     .RadiationProcessor_startReceivingData_WriteReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_startReceivingData_WriteReceived),
/*<>*/     .RadiationProcessor_startReceivingData_Write__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_startReceivingData_Write),
/*<>*/     .RadiationProcessor_startReceivingData_ReadReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_startReceivingData_ReadReceived),
/*<>*/     .RadiationProcessor_ethernetLoadFloor_WriteReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetLoadFloor_WriteReceived),
/*<>*/     .RadiationProcessor_ethernetLoadFloor_Write__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetLoadFloor_Write),
/*<>*/     .RadiationProcessor_ethernetLoadFloor_ReadReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetLoadFloor_ReadReceived),
/*<>*/     .RadiationProcessor_clearRequestEthernetValues_WriteReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_clearRequestEthernetValues_WriteReceived),
/*<>*/     .RadiationProcessor_ethernetValue_WriteReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValue_WriteReceived),
/*<>*/     .RadiationProcessor_ethernetValue_Write__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValue_Write),
/*<>*/     .RadiationProcessor_ethernetValue_ReadReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValue_ReadReceived),
/*<>*/     .RadiationProcessor_ethernetValuesReceived_WriteReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValuesReceived_WriteReceived),
/*<>*/     .RadiationProcessor_ethernetValuesReceived_Write__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValuesReceived_Write),
/*<>*/     .RadiationProcessor_ethernetValuesReceived_ReadReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValuesReceived_ReadReceived),
/*<>*/     .RadiationProcessor_radiationValue_WriteReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValue_WriteReceived),
/*<>*/     .RadiationProcessor_radiationValue_Write__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValue_Write),
/*<>*/     .RadiationProcessor_radiationValue_ReadReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValue_ReadReceived),
/*<>*/     .RadiationProcessor_radiationValuesSent_WriteReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValuesSent_WriteReceived),
/*<>*/     .RadiationProcessor_radiationValuesSent_Write__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValuesSent_Write),
/*<>*/     .RadiationProcessor_radiationValuesSent_ReadReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValuesSent_ReadReceived),
/*<>*/     .RadiationProcessor_countAmount_WriteReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_countAmount_WriteReceived),
/*<>*/     .RadiationProcessor_countAmount_Write__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_countAmount_Write),
/*<>*/     .RadiationProcessor_countAmount_ReadReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_countAmount_ReadReceived),
/*<>*/     .RadiationProcessor_nextValueDelaySaved_WriteReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_nextValueDelaySaved_WriteReceived),
/*<>*/     .RadiationProcessor_nextValueDelaySaved_Write__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_nextValueDelaySaved_Write),
/*<>*/     .RadiationProcessor_nextValueDelaySaved_ReadReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_nextValueDelaySaved_ReadReceived),
/*<>*/     .RadiationProcessor_valueProcessingFinished_WriteReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_valueProcessingFinished_WriteReceived),
/*<>*/     .RadiationProcessor_radiationTimer_WriteReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationTimer_WriteReceived),
/*<>*/     .RadiationProcessor_radiationTimer_Write__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationTimer_Write),
/*<>*/     .RadiationProcessor_radiationTimer_ReadReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationTimer_ReadReceived),
/*<>*/     .S_AXI_AWREADY__OUTPUT(S_AXI_AWREADY),
/*<>*/     .S_AXI_WREADY__OUTPUT(S_AXI_WREADY),
/*<>*/     .S_AXI_BRESP__OUTPUT(S_AXI_BRESP),
/*<>*/     .S_AXI_BVALID__OUTPUT(S_AXI_BVALID),
/*<>*/     .S_AXI_BREADY__OUTPUT(S_AXI_BREADY),
/*<>*/     .S_AXI_ARREADY__OUTPUT(S_AXI_ARREADY),
/*<>*/     .S_AXI_RDATA__OUTPUT(S_AXI_RDATA),
/*<>*/     .S_AXI_RRESP__OUTPUT(S_AXI_RRESP),
/*<>*/     .S_AXI_RVALID__OUTPUT(S_AXI_RVALID),
/*<>*/     .HardwareAcceleratedHistogram_histogramReadAddress_WriteReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadAddress_WriteReceived),
/*<>*/     .HardwareAcceleratedHistogram_histogramReadAddress_Write__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadAddress_Write),
/*<>*/     .HardwareAcceleratedHistogram_histogramReadAddress_ReadReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadAddress_ReadReceived),
/*<>*/     .HardwareAcceleratedHistogram_histogramReadValue_WriteReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadValue_WriteReceived),
/*<>*/     .HardwareAcceleratedHistogram_histogramReadValue_Write__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadValue_Write),
/*<>*/     .HardwareAcceleratedHistogram_histogramReadValue_ReadReceived__OUTPUT(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadValue_ReadReceived)
/*<>*/ );
/*<>*/ //***Start Routing Signals
/*<>*/ wire  RadiationReceiver__radiationProcessor1__valueReady;
/*<>*/ wire [9:0] RadiationReceiver__radiationProcessor1__radiationValue;
/*<>*/ wire [5 : 0] PUSHDOWN__S_AXI_AWADDR;
/*<>*/ wire [2 : 0] PUSHDOWN__S_AXI_AWPROT;
/*<>*/ wire  PUSHDOWN__S_AXI_AWVALID;
/*<>*/ wire [31 : 0] PUSHDOWN__S_AXI_WDATA;
/*<>*/ wire [3 : 0] PUSHDOWN__S_AXI_WSTRB;
/*<>*/ wire  PUSHDOWN__S_AXI_WVALID;
/*<>*/ wire  PUSHDOWN__S_AXI_BREADY;
/*<>*/ wire [5 : 0] PUSHDOWN__S_AXI_ARADDR;
/*<>*/ wire [2 : 0] PUSHDOWN__S_AXI_ARPROT;
/*<>*/ wire  PUSHDOWN__S_AXI_ARVALID;
/*<>*/ wire  PUSHDOWN__S_AXI_RREADY;
/*<>*/ wire [9:0] RadiationReceiver__hardwareAcceleratedHistogram2__histogramReadAddress;
/*<>*/ wire [15:0] RadiationReceiver__hardwareAcceleratedHistogram2__histogramReadValue;
/*<>*/ wire [31:0] RadiationReceiver__radiationProcessor1__debugSource;
/*<>*/ wire  RadiationReceiver__radiationProcessor1__startReceivingData;
/*<>*/ wire [15:0] RadiationReceiver__radiationProcessor1__ethernetLoadFloor;
/*<>*/ wire [31:0] RadiationReceiver__radiationProcessor1__ethernetValue;
/*<>*/ wire [31:0] RadiationReceiver__radiationProcessor1__ethernetValuesReceived;
/*<>*/ wire [31:0] RadiationReceiver__radiationProcessor1__radiationValue;
/*<>*/ wire [31:0] RadiationReceiver__radiationProcessor1__radiationValuesSent;
/*<>*/ wire [31:0] RadiationReceiver__radiationProcessor1__countAmount;
/*<>*/ wire [31:0] RadiationReceiver__radiationProcessor1__nextValueDelaySaved;
/*<>*/ wire [31:0] RadiationReceiver__radiationProcessor1__radiationTimer;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_debugSource_WriteReceived;
/*<>*/ wire [31:0] RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_debugSource_Write;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_debugSource_ReadReceived;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_startReceivingData_WriteReceived;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_startReceivingData_Write;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_startReceivingData_ReadReceived;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetLoadFloor_WriteReceived;
/*<>*/ wire [15:0] RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetLoadFloor_Write;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetLoadFloor_ReadReceived;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_clearRequestEthernetValues_WriteReceived;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValue_WriteReceived;
/*<>*/ wire [31:0] RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValue_Write;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValue_ReadReceived;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValuesReceived_WriteReceived;
/*<>*/ wire [31:0] RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValuesReceived_Write;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValuesReceived_ReadReceived;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValue_WriteReceived;
/*<>*/ wire [31:0] RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValue_Write;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValue_ReadReceived;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValuesSent_WriteReceived;
/*<>*/ wire [31:0] RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValuesSent_Write;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValuesSent_ReadReceived;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_countAmount_WriteReceived;
/*<>*/ wire [31:0] RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_countAmount_Write;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_countAmount_ReadReceived;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_nextValueDelaySaved_WriteReceived;
/*<>*/ wire [31:0] RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_nextValueDelaySaved_Write;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_nextValueDelaySaved_ReadReceived;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_valueProcessingFinished_WriteReceived;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationTimer_WriteReceived;
/*<>*/ wire [31:0] RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationTimer_Write;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationTimer_ReadReceived;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadAddress_WriteReceived;
/*<>*/ wire [9:0] RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadAddress_Write;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadAddress_ReadReceived;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadValue_WriteReceived;
/*<>*/ wire [15:0] RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadValue_Write;
/*<>*/ wire  RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadValue_ReadReceived;


//[+RadiationProcessor]
/*~<>*/ RadiationProcessor radiationProcessor1 (
/*<>*/     .clk(clk),
/*<>*/     .reset(S_AXI_ARESETN),
/*<>*/     .requestEthernetValues__OUTPUT(requestEthernetValues),
/*<>*/     .valueReady__OUTPUT(valueReady),
/*<>*/     .radiationValue__OUTPUT(RadiationReceiver__radiationProcessor1__radiationValue),
/*<>*/     .debugSource__OUTPUT(RadiationReceiver__radiationProcessor1__debugSource),
/*<>*/     .startReceivingData__OUTPUT(RadiationReceiver__radiationProcessor1__startReceivingData),
/*<>*/     .ethernetLoadFloor__OUTPUT(RadiationReceiver__radiationProcessor1__ethernetLoadFloor),
/*<>*/     .ethernetValue__OUTPUT(RadiationReceiver__radiationProcessor1__ethernetValue),
/*<>*/     .ethernetValuesReceived__OUTPUT(RadiationReceiver__radiationProcessor1__ethernetValuesReceived),
/*<>*/     .radiationValuesSent__OUTPUT(RadiationReceiver__radiationProcessor1__radiationValuesSent),
/*<>*/     .countAmount__OUTPUT(RadiationReceiver__radiationProcessor1__countAmount),
/*<>*/     .nextValueDelaySaved__OUTPUT(RadiationReceiver__radiationProcessor1__nextValueDelaySaved),
/*<>*/     .radiationTimer__OUTPUT(RadiationReceiver__radiationProcessor1__radiationTimer),
/*<>*/     .debugSource_Write(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_debugSource_WriteReceived),
/*<>*/     .debugSource_WriteValue(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_debugSource_Write),
/*<>*/     .debugSource_Read(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_debugSource_ReadReceived),
/*<>*/     .startReceivingData_Write(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_startReceivingData_WriteReceived),
/*<>*/     .startReceivingData_WriteValue(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_startReceivingData_Write),
/*<>*/     .startReceivingData_Read(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_startReceivingData_ReadReceived),
/*<>*/     .ethernetLoadFloor_Write(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetLoadFloor_WriteReceived),
/*<>*/     .ethernetLoadFloor_WriteValue(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetLoadFloor_Write),
/*<>*/     .ethernetLoadFloor_Read(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetLoadFloor_ReadReceived),
/*<>*/     .clearRequestEthernetValues_Write(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_clearRequestEthernetValues_WriteReceived),
/*<>*/     .ethernetValue_Write(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValue_WriteReceived),
/*<>*/     .ethernetValue_WriteValue(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValue_Write),
/*<>*/     .ethernetValue_Read(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValue_ReadReceived),
/*<>*/     .ethernetValuesReceived_Write(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValuesReceived_WriteReceived),
/*<>*/     .ethernetValuesReceived_WriteValue(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValuesReceived_Write),
/*<>*/     .ethernetValuesReceived_Read(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_ethernetValuesReceived_ReadReceived),
/*<>*/     .radiationValue_Write(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValue_WriteReceived),
/*<>*/     .radiationValue_WriteValue(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValue_Write),
/*<>*/     .radiationValue_Read(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValue_ReadReceived),
/*<>*/     .radiationValuesSent_Write(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValuesSent_WriteReceived),
/*<>*/     .radiationValuesSent_WriteValue(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValuesSent_Write),
/*<>*/     .radiationValuesSent_Read(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationValuesSent_ReadReceived),
/*<>*/     .countAmount_Write(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_countAmount_WriteReceived),
/*<>*/     .countAmount_WriteValue(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_countAmount_Write),
/*<>*/     .countAmount_Read(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_countAmount_ReadReceived),
/*<>*/     .nextValueDelaySaved_Write(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_nextValueDelaySaved_WriteReceived),
/*<>*/     .nextValueDelaySaved_WriteValue(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_nextValueDelaySaved_Write),
/*<>*/     .nextValueDelaySaved_Read(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_nextValueDelaySaved_ReadReceived),
/*<>*/     .valueProcessingFinished_Write(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_valueProcessingFinished_WriteReceived),
/*<>*/     .radiationTimer_Write(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationTimer_WriteReceived),
/*<>*/     .radiationTimer_WriteValue(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationTimer_Write),
/*<>*/     .radiationTimer_Read(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__RadiationProcessor_radiationTimer_ReadReceived)
/*~<>*/ );

/*[+HardwareAcceleratedHistogram]*/
/*~<>*/ HardwareAcceleratedHistogram hardwareAcceleratedHistogram2 (
/*<>*/     .histogramReadValue__OUTPUT(histogramReadValue),
/*<>*/     .clk(clk),
/*<>*/     .reset(S_AXI_ARESETN),
/*<>*/     .valueReady(RadiationReceiver__radiationProcessor1__valueReady),
/*<>*/     .radiationValue(RadiationReceiver__radiationProcessor1__radiationValue),
/*<>*/     .histogramReadAddress__OUTPUT(RadiationReceiver__hardwareAcceleratedHistogram2__histogramReadAddress),
/*<>*/     .histogramReadAddress_Write(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadAddress_WriteReceived),
/*<>*/     .histogramReadAddress_WriteValue(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadAddress_Write),
/*<>*/     .histogramReadAddress_Read(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadAddress_ReadReceived),
/*<>*/     .histogramReadValue_Write(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadValue_WriteReceived),
/*<>*/     .histogramReadValue_WriteValue(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadValue_Write),
/*<>*/     .histogramReadValue_Read(RadiationReceiver__axi4ListSlaveInterface_RadiationReceiver__HardwareAcceleratedHistogram_histogramReadValue_ReadReceived)
/*~<>*/ );

/*[.HardwareAcceleratedHistogram]*/
wire [15:0] histogramReadValue;

/*<>*/ //***Module end code
/*<>*/ assign RadiationReceiver__radiationProcessor1__valueReady = valueReady;
/*<>*/ //***Start Routing Signals
/*<>*/ assign PUSHDOWN__S_AXI_AWADDR = S_AXI_AWADDR;
/*<>*/ assign PUSHDOWN__S_AXI_AWPROT = S_AXI_AWPROT;
/*<>*/ assign PUSHDOWN__S_AXI_AWVALID = S_AXI_AWVALID;
/*<>*/ assign PUSHDOWN__S_AXI_WDATA = S_AXI_WDATA;
/*<>*/ assign PUSHDOWN__S_AXI_WSTRB = S_AXI_WSTRB;
/*<>*/ assign PUSHDOWN__S_AXI_WVALID = S_AXI_WVALID;
/*<>*/ assign PUSHDOWN__S_AXI_BREADY = S_AXI_BREADY;
/*<>*/ assign PUSHDOWN__S_AXI_ARADDR = S_AXI_ARADDR;
/*<>*/ assign PUSHDOWN__S_AXI_ARPROT = S_AXI_ARPROT;
/*<>*/ assign PUSHDOWN__S_AXI_ARVALID = S_AXI_ARVALID;
/*<>*/ assign PUSHDOWN__S_AXI_RREADY = S_AXI_RREADY;
/*<>*/ assign RadiationReceiver__hardwareAcceleratedHistogram2__histogramReadValue = histogramReadValue;
endmodule
/*<>*/ //[Axi4LiteSlave:RadiationReceiver --interpreter]
/*<>*/ /*[NormalChecks]*/
/*<>*/  //[Check --clock]
/*<>*/   //*** Primary Clock: S_AXI_ACLK, for module: Axi4ListSlaveInterface_RadiationReceiver
/*<>*/  //[Check --reset]
/*<>*/   //*** Reset: S_AXI_ARESETN, for module: Axi4ListSlaveInterface_RadiationReceiver
/*<>*/ module Axi4ListSlaveInterface_RadiationReceiver(
/*<>*/     input wire  S_AXI_ACLK,
/*<>*/     input wire  S_AXI_ARESETN,
/*<>*/     input wire [5 : 0] S_AXI_AWADDR,
/*<>*/     input wire [2 : 0] S_AXI_AWPROT,
/*<>*/     input wire  S_AXI_AWVALID,
/*<>*/     input wire [31 : 0] S_AXI_WDATA,
/*<>*/     input wire [3 : 0] S_AXI_WSTRB,
/*<>*/     input wire  S_AXI_WVALID,
/*<>*/     input wire  S_AXI_BREADY,
/*<>*/     input wire [5 : 0] S_AXI_ARADDR,
/*<>*/     input wire [2 : 0] S_AXI_ARPROT,
/*<>*/     input wire  S_AXI_ARVALID,
/*<>*/     input wire  S_AXI_RREADY,
/*<>*/     input wire [9:0] HardwareAcceleratedHistogram_histogramReadAddress_Read,
/*<>*/     input wire [15:0] HardwareAcceleratedHistogram_histogramReadValue_Read,
/*<>*/     input wire [31:0] RadiationProcessor_debugSource_Read,
/*<>*/     input wire  RadiationProcessor_startReceivingData_Read,
/*<>*/     input wire [15:0] RadiationProcessor_ethernetLoadFloor_Read,
/*<>*/     input wire [31:0] RadiationProcessor_ethernetValue_Read,
/*<>*/     input wire [31:0] RadiationProcessor_ethernetValuesReceived_Read,
/*<>*/     input wire [31:0] RadiationProcessor_radiationValue_Read,
/*<>*/     input wire [31:0] RadiationProcessor_radiationValuesSent_Read,
/*<>*/     input wire [31:0] RadiationProcessor_countAmount_Read,
/*<>*/     input wire [31:0] RadiationProcessor_nextValueDelaySaved_Read,
/*<>*/     input wire [31:0] RadiationProcessor_radiationTimer_Read,
/*<>*/     output  RadiationProcessor_debugSource_WriteReceived__OUTPUT,
/*<>*/     output [31:0] RadiationProcessor_debugSource_Write__OUTPUT,
/*<>*/     output  RadiationProcessor_debugSource_ReadReceived__OUTPUT,
/*<>*/     output  RadiationProcessor_startReceivingData_WriteReceived__OUTPUT,
/*<>*/     output  RadiationProcessor_startReceivingData_Write__OUTPUT,
/*<>*/     output  RadiationProcessor_startReceivingData_ReadReceived__OUTPUT,
/*<>*/     output  RadiationProcessor_ethernetLoadFloor_WriteReceived__OUTPUT,
/*<>*/     output [15:0] RadiationProcessor_ethernetLoadFloor_Write__OUTPUT,
/*<>*/     output  RadiationProcessor_ethernetLoadFloor_ReadReceived__OUTPUT,
/*<>*/     output  RadiationProcessor_clearRequestEthernetValues_WriteReceived__OUTPUT,
/*<>*/     output  RadiationProcessor_ethernetValue_WriteReceived__OUTPUT,
/*<>*/     output [31:0] RadiationProcessor_ethernetValue_Write__OUTPUT,
/*<>*/     output  RadiationProcessor_ethernetValue_ReadReceived__OUTPUT,
/*<>*/     output  RadiationProcessor_ethernetValuesReceived_WriteReceived__OUTPUT,
/*<>*/     output [31:0] RadiationProcessor_ethernetValuesReceived_Write__OUTPUT,
/*<>*/     output  RadiationProcessor_ethernetValuesReceived_ReadReceived__OUTPUT,
/*<>*/     output  RadiationProcessor_radiationValue_WriteReceived__OUTPUT,
/*<>*/     output [31:0] RadiationProcessor_radiationValue_Write__OUTPUT,
/*<>*/     output  RadiationProcessor_radiationValue_ReadReceived__OUTPUT,
/*<>*/     output  RadiationProcessor_radiationValuesSent_WriteReceived__OUTPUT,
/*<>*/     output [31:0] RadiationProcessor_radiationValuesSent_Write__OUTPUT,
/*<>*/     output  RadiationProcessor_radiationValuesSent_ReadReceived__OUTPUT,
/*<>*/     output  RadiationProcessor_countAmount_WriteReceived__OUTPUT,
/*<>*/     output [31:0] RadiationProcessor_countAmount_Write__OUTPUT,
/*<>*/     output  RadiationProcessor_countAmount_ReadReceived__OUTPUT,
/*<>*/     output  RadiationProcessor_nextValueDelaySaved_WriteReceived__OUTPUT,
/*<>*/     output [31:0] RadiationProcessor_nextValueDelaySaved_Write__OUTPUT,
/*<>*/     output  RadiationProcessor_nextValueDelaySaved_ReadReceived__OUTPUT,
/*<>*/     output  RadiationProcessor_valueProcessingFinished_WriteReceived__OUTPUT,
/*<>*/     output  RadiationProcessor_radiationTimer_WriteReceived__OUTPUT,
/*<>*/     output [31:0] RadiationProcessor_radiationTimer_Write__OUTPUT,
/*<>*/     output  RadiationProcessor_radiationTimer_ReadReceived__OUTPUT,
/*<>*/     output  S_AXI_AWREADY__OUTPUT,
/*<>*/     output  S_AXI_WREADY__OUTPUT,
/*<>*/     output [1 : 0] S_AXI_BRESP__OUTPUT,
/*<>*/     output  S_AXI_BVALID__OUTPUT,
/*<>*/     output  S_AXI_BREADY__OUTPUT,
/*<>*/     output  S_AXI_ARREADY__OUTPUT,
/*<>*/     output [31:0] S_AXI_RDATA__OUTPUT,
/*<>*/     output [1 : 0] S_AXI_RRESP__OUTPUT,
/*<>*/     output  S_AXI_RVALID__OUTPUT,
/*<>*/     output  HardwareAcceleratedHistogram_histogramReadAddress_WriteReceived__OUTPUT,
/*<>*/     output [9:0] HardwareAcceleratedHistogram_histogramReadAddress_Write__OUTPUT,
/*<>*/     output  HardwareAcceleratedHistogram_histogramReadAddress_ReadReceived__OUTPUT,
/*<>*/     output  HardwareAcceleratedHistogram_histogramReadValue_WriteReceived__OUTPUT,
/*<>*/     output [15:0] HardwareAcceleratedHistogram_histogramReadValue_Write__OUTPUT,
/*<>*/     output  HardwareAcceleratedHistogram_histogramReadValue_ReadReceived__OUTPUT
/*<>*/ );
/*<>*/ //***Module start code
/*<>*/
/*<>*/
/*<>*/
/*<>*/ // Based on Xilinx implementation of Axi Lite Slave
/*<>*/ //[.RadiationReceiver]
/*<>*/ //[Clock]
/*<>*/ wire S_AXI_ACLK;
/*<>*/ //[.RadiationReceiver]
/*<>*/  //[Reset --activeLow]
/*<>*/ wire S_AXI_ARESETN;
/*<>*/ //[.RadiationReceiver]
/*<>*/ wire [5 : 0] S_AXI_AWADDR;
/*<>*/ //[.RadiationReceiver]
/*<>*/ wire [2 : 0] S_AXI_AWPROT;
/*<>*/ //[.RadiationReceiver]
/*<>*/ wire S_AXI_AWVALID;
/*<>*/ //[.RadiationReceiver]
/*<>*/ wire [31 : 0] S_AXI_WDATA;
/*<>*/ //[.RadiationReceiver]
/*<>*/ wire [3 : 0] S_AXI_WSTRB;
/*<>*/ //[.RadiationReceiver]
/*<>*/ wire S_AXI_WVALID;
/*<>*/ //[.RadiationReceiver]
/*<>*/ wire S_AXI_BREADY;
/*<>*/ //[.RadiationReceiver]
/*<>*/ wire [5 : 0] S_AXI_ARADDR;
/*<>*/ //[.RadiationReceiver]
/*<>*/ wire [2 : 0] S_AXI_ARPROT;
/*<>*/ //[.RadiationReceiver]
/*<>*/ wire S_AXI_ARVALID;
/*<>*/ //[.RadiationReceiver]
/*<>*/ wire S_AXI_RREADY;
/*<>*/
/*<>*/ wire S_AXI_AWREADY;
/*<>*/ wire S_AXI_WREADY;
/*<>*/ wire [1 : 0] S_AXI_BRESP;
/*<>*/ wire S_AXI_BVALID;
/*<>*/ wire S_AXI_ARREADY;
/*<>*/ wire [31 : 0] S_AXI_RDATA;
/*<>*/ wire [1 : 0] S_AXI_RRESP;
/*<>*/ wire S_AXI_RVALID;
/*<>*/ wire HardwareAcceleratedHistogram_histogramReadAddress_WriteReceived_ToFlop;
/*<>*/ assign HardwareAcceleratedHistogram_histogramReadAddress_WriteReceived_ToFlop = slv_reg_wren && axi_awaddr == 0;
/*<>*/ //[Previous HardwareAcceleratedHistogram_histogramReadAddress_WriteReceived_ToFlop]
/*<>*/  /*[$HardwareAcceleratedHistogram_histogramReadAddress_WriteReceived_ToFlop.previous]*/
/*<>*/ reg HardwareAcceleratedHistogram_histogramReadAddress_WriteReceived;
/*<>*/ always@(posedge S_AXI_ACLK) begin
/*<>*/     if(!S_AXI_ARESETN)
/*<>*/         HardwareAcceleratedHistogram_histogramReadAddress_WriteReceived <= 0;
/*<>*/     else
/*<>*/         HardwareAcceleratedHistogram_histogramReadAddress_WriteReceived <= HardwareAcceleratedHistogram_histogramReadAddress_WriteReceived_ToFlop;
/*<>*/ end
/*<>*/ wire HardwareAcceleratedHistogram_histogramReadAddress_ReadReceived;
/*<>*/ assign HardwareAcceleratedHistogram_histogramReadAddress_ReadReceived = axi_araddr == 0 && axi_arready && S_AXI_ARVALID;
/*<>*/ //***Module end code
/*<>*/
/*<>*/ //[.HardwareAcceleratedHistogram histogramReadAddress]
/*<>*/ wire [9:0] HardwareAcceleratedHistogram_histogramReadAddress_Read;
/*<>*/ reg [9:0] HardwareAcceleratedHistogram_histogramReadAddress_Write;
/*<>*/ wire HardwareAcceleratedHistogram_histogramReadValue_WriteReceived_ToFlop;
/*<>*/ assign HardwareAcceleratedHistogram_histogramReadValue_WriteReceived_ToFlop = slv_reg_wren && axi_awaddr == 4;
/*<>*/ //[Previous HardwareAcceleratedHistogram_histogramReadValue_WriteReceived_ToFlop]
/*<>*/  /*[$HardwareAcceleratedHistogram_histogramReadValue_WriteReceived_ToFlop.previous]*/
/*<>*/ reg HardwareAcceleratedHistogram_histogramReadValue_WriteReceived;
/*<>*/ always@(posedge S_AXI_ACLK) begin
/*<>*/     if(!S_AXI_ARESETN)
/*<>*/         HardwareAcceleratedHistogram_histogramReadValue_WriteReceived <= 0;
/*<>*/     else
/*<>*/         HardwareAcceleratedHistogram_histogramReadValue_WriteReceived <= HardwareAcceleratedHistogram_histogramReadValue_WriteReceived_ToFlop;
/*<>*/ end
/*<>*/ wire HardwareAcceleratedHistogram_histogramReadValue_ReadReceived;
/*<>*/ assign HardwareAcceleratedHistogram_histogramReadValue_ReadReceived = axi_araddr == 4 && axi_arready && S_AXI_ARVALID;
/*<>*/ //[.HardwareAcceleratedHistogram histogramReadValue]
/*<>*/ wire [15:0] HardwareAcceleratedHistogram_histogramReadValue_Read;
/*<>*/ reg [15:0] HardwareAcceleratedHistogram_histogramReadValue_Write;
/*<>*/ wire RadiationProcessor_debugSource_WriteReceived_ToFlop;
/*<>*/ assign RadiationProcessor_debugSource_WriteReceived_ToFlop = slv_reg_wren && axi_awaddr == 8;
/*<>*/ //[Previous RadiationProcessor_debugSource_WriteReceived_ToFlop]
/*<>*/  /*[$RadiationProcessor_debugSource_WriteReceived_ToFlop.previous]*/
/*<>*/ reg RadiationProcessor_debugSource_WriteReceived;
/*<>*/ always@(posedge S_AXI_ACLK) begin
/*<>*/     if(!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_debugSource_WriteReceived <= 0;
/*<>*/     else
/*<>*/         RadiationProcessor_debugSource_WriteReceived <= RadiationProcessor_debugSource_WriteReceived_ToFlop;
/*<>*/ end
/*<>*/ wire RadiationProcessor_debugSource_ReadReceived;
/*<>*/ assign RadiationProcessor_debugSource_ReadReceived = axi_araddr == 8 && axi_arready && S_AXI_ARVALID;
/*<>*/ //[.RadiationProcessor debugSource]
/*<>*/ wire [31:0] RadiationProcessor_debugSource_Read;
/*<>*/ reg [31:0] RadiationProcessor_debugSource_Write;
/*<>*/ wire RadiationProcessor_startReceivingData_WriteReceived_ToFlop;
/*<>*/ assign RadiationProcessor_startReceivingData_WriteReceived_ToFlop = slv_reg_wren && axi_awaddr == 12;
/*<>*/ //[Previous RadiationProcessor_startReceivingData_WriteReceived_ToFlop]
/*<>*/  /*[$RadiationProcessor_startReceivingData_WriteReceived_ToFlop.previous]*/
/*<>*/ reg RadiationProcessor_startReceivingData_WriteReceived;
/*<>*/ always@(posedge S_AXI_ACLK) begin
/*<>*/     if(!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_startReceivingData_WriteReceived <= 0;
/*<>*/     else
/*<>*/         RadiationProcessor_startReceivingData_WriteReceived <= RadiationProcessor_startReceivingData_WriteReceived_ToFlop;
/*<>*/ end
/*<>*/ wire RadiationProcessor_startReceivingData_ReadReceived;
/*<>*/ assign RadiationProcessor_startReceivingData_ReadReceived = axi_araddr == 12 && axi_arready && S_AXI_ARVALID;
/*<>*/ //[.RadiationProcessor startReceivingData]
/*<>*/ wire  RadiationProcessor_startReceivingData_Read;
/*<>*/ reg  RadiationProcessor_startReceivingData_Write;
/*<>*/ wire RadiationProcessor_ethernetLoadFloor_WriteReceived_ToFlop;
/*<>*/ assign RadiationProcessor_ethernetLoadFloor_WriteReceived_ToFlop = slv_reg_wren && axi_awaddr == 16;
/*<>*/ //[Previous RadiationProcessor_ethernetLoadFloor_WriteReceived_ToFlop]
/*<>*/  /*[$RadiationProcessor_ethernetLoadFloor_WriteReceived_ToFlop.previous]*/
/*<>*/ reg RadiationProcessor_ethernetLoadFloor_WriteReceived;
/*<>*/ always@(posedge S_AXI_ACLK) begin
/*<>*/     if(!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_ethernetLoadFloor_WriteReceived <= 0;
/*<>*/     else
/*<>*/         RadiationProcessor_ethernetLoadFloor_WriteReceived <= RadiationProcessor_ethernetLoadFloor_WriteReceived_ToFlop;
/*<>*/ end
/*<>*/ wire RadiationProcessor_ethernetLoadFloor_ReadReceived;
/*<>*/ assign RadiationProcessor_ethernetLoadFloor_ReadReceived = axi_araddr == 16 && axi_arready && S_AXI_ARVALID;
/*<>*/ //[.RadiationProcessor ethernetLoadFloor]
/*<>*/ wire [15:0] RadiationProcessor_ethernetLoadFloor_Read;
/*<>*/ reg [15:0] RadiationProcessor_ethernetLoadFloor_Write;
/*<>*/ wire RadiationProcessor_clearRequestEthernetValues_WriteReceived_ToFlop;
/*<>*/ assign RadiationProcessor_clearRequestEthernetValues_WriteReceived_ToFlop = slv_reg_wren && axi_awaddr == 20;
/*<>*/ //[Previous RadiationProcessor_clearRequestEthernetValues_WriteReceived_ToFlop]
/*<>*/  /*[$RadiationProcessor_clearRequestEthernetValues_WriteReceived_ToFlop.previous]*/
/*<>*/ reg RadiationProcessor_clearRequestEthernetValues_WriteReceived;
/*<>*/ always@(posedge S_AXI_ACLK) begin
/*<>*/     if(!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_clearRequestEthernetValues_WriteReceived <= 0;
/*<>*/     else
/*<>*/         RadiationProcessor_clearRequestEthernetValues_WriteReceived <= RadiationProcessor_clearRequestEthernetValues_WriteReceived_ToFlop;
/*<>*/ end
/*<>*/ reg  RadiationProcessor_clearRequestEthernetValues_Write;
/*<>*/ wire RadiationProcessor_ethernetValue_WriteReceived_ToFlop;
/*<>*/ assign RadiationProcessor_ethernetValue_WriteReceived_ToFlop = slv_reg_wren && axi_awaddr == 24;
/*<>*/ //[Previous RadiationProcessor_ethernetValue_WriteReceived_ToFlop]
/*<>*/  /*[$RadiationProcessor_ethernetValue_WriteReceived_ToFlop.previous]*/
/*<>*/ reg RadiationProcessor_ethernetValue_WriteReceived;
/*<>*/ always@(posedge S_AXI_ACLK) begin
/*<>*/     if(!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_ethernetValue_WriteReceived <= 0;
/*<>*/     else
/*<>*/         RadiationProcessor_ethernetValue_WriteReceived <= RadiationProcessor_ethernetValue_WriteReceived_ToFlop;
/*<>*/ end
/*<>*/ wire RadiationProcessor_ethernetValue_ReadReceived;
/*<>*/ assign RadiationProcessor_ethernetValue_ReadReceived = axi_araddr == 24 && axi_arready && S_AXI_ARVALID;
/*<>*/ //[.RadiationProcessor ethernetValue]
/*<>*/ wire [31:0] RadiationProcessor_ethernetValue_Read;
/*<>*/ reg [31:0] RadiationProcessor_ethernetValue_Write;
/*<>*/ wire RadiationProcessor_ethernetValuesReceived_WriteReceived_ToFlop;
/*<>*/ assign RadiationProcessor_ethernetValuesReceived_WriteReceived_ToFlop = slv_reg_wren && axi_awaddr == 28;
/*<>*/ //[Previous RadiationProcessor_ethernetValuesReceived_WriteReceived_ToFlop]
/*<>*/  /*[$RadiationProcessor_ethernetValuesReceived_WriteReceived_ToFlop.previous]*/
/*<>*/ reg RadiationProcessor_ethernetValuesReceived_WriteReceived;
/*<>*/ always@(posedge S_AXI_ACLK) begin
/*<>*/     if(!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_ethernetValuesReceived_WriteReceived <= 0;
/*<>*/     else
/*<>*/         RadiationProcessor_ethernetValuesReceived_WriteReceived <= RadiationProcessor_ethernetValuesReceived_WriteReceived_ToFlop;
/*<>*/ end
/*<>*/ wire RadiationProcessor_ethernetValuesReceived_ReadReceived;
/*<>*/ assign RadiationProcessor_ethernetValuesReceived_ReadReceived = axi_araddr == 28 && axi_arready && S_AXI_ARVALID;
/*<>*/ //[.RadiationProcessor ethernetValuesReceived]
/*<>*/ wire [31:0] RadiationProcessor_ethernetValuesReceived_Read;
/*<>*/ reg [31:0] RadiationProcessor_ethernetValuesReceived_Write;
/*<>*/ wire RadiationProcessor_radiationValue_WriteReceived_ToFlop;
/*<>*/ assign RadiationProcessor_radiationValue_WriteReceived_ToFlop = slv_reg_wren && axi_awaddr == 32;
/*<>*/ //[Previous RadiationProcessor_radiationValue_WriteReceived_ToFlop]
/*<>*/  /*[$RadiationProcessor_radiationValue_WriteReceived_ToFlop.previous]*/
/*<>*/ reg RadiationProcessor_radiationValue_WriteReceived;
/*<>*/ always@(posedge S_AXI_ACLK) begin
/*<>*/     if(!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_radiationValue_WriteReceived <= 0;
/*<>*/     else
/*<>*/         RadiationProcessor_radiationValue_WriteReceived <= RadiationProcessor_radiationValue_WriteReceived_ToFlop;
/*<>*/ end
/*<>*/ wire RadiationProcessor_radiationValue_ReadReceived;
/*<>*/ assign RadiationProcessor_radiationValue_ReadReceived = axi_araddr == 32 && axi_arready && S_AXI_ARVALID;
/*<>*/ //[.RadiationProcessor radiationValue]
/*<>*/ wire [31:0] RadiationProcessor_radiationValue_Read;
/*<>*/ reg [31:0] RadiationProcessor_radiationValue_Write;
/*<>*/ wire RadiationProcessor_radiationValuesSent_WriteReceived_ToFlop;
/*<>*/ assign RadiationProcessor_radiationValuesSent_WriteReceived_ToFlop = slv_reg_wren && axi_awaddr == 36;
/*<>*/ //[Previous RadiationProcessor_radiationValuesSent_WriteReceived_ToFlop]
/*<>*/  /*[$RadiationProcessor_radiationValuesSent_WriteReceived_ToFlop.previous]*/
/*<>*/ reg RadiationProcessor_radiationValuesSent_WriteReceived;
/*<>*/ always@(posedge S_AXI_ACLK) begin
/*<>*/     if(!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_radiationValuesSent_WriteReceived <= 0;
/*<>*/     else
/*<>*/         RadiationProcessor_radiationValuesSent_WriteReceived <= RadiationProcessor_radiationValuesSent_WriteReceived_ToFlop;
/*<>*/ end
/*<>*/ wire RadiationProcessor_radiationValuesSent_ReadReceived;
/*<>*/ assign RadiationProcessor_radiationValuesSent_ReadReceived = axi_araddr == 36 && axi_arready && S_AXI_ARVALID;
/*<>*/ //[.RadiationProcessor radiationValuesSent]
/*<>*/ wire [31:0] RadiationProcessor_radiationValuesSent_Read;
/*<>*/ reg [31:0] RadiationProcessor_radiationValuesSent_Write;
/*<>*/ wire RadiationProcessor_countAmount_WriteReceived_ToFlop;
/*<>*/ assign RadiationProcessor_countAmount_WriteReceived_ToFlop = slv_reg_wren && axi_awaddr == 40;
/*<>*/ //[Previous RadiationProcessor_countAmount_WriteReceived_ToFlop]
/*<>*/  /*[$RadiationProcessor_countAmount_WriteReceived_ToFlop.previous]*/
/*<>*/ reg RadiationProcessor_countAmount_WriteReceived;
/*<>*/ always@(posedge S_AXI_ACLK) begin
/*<>*/     if(!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_countAmount_WriteReceived <= 0;
/*<>*/     else
/*<>*/         RadiationProcessor_countAmount_WriteReceived <= RadiationProcessor_countAmount_WriteReceived_ToFlop;
/*<>*/ end
/*<>*/ wire RadiationProcessor_countAmount_ReadReceived;
/*<>*/ assign RadiationProcessor_countAmount_ReadReceived = axi_araddr == 40 && axi_arready && S_AXI_ARVALID;
/*<>*/ //[.RadiationProcessor countAmount]
/*<>*/ wire [31:0] RadiationProcessor_countAmount_Read;
/*<>*/ reg [31:0] RadiationProcessor_countAmount_Write;
/*<>*/ wire RadiationProcessor_nextValueDelaySaved_WriteReceived_ToFlop;
/*<>*/ assign RadiationProcessor_nextValueDelaySaved_WriteReceived_ToFlop = slv_reg_wren && axi_awaddr == 44;
/*<>*/ //[Previous RadiationProcessor_nextValueDelaySaved_WriteReceived_ToFlop]
/*<>*/  /*[$RadiationProcessor_nextValueDelaySaved_WriteReceived_ToFlop.previous]*/
/*<>*/ reg RadiationProcessor_nextValueDelaySaved_WriteReceived;
/*<>*/ always@(posedge S_AXI_ACLK) begin
/*<>*/     if(!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_nextValueDelaySaved_WriteReceived <= 0;
/*<>*/     else
/*<>*/         RadiationProcessor_nextValueDelaySaved_WriteReceived <= RadiationProcessor_nextValueDelaySaved_WriteReceived_ToFlop;
/*<>*/ end
/*<>*/ wire RadiationProcessor_nextValueDelaySaved_ReadReceived;
/*<>*/ assign RadiationProcessor_nextValueDelaySaved_ReadReceived = axi_araddr == 44 && axi_arready && S_AXI_ARVALID;
/*<>*/ //[.RadiationProcessor nextValueDelaySaved]
/*<>*/ wire [31:0] RadiationProcessor_nextValueDelaySaved_Read;
/*<>*/ reg [31:0] RadiationProcessor_nextValueDelaySaved_Write;
/*<>*/ wire RadiationProcessor_valueProcessingFinished_WriteReceived_ToFlop;
/*<>*/ assign RadiationProcessor_valueProcessingFinished_WriteReceived_ToFlop = slv_reg_wren && axi_awaddr == 48;
/*<>*/ //[Previous RadiationProcessor_valueProcessingFinished_WriteReceived_ToFlop]
/*<>*/  /*[$RadiationProcessor_valueProcessingFinished_WriteReceived_ToFlop.previous]*/
/*<>*/ reg RadiationProcessor_valueProcessingFinished_WriteReceived;
/*<>*/ always@(posedge S_AXI_ACLK) begin
/*<>*/     if(!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_valueProcessingFinished_WriteReceived <= 0;
/*<>*/     else
/*<>*/         RadiationProcessor_valueProcessingFinished_WriteReceived <= RadiationProcessor_valueProcessingFinished_WriteReceived_ToFlop;
/*<>*/ end
/*<>*/ reg  RadiationProcessor_valueProcessingFinished_Write;
/*<>*/ wire RadiationProcessor_radiationTimer_WriteReceived_ToFlop;
/*<>*/ assign RadiationProcessor_radiationTimer_WriteReceived_ToFlop = slv_reg_wren && axi_awaddr == 52;
/*<>*/ //[Previous RadiationProcessor_radiationTimer_WriteReceived_ToFlop]
/*<>*/  /*[$RadiationProcessor_radiationTimer_WriteReceived_ToFlop.previous]*/
/*<>*/ reg RadiationProcessor_radiationTimer_WriteReceived;
/*<>*/ always@(posedge S_AXI_ACLK) begin
/*<>*/     if(!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_radiationTimer_WriteReceived <= 0;
/*<>*/     else
/*<>*/         RadiationProcessor_radiationTimer_WriteReceived <= RadiationProcessor_radiationTimer_WriteReceived_ToFlop;
/*<>*/ end
/*<>*/ wire RadiationProcessor_radiationTimer_ReadReceived;
/*<>*/ assign RadiationProcessor_radiationTimer_ReadReceived = axi_araddr == 52 && axi_arready && S_AXI_ARVALID;
/*<>*/ //[.RadiationProcessor radiationTimer]
/*<>*/ wire [31:0] RadiationProcessor_radiationTimer_Read;
/*<>*/ reg [31:0] RadiationProcessor_radiationTimer_Write; reg [5 : 0] axi_awaddr;
/*<>*/ reg axi_awready;
/*<>*/ reg axi_wready;
/*<>*/ reg [1 : 0] axi_bresp;
/*<>*/ reg axi_bvalid;
/*<>*/ reg [5 : 0] axi_araddr;
/*<>*/ reg axi_arready;
/*<>*/ reg [31 : 0] axi_rdata;
/*<>*/ reg [1 : 0] axi_rresp;
/*<>*/ reg axi_rvalid;
/*<>*/
/*<>*/
/*<>*/ //----------------------------------------------
/*<>*/ //-- Signals for user logic register space example
/*<>*/
/*<>*/ wire slv_reg_rden;
/*<>*/ wire slv_reg_wren;
/*<>*/ reg [31:0] reg_data_out;
/*<>*/ integer byte_index;
/*<>*/ reg aw_en;
/*<>*/
/*<>*/ // I/O Connections assignments
/*<>*/ assign S_AXI_AWREADY = axi_awready;
/*<>*/ assign S_AXI_WREADY  = axi_wready;
/*<>*/ assign S_AXI_BRESP   = axi_bresp;
/*<>*/ assign S_AXI_BVALID  = axi_bvalid;
/*<>*/ assign S_AXI_ARREADY = axi_arready;
/*<>*/ assign S_AXI_RDATA   = axi_rdata;
/*<>*/ assign S_AXI_RRESP   = axi_rresp;
/*<>*/ assign S_AXI_RVALID  = axi_rvalid;
/*<>*/
/*<>*/
/*<>*/ // Implement axi_awready generation
/*<>*/ // axi_awready is asserted for one  clock cycle when both
/*<>*/ // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
/*<>*/ // de-asserted when reset is low.
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN) begin
/*<>*/         axi_awready <= 1'b0;
/*<>*/         aw_en <= 1'b1;
/*<>*/     end
/*<>*/     else begin
/*<>*/         if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en) begin
/*<>*/             // slave is ready to accept write address when
/*<>*/             // there is a valid write address and write data
/*<>*/             // on the write address and data bus. This design
/*<>*/             // expects no outstanding transactions.
/*<>*/             aw_en <= 1'b0;
/*<>*/             axi_awready <= 1'b1;
/*<>*/         end
/*<>*/         else if (S_AXI_BREADY && axi_bvalid) begin
/*<>*/             aw_en <= 1'b1;
/*<>*/             axi_awready <= 1'b0;
/*<>*/         end
/*<>*/         else begin
/*<>*/             aw_en <= aw_en;
/*<>*/             axi_awready <= 1'b0;
/*<>*/         end
/*<>*/     end
/*<>*/ end
/*<>*/
/*<>*/ // Implement axi_awaddr latching
/*<>*/ // This process is used to latch the address when both
/*<>*/ // S_AXI_AWVALID and S_AXI_WVALID are valid.
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN) begin
/*<>*/         axi_awaddr <= 0;
/*<>*/     end
/*<>*/     else begin
/*<>*/         if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en) begin
/*<>*/             // Write Address latching
/*<>*/             axi_awaddr <= S_AXI_AWADDR;
/*<>*/         end
/*<>*/     end
/*<>*/ end
/*<>*/
/*<>*/ // Implement axi_wready generation
/*<>*/ // axi_wready is asserted for one S_AXI_ACLK clock cycle when both
/*<>*/ // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is
/*<>*/ // de-asserted when reset is low.
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN) begin
/*<>*/         axi_wready <= 1'b0;
/*<>*/     end
/*<>*/     else begin
/*<>*/         if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en ) begin
/*<>*/             // slave is ready to accept write data when
/*<>*/             // there is a valid write address and write data
/*<>*/             // on the write address and data bus. This design
/*<>*/             // expects no outstanding transactions.
/*<>*/             axi_wready <= 1'b1;
/*<>*/         end
/*<>*/         else begin
/*<>*/             axi_wready <= 1'b0;
/*<>*/         end
/*<>*/     end
/*<>*/ end
/*<>*/
/*<>*/ // Implement memory mapped register select and write logic generation
/*<>*/ // The write data is accepted and written to memory mapped registers when
/*<>*/ // axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
/*<>*/ // select byte enables of slave registers while writing.
/*<>*/ // These registers are cleared when reset (active low) is applied.
/*<>*/ // Slave register write enable is asserted when valid address and data are available
/*<>*/ // and the slave is ready to accept the write address and write data.
/*<>*/ assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;
/*<>*/
/*<>*/
/*<>*/ // Implement write response logic generation
/*<>*/ // The write response and response valid signals are asserted by the slave
/*<>*/ // when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.
/*<>*/ // This marks the acceptance of address and indicates the status of
/*<>*/ // write transaction.
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN) begin
/*<>*/         axi_bvalid  <= 0;
/*<>*/         axi_bresp   <= 2'b0;
/*<>*/     end
/*<>*/     else begin
/*<>*/         if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID) begin
/*<>*/             // indicates a valid write response is available
/*<>*/             axi_bvalid <= 1'b1;
/*<>*/             axi_bresp  <= 2'b0; // 'OKAY' response
/*<>*/         end // work error responses in future
/*<>*/         else begin
/*<>*/             if (S_AXI_BREADY && axi_bvalid) begin
/*<>*/                 //check if bready is asserted while bvalid is high)
/*<>*/                 //(there is a possibility that bready is always asserted high) begin
/*<>*/                 axi_bvalid <= 1'b0;
/*<>*/                 axi_bresp <= axi_bresp;
/*<>*/             end
/*<>*/             else begin
/*<>*/                 axi_bvalid <= axi_bvalid;
/*<>*/                 axi_bresp <= axi_bresp;
/*<>*/             end
/*<>*/         end
/*<>*/     end
/*<>*/ end
/*<>*/
/*<>*/
/*<>*/ // Implement axi_arready generation
/*<>*/ // axi_arready is asserted for one S_AXI_ACLK clock cycle when
/*<>*/ // S_AXI_ARVALID is asserted. axi_awready is
/*<>*/ // de-asserted when reset (active low) is asserted.
/*<>*/ // The read address is also latched when S_AXI_ARVALID is
/*<>*/ // asserted. axi_araddr is reset to zero on reset assertion.
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN) begin
/*<>*/         axi_arready <= 1'b0;
/*<>*/         axi_araddr  <= 32'b0;
/*<>*/     end
/*<>*/     else begin
/*<>*/         if (~axi_arready && S_AXI_ARVALID) begin
/*<>*/             // indicates that the slave has acceped the valid read address
/*<>*/             axi_arready <= 1'b1;
/*<>*/             // Read address latching
/*<>*/             axi_araddr  <= S_AXI_ARADDR;
/*<>*/         end
/*<>*/         else begin
/*<>*/             axi_arready <= 1'b0;
/*<>*/             axi_araddr <= axi_araddr;
/*<>*/         end
/*<>*/     end
/*<>*/ end
/*<>*/
/*<>*/
/*<>*/ // Implement axi_arvalid generation
/*<>*/ // axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both
/*<>*/ // S_AXI_ARVALID and axi_arready are asserted. The slave registers
/*<>*/ // data are available on the axi_rdata bus at this instance. The
/*<>*/ // assertion of axi_rvalid marks the validity of read data on the
/*<>*/ // bus and axi_rresp indicates the status of read transaction.axi_rvalid
/*<>*/ // is deasserted on reset (active low). axi_rresp and axi_rdata are
/*<>*/ // cleared to zero on reset (active low).
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN) begin
/*<>*/         axi_rvalid <= 0;
/*<>*/         axi_rresp  <= 0;
/*<>*/     end
/*<>*/     else begin
/*<>*/         if (axi_arready && S_AXI_ARVALID && ~axi_rvalid) begin
/*<>*/             // Valid read data is available at the read data bus
/*<>*/             axi_rvalid <= 1'b1;
/*<>*/             axi_rresp  <= 2'b0; // 'OKAY' response
/*<>*/         end
/*<>*/         else if (axi_rvalid && S_AXI_RREADY) begin
/*<>*/             // Read data is accepted by the master
/*<>*/             axi_rvalid <= 1'b0;
/*<>*/             axi_rresp <= axi_rresp;
/*<>*/         end
/*<>*/     end
/*<>*/ end
/*<>*/
/*<>*/
/*<>*/ // Implement memory mapped register select and read logic generation
/*<>*/ // Slave register read enable is asserted when valid address is available
/*<>*/ // and the slave is ready to accept the read address.
/*<>*/ assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
/*<>*/ always @(*)
/*<>*/ begin
/*<>*/     // Address decoding for reading registers
/*<>*/     case (axi_araddr)
/*<>*/ 52    : reg_data_out <= RadiationProcessor_radiationTimer_Read;
/*<>*/ 44    : reg_data_out <= RadiationProcessor_nextValueDelaySaved_Read;
/*<>*/ 40    : reg_data_out <= RadiationProcessor_countAmount_Read;
/*<>*/ 36    : reg_data_out <= RadiationProcessor_radiationValuesSent_Read;
/*<>*/ 32    : reg_data_out <= RadiationProcessor_radiationValue_Read;
/*<>*/ 28    : reg_data_out <= RadiationProcessor_ethernetValuesReceived_Read;
/*<>*/ 24    : reg_data_out <= RadiationProcessor_ethernetValue_Read;
/*<>*/ 16    : reg_data_out <= RadiationProcessor_ethernetLoadFloor_Read;
/*<>*/ 12    : reg_data_out <= RadiationProcessor_startReceivingData_Read;
/*<>*/ 8    : reg_data_out <= RadiationProcessor_debugSource_Read;
/*<>*/ 4    : reg_data_out <= HardwareAcceleratedHistogram_histogramReadValue_Read;
/*<>*/ 0    : reg_data_out <= HardwareAcceleratedHistogram_histogramReadAddress_Read;
/*<>*/         default : reg_data_out <= 0;
/*<>*/     endcase
/*<>*/ end
/*<>*/
/*<>*/
/*<>*/ // Output register or memory read data
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN) begin
/*<>*/         axi_rdata  <= 0;
/*<>*/     end
/*<>*/     else begin
/*<>*/         // When there is a valid read address (S_AXI_ARVALID) with
/*<>*/         // acceptance of read address by the slave (axi_arready),
/*<>*/         // output the read dada
/*<>*/         if (slv_reg_rden) begin
/*<>*/             axi_rdata <= reg_data_out;     // register read data
/*<>*/         end
/*<>*/         else begin
/*<>*/             axi_rdata <= axi_rdata;
/*<>*/         end
/*<>*/     end
/*<>*/ end
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN)
/*<>*/         HardwareAcceleratedHistogram_histogramReadAddress_Write <= 0;
/*<>*/     else if (slv_reg_wren && axi_awaddr == 0) begin
/*<>*/
/*<>*/         if(S_AXI_WSTRB[0] == 1)
/*<>*/             HardwareAcceleratedHistogram_histogramReadAddress_Write[0 +: 8] <= S_AXI_WDATA[0 +: 8];
/*<>*/         else
/*<>*/             HardwareAcceleratedHistogram_histogramReadAddress_Write[0 +: 8] <= HardwareAcceleratedHistogram_histogramReadAddress_Write[0 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[1] == 1)
/*<>*/             HardwareAcceleratedHistogram_histogramReadAddress_Write[8 +: 2] <= S_AXI_WDATA[8 +: 2];
/*<>*/         else
/*<>*/             HardwareAcceleratedHistogram_histogramReadAddress_Write[8 +: 2] <= HardwareAcceleratedHistogram_histogramReadAddress_Write[8 +: 2];
/*<>*/
/*<>*/     end
/*<>*/     else
/*<>*/         HardwareAcceleratedHistogram_histogramReadAddress_Write <= HardwareAcceleratedHistogram_histogramReadAddress_Write;
/*<>*/ end
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN)
/*<>*/         HardwareAcceleratedHistogram_histogramReadValue_Write <= 0;
/*<>*/     else if (slv_reg_wren && axi_awaddr == 4) begin
/*<>*/
/*<>*/         if(S_AXI_WSTRB[0] == 1)
/*<>*/             HardwareAcceleratedHistogram_histogramReadValue_Write[0 +: 8] <= S_AXI_WDATA[0 +: 8];
/*<>*/         else
/*<>*/             HardwareAcceleratedHistogram_histogramReadValue_Write[0 +: 8] <= HardwareAcceleratedHistogram_histogramReadValue_Write[0 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[1] == 1)
/*<>*/             HardwareAcceleratedHistogram_histogramReadValue_Write[8 +: 8] <= S_AXI_WDATA[8 +: 8];
/*<>*/         else
/*<>*/             HardwareAcceleratedHistogram_histogramReadValue_Write[8 +: 8] <= HardwareAcceleratedHistogram_histogramReadValue_Write[8 +: 8];
/*<>*/
/*<>*/     end
/*<>*/     else
/*<>*/         HardwareAcceleratedHistogram_histogramReadValue_Write <= HardwareAcceleratedHistogram_histogramReadValue_Write;
/*<>*/ end
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_debugSource_Write <= 0;
/*<>*/     else if (slv_reg_wren && axi_awaddr == 8) begin
/*<>*/
/*<>*/         if(S_AXI_WSTRB[0] == 1)
/*<>*/             RadiationProcessor_debugSource_Write[0 +: 8] <= S_AXI_WDATA[0 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_debugSource_Write[0 +: 8] <= RadiationProcessor_debugSource_Write[0 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[1] == 1)
/*<>*/             RadiationProcessor_debugSource_Write[8 +: 8] <= S_AXI_WDATA[8 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_debugSource_Write[8 +: 8] <= RadiationProcessor_debugSource_Write[8 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[2] == 1)
/*<>*/             RadiationProcessor_debugSource_Write[16 +: 8] <= S_AXI_WDATA[16 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_debugSource_Write[16 +: 8] <= RadiationProcessor_debugSource_Write[16 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[3] == 1)
/*<>*/             RadiationProcessor_debugSource_Write[24 +: 8] <= S_AXI_WDATA[24 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_debugSource_Write[24 +: 8] <= RadiationProcessor_debugSource_Write[24 +: 8];
/*<>*/
/*<>*/     end
/*<>*/     else
/*<>*/         RadiationProcessor_debugSource_Write <= RadiationProcessor_debugSource_Write;
/*<>*/ end
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_startReceivingData_Write <= 0;
/*<>*/     else if (slv_reg_wren && axi_awaddr == 12) begin
/*<>*/
/*<>*/         if(S_AXI_WSTRB[0] == 1)
/*<>*/             RadiationProcessor_startReceivingData_Write <= S_AXI_WDATA[0];
/*<>*/         else
/*<>*/             RadiationProcessor_startReceivingData_Write <= RadiationProcessor_startReceivingData_Write;
/*<>*/
/*<>*/     end
/*<>*/     else
/*<>*/         RadiationProcessor_startReceivingData_Write <= RadiationProcessor_startReceivingData_Write;
/*<>*/ end
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_ethernetLoadFloor_Write <= 0;
/*<>*/     else if (slv_reg_wren && axi_awaddr == 16) begin
/*<>*/
/*<>*/         if(S_AXI_WSTRB[0] == 1)
/*<>*/             RadiationProcessor_ethernetLoadFloor_Write[0 +: 8] <= S_AXI_WDATA[0 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_ethernetLoadFloor_Write[0 +: 8] <= RadiationProcessor_ethernetLoadFloor_Write[0 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[1] == 1)
/*<>*/             RadiationProcessor_ethernetLoadFloor_Write[8 +: 8] <= S_AXI_WDATA[8 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_ethernetLoadFloor_Write[8 +: 8] <= RadiationProcessor_ethernetLoadFloor_Write[8 +: 8];
/*<>*/
/*<>*/     end
/*<>*/     else
/*<>*/         RadiationProcessor_ethernetLoadFloor_Write <= RadiationProcessor_ethernetLoadFloor_Write;
/*<>*/ end
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_clearRequestEthernetValues_Write <= 0;
/*<>*/     else if (slv_reg_wren && axi_awaddr == 20) begin
/*<>*/
/*<>*/         if(S_AXI_WSTRB[0] == 1)
/*<>*/             RadiationProcessor_clearRequestEthernetValues_Write <= S_AXI_WDATA[0];
/*<>*/         else
/*<>*/             RadiationProcessor_clearRequestEthernetValues_Write <= RadiationProcessor_clearRequestEthernetValues_Write;
/*<>*/
/*<>*/     end
/*<>*/     else
/*<>*/         RadiationProcessor_clearRequestEthernetValues_Write <= RadiationProcessor_clearRequestEthernetValues_Write;
/*<>*/ end
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_ethernetValue_Write <= 0;
/*<>*/     else if (slv_reg_wren && axi_awaddr == 24) begin
/*<>*/
/*<>*/         if(S_AXI_WSTRB[0] == 1)
/*<>*/             RadiationProcessor_ethernetValue_Write[0 +: 8] <= S_AXI_WDATA[0 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_ethernetValue_Write[0 +: 8] <= RadiationProcessor_ethernetValue_Write[0 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[1] == 1)
/*<>*/             RadiationProcessor_ethernetValue_Write[8 +: 8] <= S_AXI_WDATA[8 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_ethernetValue_Write[8 +: 8] <= RadiationProcessor_ethernetValue_Write[8 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[2] == 1)
/*<>*/             RadiationProcessor_ethernetValue_Write[16 +: 8] <= S_AXI_WDATA[16 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_ethernetValue_Write[16 +: 8] <= RadiationProcessor_ethernetValue_Write[16 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[3] == 1)
/*<>*/             RadiationProcessor_ethernetValue_Write[24 +: 8] <= S_AXI_WDATA[24 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_ethernetValue_Write[24 +: 8] <= RadiationProcessor_ethernetValue_Write[24 +: 8];
/*<>*/
/*<>*/     end
/*<>*/     else
/*<>*/         RadiationProcessor_ethernetValue_Write <= RadiationProcessor_ethernetValue_Write;
/*<>*/ end
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_ethernetValuesReceived_Write <= 0;
/*<>*/     else if (slv_reg_wren && axi_awaddr == 28) begin
/*<>*/
/*<>*/         if(S_AXI_WSTRB[0] == 1)
/*<>*/             RadiationProcessor_ethernetValuesReceived_Write[0 +: 8] <= S_AXI_WDATA[0 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_ethernetValuesReceived_Write[0 +: 8] <= RadiationProcessor_ethernetValuesReceived_Write[0 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[1] == 1)
/*<>*/             RadiationProcessor_ethernetValuesReceived_Write[8 +: 8] <= S_AXI_WDATA[8 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_ethernetValuesReceived_Write[8 +: 8] <= RadiationProcessor_ethernetValuesReceived_Write[8 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[2] == 1)
/*<>*/             RadiationProcessor_ethernetValuesReceived_Write[16 +: 8] <= S_AXI_WDATA[16 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_ethernetValuesReceived_Write[16 +: 8] <= RadiationProcessor_ethernetValuesReceived_Write[16 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[3] == 1)
/*<>*/             RadiationProcessor_ethernetValuesReceived_Write[24 +: 8] <= S_AXI_WDATA[24 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_ethernetValuesReceived_Write[24 +: 8] <= RadiationProcessor_ethernetValuesReceived_Write[24 +: 8];
/*<>*/
/*<>*/     end
/*<>*/     else
/*<>*/         RadiationProcessor_ethernetValuesReceived_Write <= RadiationProcessor_ethernetValuesReceived_Write;
/*<>*/ end
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_radiationValue_Write <= 0;
/*<>*/     else if (slv_reg_wren && axi_awaddr == 32) begin
/*<>*/
/*<>*/         if(S_AXI_WSTRB[0] == 1)
/*<>*/             RadiationProcessor_radiationValue_Write[0 +: 8] <= S_AXI_WDATA[0 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_radiationValue_Write[0 +: 8] <= RadiationProcessor_radiationValue_Write[0 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[1] == 1)
/*<>*/             RadiationProcessor_radiationValue_Write[8 +: 8] <= S_AXI_WDATA[8 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_radiationValue_Write[8 +: 8] <= RadiationProcessor_radiationValue_Write[8 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[2] == 1)
/*<>*/             RadiationProcessor_radiationValue_Write[16 +: 8] <= S_AXI_WDATA[16 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_radiationValue_Write[16 +: 8] <= RadiationProcessor_radiationValue_Write[16 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[3] == 1)
/*<>*/             RadiationProcessor_radiationValue_Write[24 +: 8] <= S_AXI_WDATA[24 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_radiationValue_Write[24 +: 8] <= RadiationProcessor_radiationValue_Write[24 +: 8];
/*<>*/
/*<>*/     end
/*<>*/     else
/*<>*/         RadiationProcessor_radiationValue_Write <= RadiationProcessor_radiationValue_Write;
/*<>*/ end
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_radiationValuesSent_Write <= 0;
/*<>*/     else if (slv_reg_wren && axi_awaddr == 36) begin
/*<>*/
/*<>*/         if(S_AXI_WSTRB[0] == 1)
/*<>*/             RadiationProcessor_radiationValuesSent_Write[0 +: 8] <= S_AXI_WDATA[0 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_radiationValuesSent_Write[0 +: 8] <= RadiationProcessor_radiationValuesSent_Write[0 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[1] == 1)
/*<>*/             RadiationProcessor_radiationValuesSent_Write[8 +: 8] <= S_AXI_WDATA[8 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_radiationValuesSent_Write[8 +: 8] <= RadiationProcessor_radiationValuesSent_Write[8 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[2] == 1)
/*<>*/             RadiationProcessor_radiationValuesSent_Write[16 +: 8] <= S_AXI_WDATA[16 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_radiationValuesSent_Write[16 +: 8] <= RadiationProcessor_radiationValuesSent_Write[16 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[3] == 1)
/*<>*/             RadiationProcessor_radiationValuesSent_Write[24 +: 8] <= S_AXI_WDATA[24 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_radiationValuesSent_Write[24 +: 8] <= RadiationProcessor_radiationValuesSent_Write[24 +: 8];
/*<>*/
/*<>*/     end
/*<>*/     else
/*<>*/         RadiationProcessor_radiationValuesSent_Write <= RadiationProcessor_radiationValuesSent_Write;
/*<>*/ end
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_countAmount_Write <= 0;
/*<>*/     else if (slv_reg_wren && axi_awaddr == 40) begin
/*<>*/
/*<>*/         if(S_AXI_WSTRB[0] == 1)
/*<>*/             RadiationProcessor_countAmount_Write[0 +: 8] <= S_AXI_WDATA[0 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_countAmount_Write[0 +: 8] <= RadiationProcessor_countAmount_Write[0 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[1] == 1)
/*<>*/             RadiationProcessor_countAmount_Write[8 +: 8] <= S_AXI_WDATA[8 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_countAmount_Write[8 +: 8] <= RadiationProcessor_countAmount_Write[8 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[2] == 1)
/*<>*/             RadiationProcessor_countAmount_Write[16 +: 8] <= S_AXI_WDATA[16 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_countAmount_Write[16 +: 8] <= RadiationProcessor_countAmount_Write[16 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[3] == 1)
/*<>*/             RadiationProcessor_countAmount_Write[24 +: 8] <= S_AXI_WDATA[24 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_countAmount_Write[24 +: 8] <= RadiationProcessor_countAmount_Write[24 +: 8];
/*<>*/
/*<>*/     end
/*<>*/     else
/*<>*/         RadiationProcessor_countAmount_Write <= RadiationProcessor_countAmount_Write;
/*<>*/ end
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_nextValueDelaySaved_Write <= 0;
/*<>*/     else if (slv_reg_wren && axi_awaddr == 44) begin
/*<>*/
/*<>*/         if(S_AXI_WSTRB[0] == 1)
/*<>*/             RadiationProcessor_nextValueDelaySaved_Write[0 +: 8] <= S_AXI_WDATA[0 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_nextValueDelaySaved_Write[0 +: 8] <= RadiationProcessor_nextValueDelaySaved_Write[0 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[1] == 1)
/*<>*/             RadiationProcessor_nextValueDelaySaved_Write[8 +: 8] <= S_AXI_WDATA[8 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_nextValueDelaySaved_Write[8 +: 8] <= RadiationProcessor_nextValueDelaySaved_Write[8 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[2] == 1)
/*<>*/             RadiationProcessor_nextValueDelaySaved_Write[16 +: 8] <= S_AXI_WDATA[16 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_nextValueDelaySaved_Write[16 +: 8] <= RadiationProcessor_nextValueDelaySaved_Write[16 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[3] == 1)
/*<>*/             RadiationProcessor_nextValueDelaySaved_Write[24 +: 8] <= S_AXI_WDATA[24 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_nextValueDelaySaved_Write[24 +: 8] <= RadiationProcessor_nextValueDelaySaved_Write[24 +: 8];
/*<>*/
/*<>*/     end
/*<>*/     else
/*<>*/         RadiationProcessor_nextValueDelaySaved_Write <= RadiationProcessor_nextValueDelaySaved_Write;
/*<>*/ end
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_valueProcessingFinished_Write <= 0;
/*<>*/     else if (slv_reg_wren && axi_awaddr == 48) begin
/*<>*/
/*<>*/         if(S_AXI_WSTRB[0] == 1)
/*<>*/             RadiationProcessor_valueProcessingFinished_Write <= S_AXI_WDATA[0];
/*<>*/         else
/*<>*/             RadiationProcessor_valueProcessingFinished_Write <= RadiationProcessor_valueProcessingFinished_Write;
/*<>*/
/*<>*/     end
/*<>*/     else
/*<>*/         RadiationProcessor_valueProcessingFinished_Write <= RadiationProcessor_valueProcessingFinished_Write;
/*<>*/ end
/*<>*/ always @( posedge S_AXI_ACLK ) begin
/*<>*/     if (!S_AXI_ARESETN)
/*<>*/         RadiationProcessor_radiationTimer_Write <= 0;
/*<>*/     else if (slv_reg_wren && axi_awaddr == 52) begin
/*<>*/
/*<>*/         if(S_AXI_WSTRB[0] == 1)
/*<>*/             RadiationProcessor_radiationTimer_Write[0 +: 8] <= S_AXI_WDATA[0 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_radiationTimer_Write[0 +: 8] <= RadiationProcessor_radiationTimer_Write[0 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[1] == 1)
/*<>*/             RadiationProcessor_radiationTimer_Write[8 +: 8] <= S_AXI_WDATA[8 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_radiationTimer_Write[8 +: 8] <= RadiationProcessor_radiationTimer_Write[8 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[2] == 1)
/*<>*/             RadiationProcessor_radiationTimer_Write[16 +: 8] <= S_AXI_WDATA[16 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_radiationTimer_Write[16 +: 8] <= RadiationProcessor_radiationTimer_Write[16 +: 8];
/*<>*/
/*<>*/         if(S_AXI_WSTRB[3] == 1)
/*<>*/             RadiationProcessor_radiationTimer_Write[24 +: 8] <= S_AXI_WDATA[24 +: 8];
/*<>*/         else
/*<>*/             RadiationProcessor_radiationTimer_Write[24 +: 8] <= RadiationProcessor_radiationTimer_Write[24 +: 8];
/*<>*/
/*<>*/     end
/*<>*/     else
/*<>*/         RadiationProcessor_radiationTimer_Write <= RadiationProcessor_radiationTimer_Write;
/*<>*/ end
/*<>*/ //***Start Routing Signals
/*<>*/ assign RadiationProcessor_debugSource_WriteReceived__OUTPUT = RadiationProcessor_debugSource_WriteReceived;
/*<>*/ assign RadiationProcessor_debugSource_Write__OUTPUT = RadiationProcessor_debugSource_Write;
/*<>*/ assign RadiationProcessor_debugSource_ReadReceived__OUTPUT = RadiationProcessor_debugSource_ReadReceived;
/*<>*/ assign RadiationProcessor_startReceivingData_WriteReceived__OUTPUT = RadiationProcessor_startReceivingData_WriteReceived;
/*<>*/ assign RadiationProcessor_startReceivingData_Write__OUTPUT = RadiationProcessor_startReceivingData_Write;
/*<>*/ assign RadiationProcessor_startReceivingData_ReadReceived__OUTPUT = RadiationProcessor_startReceivingData_ReadReceived;
/*<>*/ assign RadiationProcessor_ethernetLoadFloor_WriteReceived__OUTPUT = RadiationProcessor_ethernetLoadFloor_WriteReceived;
/*<>*/ assign RadiationProcessor_ethernetLoadFloor_Write__OUTPUT = RadiationProcessor_ethernetLoadFloor_Write;
/*<>*/ assign RadiationProcessor_ethernetLoadFloor_ReadReceived__OUTPUT = RadiationProcessor_ethernetLoadFloor_ReadReceived;
/*<>*/ assign RadiationProcessor_clearRequestEthernetValues_WriteReceived__OUTPUT = RadiationProcessor_clearRequestEthernetValues_WriteReceived;
/*<>*/ assign RadiationProcessor_ethernetValue_WriteReceived__OUTPUT = RadiationProcessor_ethernetValue_WriteReceived;
/*<>*/ assign RadiationProcessor_ethernetValue_Write__OUTPUT = RadiationProcessor_ethernetValue_Write;
/*<>*/ assign RadiationProcessor_ethernetValue_ReadReceived__OUTPUT = RadiationProcessor_ethernetValue_ReadReceived;
/*<>*/ assign RadiationProcessor_ethernetValuesReceived_WriteReceived__OUTPUT = RadiationProcessor_ethernetValuesReceived_WriteReceived;
/*<>*/ assign RadiationProcessor_ethernetValuesReceived_Write__OUTPUT = RadiationProcessor_ethernetValuesReceived_Write;
/*<>*/ assign RadiationProcessor_ethernetValuesReceived_ReadReceived__OUTPUT = RadiationProcessor_ethernetValuesReceived_ReadReceived;
/*<>*/ assign RadiationProcessor_radiationValue_WriteReceived__OUTPUT = RadiationProcessor_radiationValue_WriteReceived;
/*<>*/ assign RadiationProcessor_radiationValue_Write__OUTPUT = RadiationProcessor_radiationValue_Write;
/*<>*/ assign RadiationProcessor_radiationValue_ReadReceived__OUTPUT = RadiationProcessor_radiationValue_ReadReceived;
/*<>*/ assign RadiationProcessor_radiationValuesSent_WriteReceived__OUTPUT = RadiationProcessor_radiationValuesSent_WriteReceived;
/*<>*/ assign RadiationProcessor_radiationValuesSent_Write__OUTPUT = RadiationProcessor_radiationValuesSent_Write;
/*<>*/ assign RadiationProcessor_radiationValuesSent_ReadReceived__OUTPUT = RadiationProcessor_radiationValuesSent_ReadReceived;
/*<>*/ assign RadiationProcessor_countAmount_WriteReceived__OUTPUT = RadiationProcessor_countAmount_WriteReceived;
/*<>*/ assign RadiationProcessor_countAmount_Write__OUTPUT = RadiationProcessor_countAmount_Write;
/*<>*/ assign RadiationProcessor_countAmount_ReadReceived__OUTPUT = RadiationProcessor_countAmount_ReadReceived;
/*<>*/ assign RadiationProcessor_nextValueDelaySaved_WriteReceived__OUTPUT = RadiationProcessor_nextValueDelaySaved_WriteReceived;
/*<>*/ assign RadiationProcessor_nextValueDelaySaved_Write__OUTPUT = RadiationProcessor_nextValueDelaySaved_Write;
/*<>*/ assign RadiationProcessor_nextValueDelaySaved_ReadReceived__OUTPUT = RadiationProcessor_nextValueDelaySaved_ReadReceived;
/*<>*/ assign RadiationProcessor_valueProcessingFinished_WriteReceived__OUTPUT = RadiationProcessor_valueProcessingFinished_WriteReceived;
/*<>*/ assign RadiationProcessor_radiationTimer_WriteReceived__OUTPUT = RadiationProcessor_radiationTimer_WriteReceived;
/*<>*/ assign RadiationProcessor_radiationTimer_Write__OUTPUT = RadiationProcessor_radiationTimer_Write;
/*<>*/ assign RadiationProcessor_radiationTimer_ReadReceived__OUTPUT = RadiationProcessor_radiationTimer_ReadReceived;
/*<>*/ assign S_AXI_AWREADY__OUTPUT = S_AXI_AWREADY;
/*<>*/ assign S_AXI_WREADY__OUTPUT = S_AXI_WREADY;
/*<>*/ assign S_AXI_BRESP__OUTPUT = S_AXI_BRESP;
/*<>*/ assign S_AXI_BVALID__OUTPUT = S_AXI_BVALID;
/*<>*/ assign S_AXI_BREADY__OUTPUT = S_AXI_BREADY;
/*<>*/ assign S_AXI_ARREADY__OUTPUT = S_AXI_ARREADY;
/*<>*/ assign S_AXI_RDATA__OUTPUT = S_AXI_RDATA;
/*<>*/ assign S_AXI_RRESP__OUTPUT = S_AXI_RRESP;
/*<>*/ assign S_AXI_RVALID__OUTPUT = S_AXI_RVALID;
/*<>*/ assign HardwareAcceleratedHistogram_histogramReadAddress_WriteReceived__OUTPUT = HardwareAcceleratedHistogram_histogramReadAddress_WriteReceived;
/*<>*/ assign HardwareAcceleratedHistogram_histogramReadAddress_Write__OUTPUT = HardwareAcceleratedHistogram_histogramReadAddress_Write;
/*<>*/ assign HardwareAcceleratedHistogram_histogramReadAddress_ReadReceived__OUTPUT = HardwareAcceleratedHistogram_histogramReadAddress_ReadReceived;
/*<>*/ assign HardwareAcceleratedHistogram_histogramReadValue_WriteReceived__OUTPUT = HardwareAcceleratedHistogram_histogramReadValue_WriteReceived;
/*<>*/ assign HardwareAcceleratedHistogram_histogramReadValue_Write__OUTPUT = HardwareAcceleratedHistogram_histogramReadValue_Write;
/*<>*/ assign HardwareAcceleratedHistogram_histogramReadValue_ReadReceived__OUTPUT = HardwareAcceleratedHistogram_histogramReadValue_ReadReceived;
/*<>*/ endmodule