#!/usr/bin/env sh

SCRIPT_FOLDER=$(dirname -- "$0")
cd "$SCRIPT_FOLDER" || exit

REPO_ROOT_FOLDER="../"

OPTSTRING=":f"

run_swiftformat_lint() {
  swiftformat --lint "$REPO_ROOT_FOLDER" --config "$REPO_ROOT_FOLDER/.swiftformat"
}

run_swiftformat_fix() {
  swiftformat "$REPO_ROOT_FOLDER" --config "$REPO_ROOT_FOLDER/.swiftformat"
}

run_swiftlint_lint() {
  swiftlint lint --config "$REPO_ROOT_FOLDER/.swiftlint.yml" "$REPO_ROOT_FOLDER"
}

run_swiftlint_fix() {
  swiftlint lint --config "$REPO_ROOT_FOLDER/.swiftlint.yml" --fix "$REPO_ROOT_FOLDER"
}

while getopts "$OPTSTRING" opt; do
  case $opt in
    f)
      run_swiftformat_fix
      run_swiftlint_fix
      run_swiftlint_lint
      ;;
    ?)
      echo "Invalid option: -$OPTARG."
      exit 1
      ;;
  esac
done

if [ "$OPTIND" -eq 1 ]
then
  run_swiftformat_lint
  run_swiftlint_lint
fi
