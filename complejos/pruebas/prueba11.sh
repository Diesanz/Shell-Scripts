#!/bin/bash

: 'Given a sentence, identify and display its fourth word. Assume that the space (' ') is the only delimiter between words.

Input Format

A text file with lines of ASCII text only. Each line has exactly one sentence.

Output Format

The output should contain N lines.

For each input sentence, identify and display its fourth word. Assume that the space (' ') is the only delimiter between words.'

while read line; do 
    echo "$line" | cut -d " " -f 4
done