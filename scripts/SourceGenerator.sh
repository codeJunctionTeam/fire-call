#!/bin/bash -e
# ----------------------------------------------------------------------------
# Clone a dataset from an external repository
# ----------------------------------------------------------------------------

# Source generator script
script_dir=$(dirname "$0")
script_dir=$(realpath $script_dir)

defaultGitBranch=master
gitBranch=$defaultGitBranch

function usageCommand() {
  echo "-r <git_repository_url> -b <branch_name>"
}

function usageHelp() {
  echo "-r: Github Repository URL."
  echo "-b: Branch of the Repository"
}

while getopts ":r:b:" opt; do
  case "${opt}" in
  r)
    gitUrl=${OPTARG}
    ;;
  b)
    gitBranch=${OPTARG}
    ;;
  *)
    usageHelp
    ;;
  esac
done
shift "$((OPTIND - 1))"

if [[ -z $gitUrl ]]; then
  echo "Please provide a GitHub Repository URL."
  exit 1
fi

function getSource() {
  dataSetDir=$script_dir/../dataset
  mkdir "$dataSetDir"
  cd "$dataSetDir"
  git clone "$gitUrl"
  git checkout "$gitBranch"
}

getSource
