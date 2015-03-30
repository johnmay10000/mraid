module Data.Mraid where

import Data.MraidState
import Data.MraidStates
import Data.MRaidEnvironment

import Control.Monad.RWS
import Control.Monad.RWS.Class

import Debug.Trace

type Log = [String]

type Mraid = RWS MRaidEnvironment Log MraidState

--getState :: MraidStates -> Mraid Boolean
--getState i = do
    --MraidState s <- get
    --tell [show s.state]
    --return $ show state
    --matches <- state.state == Default
    --return $ s.state == i

getState :: Unit -> Mraid String
getState _ = do
    MraidState s <- get
    return $ show s.state

getVersion :: MRaidEnvironment -> String
getVersion e = e.version

stateChangeEvent :: MraidStates -> Mraid Unit
stateChangeEvent newState = do
    MraidState s <- get
    put $ MraidState s { state     = newState
                        }
    -- TODO !! changeStateEvent !!
