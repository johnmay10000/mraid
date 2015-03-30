module Data.MRaidEnvironment where
import Data.MraidState
import Control.Monad.Eff.Ref
--import Data.List

type MRaidEnvironment =
    { version :: String
    }