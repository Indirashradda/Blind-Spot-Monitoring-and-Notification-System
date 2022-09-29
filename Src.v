module monitor(LED,PWM,dis);
input [6:0]dis;
output reg LED;
output reg PWM;
always@(dis)
begin
if(dis<=7'b1100100)
begin
assign LED=1;
assign PWM=1;
end
else
begin
assign LED=0;
assign PWM=0;
end
end
endmodule
