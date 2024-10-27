class binary2grey_agent;
binary2grey_gen gen;
binary2grey_bfm bfm;
binary2grey_mon mon;
binary2grey_cov cov;
  
	function new();
		gen=new();
		bfm=new();
        mon=new();
		cov=new();
	endfunction

	task run();
	$display("Inside Agent");
      fork
	gen.run();
	bfm.run();
	mon.run();
	cov.run();
      join
	endtask
endclass
