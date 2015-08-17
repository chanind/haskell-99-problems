#!/bin/bash

PROBLEM_NAME="Problem$1"
PROBLEM_SPEC_NAME="${PROBLEM_NAME}Spec"
PROBLEM_FILE="${PROBLEM_NAME}.hs"
SPEC_FILE="${PROBLEM_SPEC_NAME}.hs"

if [ -f $PROBLEM_FILE ];
then
   echo "File $PROBLEM_FILE exists already."
else
    echo "module ${PROBLEM_NAME} ( $2 ) where" | cat > $PROBLEM_FILE
fi

if [ -f $SPEC_FILE ];
then
   echo "File $SPEC_FILE exists already."
else
cat > $SPEC_FILE <<SPEC
module ${PROBLEM_SPEC_NAME} (main, spec) where

import Test.Hspec
import ${PROBLEM_NAME}

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "$2" $ do
SPEC
fi
