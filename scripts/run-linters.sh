#!/usr/bin/env sh

SCRIPT_FOLDER=$(dirname -- "$0")
cd "$SCRIPT_FOLDER" || exit

REPO_ROOT_FOLDER="../"

swiftformat "$REPO_ROOT_FOLDER" --config "$REPO_ROOT_FOLDER/.swiftformat"
swiftlint lint --config "$REPO_ROOT_FOLDER/.swiftlint.yml" --fix "$REPO_ROOT_FOLDER"
