module Main where

import Debug.Trace
import Math
import Data.MraidState
import Data.MraidStates
import Data.Mraid
import Control.Monad.Eff.Ref


main = do
    --initialMraidState
    mraidState <- newRef Loading
    modifyRef mraidState (\s -> Expanded)
    state <- readRef mraidState
    print (state)
