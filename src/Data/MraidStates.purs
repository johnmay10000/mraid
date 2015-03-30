module Data.MraidStates where

data MraidStates = Loading | Default | Expanded | Resized | Hidden

instance showMraidStates :: Show MraidStates where
  show Loading          = "Loading"
  show Default          = "Default"
  show Expanded         = "Expanded"
  show Resized          = "Resized"
  show Hidden           = "Hidden"

instance eqMraidStates :: Eq MraidStates where
  (==) Loading      Loading      = true
  (==) Default     Default     = true
  (==) Expanded     Expanded     = true
  (==) Resized     Resized     = true
  (==) Hidden     Hidden     = true
  (==) _           _           = false
  (/=) x           y           = not (x == y)