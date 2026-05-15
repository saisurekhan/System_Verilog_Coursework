module top;

typedef enum {RED=3,ORANGE=2,YELLOW=0,GREEN=1} tr_light_t;
//here t is the new enum data type 

tr_light_t tr2;
int i;
initial begin
	tr2 = tr2.last();
	for(int i=0;i<tr2.num();i++) begin 
		$display("tr2=%s:%0d",tr2.name(),tr2);
		tr2=tr2.prev();
	end 
	
end
endmodule 
	