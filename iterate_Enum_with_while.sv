module top;

  typedef enum {RED=3, ORANGE=2, YELLOW=1, GREEN=0} tr_light_t;
  tr_light_t tr2;

  initial begin
    tr2 = tr2.last();

    while (1) begin
      $display("tr2 = %s, value = %0d", tr2.name(), tr2);

      if (tr2 == tr2.first())
        break;

      tr2 = tr2.prev();
    end
  end

endmodule
	
	