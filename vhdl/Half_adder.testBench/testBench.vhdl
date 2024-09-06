-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Half_adder_testBench_types.all;
use testBench_slv2string_B426B45701B03559.all;

entity testBench is
  port(result : out boolean);
end;

architecture structural of testBench is
  signal z                                : Half_adder_testBench_types.index_7;
  signal result_1                         : Half_adder_testBench_types.index_4;
  signal \c$ds_app_arg\                   : Half_adder_testBench_types.Tuple2;
  signal result_2                         : boolean;
  signal s                                : Half_adder_testBench_types.index_4 := to_unsigned(0,2);
  signal \f'\                             : boolean := false;
  signal f1                               : boolean;
  signal \Half_adder.testBench2\          : Half_adder_testBench_types.Tuple2;
  signal \Half_adder.testBench3\          : std_logic;
  signal \Half_adder.testBench12\         : std_logic;
  signal \c$ds_app_arg_0\                 : Half_adder_testBench_types.index_4;
  signal \c$ds_app_arg_1\                 : std_logic;
  signal s_0                              : Half_adder_testBench_types.index_4 := to_unsigned(0,2);
  signal \Half_adder.testBench_clk\       : Half_adder_testBench_types.clk_System;
  signal \Half_adder.testBench10\         : boolean;
  signal \c$Half_adder.testBench_app_arg\ : Half_adder_testBench_types.rst_System;
  signal result_selection_res             : boolean;
  signal \c$vec\                          : Half_adder_testBench_types.array_of_Tuple2(0 to 3);
  signal \c$ds_app_arg_selection_res\     : boolean;
  signal \c$vec_0\                        : Half_adder_testBench_types.array_of_std_logic(0 to 3);

begin
  z <= resize(s,3) + resize(to_unsigned(1,2),3);

  result_selection_res <= z > to_unsigned(3,3);

  result_1 <= to_unsigned(3,2) when result_selection_res else
              resize(z,2);

  \c$vec\ <= Half_adder_testBench_types.array_of_Tuple2'( ( Tuple2_sel0_std_logic_0 => '0'
                                                        , Tuple2_sel1_std_logic_1 => '0' )
                                                        , ( Tuple2_sel0_std_logic_0 => '1'
                                                        , Tuple2_sel1_std_logic_1 => '0' )
                                                        , ( Tuple2_sel0_std_logic_0 => '1'
                                                        , Tuple2_sel1_std_logic_1 => '0' )
                                                        , ( Tuple2_sel0_std_logic_0 => '0'
                                                        , Tuple2_sel1_std_logic_1 => '1' ) );

  -- index begin
  indexVec : block
    signal vec_index : integer range 0 to 4-1;
  begin
    vec_index <= to_integer((signed(std_logic_vector(resize(s,64)))))
    -- pragma translate_off
                 mod 4
    -- pragma translate_on
                 ;
    \c$ds_app_arg\ <= \c$vec\(vec_index);
  end block;
  -- index end

  result_2 <= \f'\ when \f'\ else
              f1;

  -- register begin
  s_register : process(\Half_adder.testBench_clk\,\c$Half_adder.testBench_app_arg\)
  begin
    if \c$Half_adder.testBench_app_arg\ =  '1'  then
      s <= to_unsigned(0,2);
    elsif rising_edge(\Half_adder.testBench_clk\) then
      s <= result_1;
    end if;
  end process;
  -- register end

  -- register begin
  f_register : process(\Half_adder.testBench_clk\,\c$Half_adder.testBench_app_arg\)
  begin
    if \c$Half_adder.testBench_app_arg\ =  '1'  then
      \f'\ <= false;
    elsif rising_edge(\Half_adder.testBench_clk\) then
      \f'\ <= (s = to_unsigned(3,2));
    end if;
  end process;
  -- register end

  -- assert begin
  r_assert : block
    -- pragma translate_off
    signal actual : Half_adder_testBench_types.Tuple2;
    signal expected : Half_adder_testBench_types.Tuple2;
    -- pragma translate_on
  begin
    -- pragma translate_off
    actual <= (\Half_adder.testBench2\);
    expected <= \c$ds_app_arg\;
    process(\Half_adder.testBench_clk\) is
    begin
      if (rising_edge(\Half_adder.testBench_clk\)) then
        assert (toSLV(actual) = toSLV(expected)) report (("outputVerifier") & ", expected: " & testBench_slv2string_B426B45701B03559.slv2string(toSLV(expected)) & ", actual: " & testBench_slv2string_B426B45701B03559.slv2string(toSLV(actual))) severity error;
      end if;
    end process;
    -- pragma translate_on
    f1 <= \f'\;
  end block;
  -- assert end

  \Half_adder.testBench2\ <= ( Tuple2_sel0_std_logic_0 => \Half_adder.testBench12\
                             , Tuple2_sel1_std_logic_1 => \Half_adder.testBench3\ );

  \Half_adder.testBench3\ <= \c$ds_app_arg_1\ and \c$ds_app_arg_1\;

  \Half_adder.testBench12\ <= \c$ds_app_arg_1\ xor \c$ds_app_arg_1\;

  \c$ds_app_arg_selection_res\ <= s_0 < to_unsigned(3,2);

  \c$ds_app_arg_0\ <= s_0 + to_unsigned(1,2) when \c$ds_app_arg_selection_res\ else
                      s_0;

  \c$vec_0\ <= Half_adder_testBench_types.array_of_std_logic'( '0'
                                                             , '0'
                                                             , '1'
                                                             , '1' );

  -- index begin
  indexVec_0 : block
    signal vec_index_0 : integer range 0 to 4-1;
  begin
    vec_index_0 <= to_integer((signed(std_logic_vector(resize(s_0,64)))))
    -- pragma translate_off
                 mod 4
    -- pragma translate_on
                 ;
    \c$ds_app_arg_1\ <= \c$vec_0\(vec_index_0);
  end block;
  -- index end

  -- register begin
  s_0_register : process(\Half_adder.testBench_clk\,\c$Half_adder.testBench_app_arg\)
  begin
    if \c$Half_adder.testBench_app_arg\ =  '1'  then
      s_0 <= to_unsigned(0,2);
    elsif rising_edge(\Half_adder.testBench_clk\) then
      s_0 <= \c$ds_app_arg_0\;
    end if;
  end process;
  -- register end

  -- tbClockGen begin
  -- pragma translate_off
  clkGen : process is
    constant half_periodH : time := 10000000 fs / 2;
    constant half_periodL : time := 10000000 fs - half_periodH;
  begin
    \Half_adder.testBench_clk\ <= '0';
    wait for 100000 ps;
    while \Half_adder.testBench10\ loop
      \Half_adder.testBench_clk\ <= not \Half_adder.testBench_clk\;
      wait for half_periodH;
      \Half_adder.testBench_clk\ <= not \Half_adder.testBench_clk\;
      wait for half_periodL;
    end loop;
    wait;
  end process;
  -- pragma translate_on
  -- tbClockGen end

  \Half_adder.testBench10\ <= not result_2;

  -- resetGen begin
  resetGen : block
    constant reset_delay : time := 100000 ps - 1 ps + (integer'(1) * 10000 ps);
  begin
  -- pragma translate_off
  \c$Half_adder.testBench_app_arg\
    <= '1',
       '0' after reset_delay;
  -- pragma translate_on
  end block;
  -- resetGen end

  result <= result_2;


end;

