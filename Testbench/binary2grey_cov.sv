class binary2grey_cov;
  transaction tx;
	covergroup bg_cg();
		 coverpoint tx.binary{
		
		 }
	endgroup

	function new();
      bg_cg = new();
	endfunction

	task run();
		$display("Inside Coverage block");
      forever begin
			mon2cov.get(tx);
			bg_cg.sample();
		end
	endtask
endclass
