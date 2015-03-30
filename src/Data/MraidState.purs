module Data.MraidState where

import Data.MraidStates

newtype MraidState = MraidState
  { state :: MraidStates
  }

instance showMraidState :: Show MraidState where
  show ( MraidState o ) =
    "State is : " ++ show o.state

initialMraidState :: MraidState
initialMraidState = MraidState
  { state : Loading
  }