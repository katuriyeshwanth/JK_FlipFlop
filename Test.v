module test;
reg j,k,clk,rst;
wire q;
wire q_bar;
JK_flip_flop dut(j,k,clk,rst,q,q_bar);


always #5
clk=~clk;
initial
begin
rst=0;
clk=0;
j=0;
k=0;
$monitor($time,"j=%b,k=%b,clk=%b,rst=%b,q=%b,q_bar=%b",j,k,clk,rst,q,q_bar); 
#10 rst=1;
#10 j=1'b0; k=1'b0; 
#10 j=1'b0; k=1'b1; 
#10 j=1'b1; k=1'b0; 
#10 j=1'b1; k=1'b1; 
#20 $finish;
end
endmodule
