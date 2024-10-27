class transaction ;
  rand bit [n-1:0]binary;
  bit [n-1:0]grey;
  function new();
    
  endfunction
  
  task print(string name);
    $display("-----------------%s--------------",name);
    $display("Transaction Class");
    $display("b = %b",binary);
    $display("g = %b",grey);
  endtask
endclass
