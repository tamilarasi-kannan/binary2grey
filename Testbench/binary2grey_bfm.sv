class binary2grey_bfm;
   virtual binary2grey_int vif;
	transaction tx;

	function new();
      vif = top.pif;
	endfunction

	task run();
		$display("Inside BFM block");
      tx = new();
      forever begin
			gen2bfm.get(tx);         	
            drive_tx(tx);
            tx.print("BFM");
		end
	endtask
   task drive_tx(transaction tx);
     $display(" driving data to design under test");
        vif.binary=tx.binary;
        #1;
        tx.grey=vif.grey;
	endtask
endclass
