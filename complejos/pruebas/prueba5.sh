#!/bin/bash

: 'A mathematical expression containing +,-,*,^, / and parenthesis will be provided. Read in the expression, then evaluate it. Display the result rounded to  decimal places.

Constraints

All numeric values are <= 999.'

read -p "Enter a mathematical expression: " expression

# Check if the expression is valid
if ! [[ $expression =~ ^[-+*/^()0-9.]+$ ]]; then
  echo "Invalid expression. Please enter a valid mathematical expression."
  exit 1
fi

# Evaluate the expression using bc (bash calculator)
result=$(echo "$expression" | bc -l)

# Round the result to  decimal places
rounded_result=$(printf "%.3f" $result)

echo "Result: $rounded_result"
