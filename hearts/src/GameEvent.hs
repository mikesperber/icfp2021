module GameEvent where

import Cards

data GameEvent
  = HandDealt Player Hand
  | PlayerTurnChanged Player
  | LegalCardPlayed Player Card
  | TrickTaken Player Trick
  | IllegalCardPlayed Player Card
  | GameEnded Player
  deriving (Eq, Show)

data GameCommand
  = DealHands PlayerHands
  | PlayCard Player Card
  deriving (Eq, Show)
