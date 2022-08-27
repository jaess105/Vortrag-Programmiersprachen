#! /bin/bash

array=("HTML & CSS" "JavaScript und TypeScript" "PHP" "Ruby" "Java" "Kotlin" "Dart" "Golang" "C, C++ & Rust" "C# (C Sharp)" "Python" "Objective-C und Swift" "R & Matlab")

for directory in "${array[@]}"
do
    mkdir "$directory"
done