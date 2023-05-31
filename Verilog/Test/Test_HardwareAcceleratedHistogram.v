module Test_HardwareAcceleratedHistogram;


reg clk;
reg reset;

/*[TestModule --module HardwareAcceleratedHistogram]*/
/*<>*/ HardwareAcceleratedHistogram unitUnderTest_HardwareAcceleratedHistogram (
/*<>*/
/*<>*/ );
/*<>*/
/*<>*/
/*<>*/ always #5 clk = !clk;
/*<>*/
/*<>*/ initial begin
/*<>*/
/*<>*/ end

task SendValue;


begin
        radiationValue = $random;
        #10;
        valueReady = 1;
        #50;
        valueReady = 0;
        #20;
    end
endtask

integer i;
initial begin

#1000;

for(i = 0; i < 10000; i = i + 1) begin
    SendValue();
end

#10000;

for(i = 0; i < 1024; i = i + 1) begin
    histogramReadAddress = i;
    #50;
end
$finish;

end

endmodule