data Person = Person Bool deriving Show -- 1

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

data Mood = Blah                -- 2
          | Woot deriving (Eq, Show)

settleDown x = if x == Woot
                  then Blah
                  else x

type Subject = String           -- 4
type Verb = String
type Object = String

data Sentence = Sentence Subject Verb Object deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"

data Rocks = Rocks String deriving (Eq, Show) -- 5
data Yeah = Yeah Bool deriving (Eq, Show)
data Papu = Papu Rocks Yeah deriving (Eq, Show)

-- phew = Papu "chases" True       -- 5.1
truth = Papu (Rocks "chomskydoz") (Yeah True) -- 5.2

equalityForAll :: Papu -> Papu -> Bool -- 5.3
equalityForAll p p' = p == p'

-- comparePapus :: Papu -> Papu -> Bool -- 5.4
-- comparePapus p p' = p > p'

{- Match the types
 -}

i :: Num a => a
i = 1                           -- Integer?

f :: Fractional a => a
f = 1.0
