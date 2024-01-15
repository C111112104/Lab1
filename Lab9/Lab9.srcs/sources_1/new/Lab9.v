`timescale 1ns / 1ps

module Lab9(clk,data,out);
input [15:0]data;
input clk;
output out;
reg out;
integer a=0;
always @(posedge clk)
begin
	parity(data,out);
end

task parity;
	input [15:0]Data;
	output Out;
	reg Out;
	integer i;
begin
    Out = 0;
    if(a==0)
    begin
        a=1;
        repeat(3)@(posedge clk);
    end
    //repeat(3)@(posedge clk);
    for (i = 0; i < 15; i = i + 1) 
	begin
		Out = (Out ^ Data[i]);
    end

end
endtask

endmodule
