-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.halfAdder_types.all;

entity halfAdder is
  port(a     : in std_logic;
       b     : in std_logic;
       sum   : out std_logic;
       carry : out std_logic);
end;

architecture structural of halfAdder is
  signal result : halfAdder_types.Tuple2;

begin
  result <= ( Tuple2_sel0_std_logic_0 => a xor b
            , Tuple2_sel1_std_logic_1 => a and b );

  sum <= result.Tuple2_sel0_std_logic_0;

  carry <= result.Tuple2_sel1_std_logic_1;


end;

