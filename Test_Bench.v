module stimulus;
 reg [6:0]dis;
 wire LED;
 wire PWM;
 monitor uut(.LED(LED),.PWM(PWM),.dis(dis));
 initial
 begin
 dis=7'b0000000;
 $dumpfile("dump.vcd");
 $dumpvars(1);
 #5 dis=7'b1111111;//127
 #5 dis=7'b0010100;//20
 #5 dis=7'b1111111;//127
 #5 dis=7'b0111100;//60
 #5 dis=7'b1111111;//127
 #5 $finish;
 end
endmodule
