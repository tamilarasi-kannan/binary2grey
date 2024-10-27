module top;
  binary2grey_int pif();
  binary2grey_env environment;
  //physical interface
  binary2grey #(.n(n)) uut(.binary(pif.binary),.grey(pif.grey));

	initial begin
		environment=new();
		environment.run();
	end
  initial begin
    #4; // To wait for the scoreboard to respond
    if(num_matches==count &&num_miss_matches==0)
      $display("######################### TEST PASSED ####################\n\t\t\t\t num_matches=%0d num_miss_matches=%0d",num_matches,num_miss_matches);
    else begin
      $display("######################### TEST FAILED ####################\n\t\t\t\t num_matches=%0d num_miss_matches=%0d",num_matches,num_miss_matches);
    end
  end
endmodule
