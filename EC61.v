module EC61(in,op,rst,clk);
input rst,clk;
input  [2:0]in;
output op;
reg [2:0]state;
reg op;
always @(posedge clk, posedge rst)
begin
	if(rst)
		begin
		state<=000;
		op<=0;
		end
	else
		begin
		case(state)
		3'b000:begin
			if(in==3'b001)begin
				state<=3'b001;
				op<=0;
				end
				
			else if(in==3'b010)begin
				state<=3'b010;
				op<=0;
				end
				
			else if(in==3'b101)begin
				state<=3'b000;
				op<=1;
				end
			
			end
		3'b001:begin
			if(in==3'b001)begin
				state<=3'b010;
				op<=0;
				end
			
			else if(in==3'b010)begin
				state<=3'b011;
				op<=0;
				end
			
			else if(in==3'b101)begin
				state<=3'b001;
				op<=1;
				end
				
			end
		3'b010:begin
			if(in==3'b001)begin
				state<=3'b011;
				op<=0;
				end
			else if(in==3'b010)begin
				state<=3'b100;
				op<=0;
				end
				
			else if(in==3'b101)begin
				state<=3'b010;
				op<=1;
			
				end
			end
		3'b011:begin
			if(in==3'b001)begin
				state<=3'b100;
				op<=0;
				end
				
			else if(in==3'b010)begin
				state<=3'b000;
				op<=1;
				end
			else if(in==3'b101)begin
				state<=3'b011;
				op<=1;
				
				end
			end
		3'b100:begin
			if(in==3'b001)begin
				state<=3'b000;
				op<=1;
				end
			
			else if(in==3'b010)begin
				state<=3'b001;
				op<=1;
				end
			
			else if(in==3'b101)begin
				state<=3'b100;
				op<=1;
				end
			end
		default:begin
			state<=3'b000;
			op<=0;
			end
			endcase
		end
	end
endmodule
                                 

				
			