`timescale 1ns / 1ps
module Lab9_2_tb;
reg [15:0]data;
reg clk;
wire out;
Lab9 uut(
	.data(data),
	.clk(clk),
	.out(out)
);

initial
begin
	data = 16'd2;
	#45 data = 16'd5;
	#15 data = 16'd9;
	#15 data = 16'd4;
    #15 data = 16'd12;
    #15 data = 16'd13;
    #15 data = 16'd15;
    #15 data = 16'd17;
    #15 data = 16'd19;

end

initial
	#150 $finish;

initial
	$monitor($time,"data=%16'b ,out=%8'b",data,out);

initial
begin
	clk=0;
	forever#5 clk = ~clk;
end
endmodule
