// Code your testbench here
/////HW7:Write a SystemVerilog task which takes a string (English sentence) 
////and extracts words from that sentence. Example: if the input string is "Happy Independence Day"
/////// Then the output should be a Queue of strings when printed using %p should produce {"Happy", "Independence", "Day"} 
//////If the input is " Raja Bandi " then the output should be {"Raja","Bandi"} Multiple spaces, leading spaces and trailing spaces should be ignored.


module hw7;

 string sentence = "my name is sai surekha";
 string words[$];

 task automatic extract_words(
  input  string temp_sentence,
  output string temp_output_words[$]
);
 
  string current_word;
  byte   each_letter_in_cw;
  int    i, word_length;

  current_word = "";
  temp_output_words.delete();
  word_length = temp_sentence.len();


  for (i = 0; i < word_length; i++) begin
    each_letter_in_cw = temp_sentence[i];      // get the character
    if (each_letter_in_cw == " ") begin
      if (current_word.len() != 0) begin
        temp_output_words.push_back(current_word);
        current_word = "";
      end
    end else begin
      current_word = {current_word, each_letter_in_cw}; // append char
    end
  end

  // push last word if any
  if (current_word.len() != 0) begin
    temp_output_words.push_back(current_word);
  end
endtask


initial begin 
	extract_words(sentence,words);
	$display("the extracted words are %p",words);
end 

endmodule 
		
			

		



		

