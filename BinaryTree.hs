module BinaryTree 

(Tree(..), treeSum)

where

data Tree = Tree Int Tree Tree 
          | Leaf Int 
          | NullNode
          deriving (Show)

treeSum :: Tree -> Int 
treeSum NullNode = 0
treeSum (Leaf val) = val 
treeSum (Tree val left right) = val + treeSum left + treeSum right 


