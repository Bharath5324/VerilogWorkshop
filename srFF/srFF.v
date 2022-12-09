module srFF(s,r,q,rst,qbar,clk);
input s,r,clk,rst;
output reg q,qbar;
always@(posedge clk or posedge rst)
    if (rst)
    begin
        q<=1'b0;
        qbar<=1'b1;
    end
  else begin
 
case({s,r})
{1'b0,1'b0}: begin q=q;qbar=qbar; end
{1'b0,1'b1}: begin q=1'b0;qbar=1'b1; end
{1'b1,1'b0}: begin q=1'b1;qbar=1'b0; end
{1'b1,1'b1}: begin q=1'bx; qbar=1'bx; end
endcase
 
end
 
endmodule

  // if(s==1'b1 & r=1'b0)
    //     begin 
    //         q<=1'b1
    //         qbar<=1'b0
    //     end
    // if(s==1'b0 & r=1'b1)
    //     begin 
    //         q<=1'b0
    //         qbar<=1'b1
    //     end
    //  if(s==1'b1 & r=1'b1)
    //     begin 
    //         q<=1'bx;
    //         qbar<=1'bx;
    //     end
    //   if(s==1'b0 & r=1'b0)
    //     begin 
    //         q<=q;
    //         qbar<=qbar;
    //     end
