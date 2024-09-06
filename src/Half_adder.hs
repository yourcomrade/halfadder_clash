{-# OPTIONS_GHC -Wno-orphans #-}
module Half_adder where
import Clash.Prelude
import Clash.Explicit.Testbench
import Data.Bits
{-# ANN topEntity
  (Synthesize
    { t_name   = "halfAdder"
    , t_inputs = [ 
                   PortName "a"
                 , PortName "b"
                  ]
    , t_output = PortProduct "" [PortName "sum", PortName "carry"]
    }) #-}
   

halfAdder :: Signal System Bit-> Signal System Bit -> (Signal System Bit, Signal System Bit)
halfAdder a b = (s,c) 
    where s = (.^.) <$> a <*> b
          c = (.&.) <$> a <*> b

topEntity::Signal System Bit ->Signal System Bit -> ( Signal System Bit,Signal System Bit)
topEntity a b = halfAdder a b

testBench ::  Signal System Bool
testBench = done
  where
    a_input = stimuliGenerator clk rst $(listToVecTH [ 0::Bit , 0, 1, 1])
    b_input = stimuliGenerator clk rst $(listToVecTH [ 0::Bit, 0, 1, 1])
    expectOutputArr = outputVerifier' clk rst $(listToVecTH [(0::Bit, 0::Bit), (1, 0), (1, 0), (0, 1)])
    
    done = expectOutputArr $ bundle (topEntity a_input b_input)
    clk = tbSystemClockGen (not <$> done)
    rst = systemResetGen


