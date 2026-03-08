module EC61_tb();
reg rst,clk;
reg  [2:0]in;
wire op;
reg [2:0]state;
EC61 uut(in,op,rst,clk);
initial
begin
rst = 1'b1;
clk = 0;
#10
clk = 1;
rst =1'b0;
in[0] =3'b001;
in[1] =3'b000;
in[2]= 3'b000;
#10
clk = 0;
rst =1'b0;
in[0] =3'b001;
in[1] =3'b000;
in[2]= 3'b000;
#20
clk = 1;
rst =1'b0;
in[0] =3'b000;
in[1] =3'b001;
in[2]= 3'b000;
#40
clk = 0;
rst =1'b0;
in[0] =3'b000;
in[1] =3'b001;
in[2]= 3'b000;
#60
clk = 1;
in[0] =3'b000;
in[1] =3'b001;
in[2]= 3'b000;
#80
clk = 0;
in[0] =3'b000;
in[1] =3'b001;
in[2]= 3'b000;
#100
clk = 1;
in[0] =3'b001;
in[1] =3'b000;
in[2]= 3'b001;
end 
endmodule

