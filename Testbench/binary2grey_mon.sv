class binary2grey_mon;
   virtual binary2grey_int vif;
  transaction tx;

	function new();
     this.vif=top.pif;
	endfunction

	task run();
		$display("Inside Monitor block");
      repeat(3) begin     
			this.tx=new();
            tx.binary=vif.binary;
          	#1; 
            tx.grey=vif.grey;
			mon2cov.put(tx);
			mon2sbd.put(tx);
        tx.print("MON");
		end
	endtask
endclass
