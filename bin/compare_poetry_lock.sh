#!/usr/bin/env bash

usage(){
  cat <<USAGE
usage: $(basename "$0") [-h]
      Print the difference between packages specified by your poetry.lock for
      your current (non-main) branch and main. Requires ripgrep and a /tmp
      directory.

      Flags:
        -h    Show this help message
USAGE
  exit 0
}

while getopts 'h' opt; do
  case "$opt" in
    h) usage ;;
    \?) usage ;;
  esac
done

if [[ $(git symbolic-ref --short -q HEAD) == "main" ]]; then
  echo "You must first check out the branch you want to compare to main"
  echo "Do this then try again."
  exit 1
fi

if ! command -v rg >/dev/null 2>&1; then
  echo "ripgrep (rg) is required - please install"
  exit 1
fi

# get the package names and versions from the poetry.lock file, first from this
# branch, then from main
rg -A 2 "\[\[package\]\]" poetry.lock > /tmp/new.txt
git checkout - -q
rg -A 2 "\[\[package\]\]" poetry.lock > /tmp/old.txt
# sort each one, reformat and then join
grep -E 'name =|version =' /tmp/new.txt | paste - - | sed 's/name = "\(.*\)".*version = "\(.*\)"/\1 \2/' | sort > /tmp/new_versions.txt
grep -E 'name =|version =' /tmp/old.txt | paste - - | sed 's/name = "\(.*\)".*version = "\(.*\)"/\1 \2/' | sort > /tmp/old_versions.txt
join -j 1 /tmp/old_versions.txt /tmp/new_versions.txt > /tmp/joined_versions.txt
# output into a format easily copy-pasted into PR
awk '{
    old_version = $2
    new_version = $3
    if (old_version != new_version) {
        print "  - `" $1 ": " old_version " → " new_version "`"
    }
}' /tmp/joined_versions.txt
git checkout - -q
