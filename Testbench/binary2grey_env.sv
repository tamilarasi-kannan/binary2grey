class binary2grey_env;
binary2grey_sbd sbd;
binary2grey_agent agent;

	function new();
		sbd=new();
		agent=new();
	endfunction

	task run();
	$display("Inside Environment");
      fork   // To run the next line of the process.
	agent.run();
	sbd.run();
      join
	endtask
endclass
