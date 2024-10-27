class binary2grey_sbd;
  transaction tx;
  bit[n-1:0]grey_t;
  int i;
	function new();
	endfunction

	task run();
      $display("Inside Scoreboard");
      repeat(3)begin
            mon2sbd.get(tx);
         	tx.print("SBD");
           for(i=0;i<n-1;i=i+1) begin
             grey_t[i]=tx.binary[i]^tx.binary[i+1];
            end
           grey_t[n-1]=tx.binary[n-1];
        if(grey_t==tx.grey)num_matches++;
        else begin
          		 num_miss_matches++;
        end
      end
	endtask
endclass

