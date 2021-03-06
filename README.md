# Profiling and Getting Detailed Homebrew-on-Github-Actions Setup Information

| Push build | ![Build (push)](https://github.com/zbeekman/brew-GHA-profiling/workflows/Brew%20Info/badge.svg?event=push) |
| ---: | --- |
| __Cron deploy__ | ![Cron Deploy](https://github.com/zbeekman/brew-GHA-profiling/workflows/Brew%20Info/badge.svg?event=schedule) |

## About

This repository generates timing and configuration data for the default [Homebrew] installation on GitHub Actions `macos-latest` runner.
To browse a very thorough dump of the default [Homebrew] configuration and default packages visit the [`gh-pages` branch],
or the [rendered website]. (http://izaakbeekman.com/brew-GHA-profiling)

[Homebrew]: https://brew.sh
[`gh-pages` branch]: https://github.com/zbeekman/brew-GHA-profiling/tree/gh-pages
[rendered website]: https://izaakbeekman.com/brew-GHA-profiling

## Status

Currently, I'm collecting samples of baseline timing data so I can try to see if any of my hand tuning optimizations make any difference.
You can browse the CSV files on the [`gh-pages` branch] or by following the links on the [rendered website].
I set the workflow to run, in theory, every hour, so if all goes to plan there will be about 24 baseline cases soon.
Then I will move on to some optimization experiments.

## Planned optimization experiments

### Tweaking environment variables

By default, it looks like GitHub is turning off automatic update checking with `HOMEBREW_NO_AUTO_UPDATE`, which is a good start.
I'm going to test (in batch) the following additional variables that may (or may not) improve install times:

- `HOMEBREW_NO_ANALYTICS`
- `HOMEBREW_NO_GITHUB_API`
- `HOMEBREW_NO_INSTALL_CLEANUP`
- `HOMEBREW_NO_BOTTLE_SOURCE_FALLBACK`

The last option won't make a difference most of the time,
but it will cause you job to fail rather than attempt to build tooling from source when there is a binary package available yet.
This is only relavent when there is a network hiccup or some other similar exception and homebrew cannot fetch a bottle for a package.
But this will save GitHub some compute time and make it so that your CI jobs fail rapidly rather than compile a whole bunch of tooling from source.

### Caching

The next optimization attempt will be to cache and restore the `$(brew --cache)` directory.
Initial experiments suggest that GitHub actions are not proxying downloads, but this may be incorrect.
If we can do this ourselves, we should see a bit of a speedup.
It would be nice to cache more homebrew state, including the entire dependency tree of the requested packages in the Cellar,
but, these files may be to large and there's no good/easy way that I know of to extract and cache just the requested packages (and their dependencies).

[workflows]: ./.github/workflows
