module binary2grey #(parameter n=3)
  (
  input [n-1:0] binary,
  output reg [n-1:0]grey);
  genvar i;
  generate 
    for(i=0;i<n-1;i=i+1) begin
      assign grey[i]=binary[i]^binary[i+1];
    end
  endgenerate
  
  assign grey[n-1]=binary[n-1];
endmodule
