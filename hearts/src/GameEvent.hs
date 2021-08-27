module GameEvent where

import Cards

{- Event Sourcing

Event:
- something that happened, in the past
- design according to domain, not technology
- events need to tell complete story
- don't worry about redundancy
- worry about longevity

- also: triggers further actions

Command:
- request to do something in the future

IMPORTANT: distinguish between events and commands
-}
{-
data GameEvent =
    GameJoined Player
  | HandDealt Hand Hand Hand Hand
  | CardLead Player Card 
  | CardPlayed Player Card
  -- from here on redundant:
  | TrickWon Player Trick 
  | GameFinished Player -- player that won
  | TurnChanged Player

data GameCommand =
    JoinGame Player
  | DealHands Hand Hand Hand Hand
-}
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
