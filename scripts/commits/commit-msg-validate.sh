#!/bin/sh

INPUT_FILE=$1
INPUT_MESSAGE=`head -n1 $INPUT_FILE`
INPUT_MESSAGE_LENGTH=${#INPUT_MESSAGE}
declare -a COMMIT_TYPE=("\\[FEATURE\\]" "\\[FIX\\]")

contains() {
      if grep -q "$1" <<< "$2"; then
        echo "Good job!"
        return 0
      else
        return 1
      fi
}

if [ $INPUT_MESSAGE_LENGTH -lt 10 ]; then
    echo "Commit message is too short (less than 10 characters: you did only $INPUT_MESSAGE_LENGTH/10)"
    exit 1
elif [ $INPUT_MESSAGE_LENGTH -gt 100 ]; then
    echo "Commit message is too long (more than 100 characters: you used $INPUT_MESSAGE_LENGTH/100)"
    exit 1
fi

FOUND_TYPE=false

for i in "${COMMIT_TYPE[@]}"
do
  result="$(contains "$i" "$INPUT_MESSAGE")"

  if contains "$i" "$INPUT_MESSAGE"; then
    FOUND_TYPE=true
  fi
done

if [[ $FOUND_TYPE == "false" ]]; then
    echo "Commit message is missing a type (e.g. [FEATURE] or [FIX])"
    exit 1
fi
