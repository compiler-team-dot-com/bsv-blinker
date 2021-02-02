package Top;

interface Cmod;
    method ActionValue #(Bool) led_1;
    method ActionValue #(Bool) led_2;
    method Bool three;
    method Action btn(Bool pressed);
endinterface: Cmod

(* synthesize *)
(* clock_prefix="clk" *)
(* reset_prefix="rst" *)
(* always_enabled = "led_1, led_2, btn, three" *)
module mkTop(Cmod);

    Reg #(Bool) b <- mkReg(False);
    Reg #(Bool) c <- mkReg(False);

    method ActionValue #(Bool) led_1;
        b <= !b;
        return b;
    endmethod

    method Action btn(Bool pressed);
        c <= pressed;
    endmethod

    method ActionValue #(Bool) led_2;
        return c;
    endmethod

    method Bool three;
        return True;
    endmethod

endmodule: mkTop

endpackage: Top
