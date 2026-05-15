module top;
string name;
int i,J;

initial begin 
	name = "raja";
	J = name.len();
	$display("the string is %s",name);
	for(i = J-1; i >= 0; i--) begin 
      $write("%c",name[i]);
	end 
  $display("");
end		
endmodule
		
	