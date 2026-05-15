module top;

string name;
int i,J;

initial begin 
	name = "raja bandi";
	J = name.len();
	$display("the string is %s",name);
	for(i=0; i < J; i++) begin 
		if( (i==0) || (name[i-1] == " ") ) begin 
			if(name[i] >= "a" && name[i] <= "z") begin 
				name[i] = name[i] - 32;
			end
		end
	end
	$display("the final string is %s",name);
end 
endmodule 