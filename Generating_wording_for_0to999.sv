// Code your testbench here
// or browse Examples
///Generate wording for every number from 0 to 999
module testbench;

  // Lookup tables
  string BELOW_20 [0:19] = '{
    "zero","one","two","three","four","five","six","seven","eight","nine",
    "ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen",
    "seventeen","eighteen","nineteen"
  };

  string TENS [2:9] = '{
    "twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"
  };

  int number, hundreds_place, last_2_digits, tens_place, ones_place;

  initial begin
    // loop from 0 to 999
    for (number = 0; number <= 999; number++) begin
      hundreds_place   = number / 100;
      last_2_digits      = number % 100;
      tens_place = last_2_digits / 10;
      ones_place = last_2_digits % 10;

      $write("%0d -> ", number);

      if (number == 0) begin
        $display("zero");
        continue;
      end

      // hundreds_place
      if (hundreds_place > 0) begin
        $write("%s hundred", BELOW_20[hundreds_place]);
        if (last_2_digits != 0)
          $write(" ");
        else begin
          $display(""); // exact hundred like 500
          continue;
        end
      end

      // tens and ones place block 
      if (last_2_digits < 20) begin
        $display("%s", BELOW_20[last_2_digits]);
      end
      else begin
        if (ones_place > 0)
          $display("%s %s", TENS[tens_place], BELOW_20[ones_place]);
        else
          $display("%s", TENS[tens_place]);
      end
    end

    $finish;
  end
endmodule

