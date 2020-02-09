#!/usr/bin/env bash

cd /Users/ibeekman/Sandbox/brew-GHA-profiling
git commit --allow-empty -m "Cron push at $(date -u)"
git push origin
