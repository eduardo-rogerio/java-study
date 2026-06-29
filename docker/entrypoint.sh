#!/bin/bash

echo "======================================="
echo " Java Development Environment"
echo "======================================="
export MAVEN_CONFIG=/workspace/.m2

mkdir -p "$MAVEN_CONFIG"
echo
echo "Usuário: $(id)"
echo

java -version
echo

mvn -version
echo

exec /bin/bash
