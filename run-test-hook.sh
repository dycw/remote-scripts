#!/usr/bin/env bash

# add hook to `.pre-commit-hooks.yaml`
# edit `HOOK_NAME` below
# in your project, run:
#     ~/work/remote-scripts/run-test-hook.sh

PATH_DIR="$(
	cd -- "$(dirname "$0")" >/dev/null 2>&1 || exit
	pwd -P
)"
# HOOK_NAME='check-submodules-updated'
HOOK_NAME='check-version-bumped'

pre-commit try-repo --verbose --all-files "${PATH_DIR}" "${HOOK_NAME}"
