# Profiling and default homebrew configuration in GitHub Actions

__Cron Deployment:__
![Cron Deployment](https://github.com/zbeekman/brew-GHA-profiling/workflows/Brew%20Info/badge.svg?branch=master&event=schedule)

This page is used to post output generated by GitHub Actions on macOS to get the details of the homebrew setup
and to run profiling experiments on ways to try to speedup Homebrew on GitHub actions.

Currently, no posting/analysis is being done on the timing data collected during this workflow.
However, the CSV files with install times for the three packages are being tracked and updated.
These can be downloaded from the deployed webpage ([https://izaakbeekman.com/brew-GHA-profiling]) or
browsed and downloaded from the [`gh-pages` branch] of the main repository.
The three CSV files with timing data are:

* [`open-mpi.csv`](./open-mpi.csv)
* [`gcc@8.csv`](./gcc@8.csv)
* [`graphviz.csv`](./graphviz.csv)

[`gh-pages` branch]: https://github.com/zbeekman/brew-GHA-profiling/tree/gh-pages
[https://izaakbeekman.com/brew-GHA-profiling]: https://izaakbeekman.com/brew-GHA-profiling

## Homebrew defaults on GitHub Actions


| `key` | `value` |
| ---: | --- |
| __date__  | Tue Feb 18 10:11:09 UTC 2020 |
| __commit__ | [23929659c03e7ffbde3f3babb9b616d2766ef70d](https://github.com/zbeekman/brew-GHA-profiling/tree/23929659c03e7ffbde3f3babb9b616d2766ef70d) |
| __branch__ | [master](https://github.com/zbeekman/brew-GHA-profiling/tree/master) |
| __repo__ | [zbeekman/brew-GHA-profiling](https://github.com/zbeekman/brew-GHA-profiling) |

### General configuration information

96 kegs, 115,572 files, 6.6GB

```
Hardware:

    Hardware Overview:

      Model Name: Apple device
      Model Identifier: VMware7,1
      Processor Speed: 3.33 GHz
      Number of Processors: 2
      Total Number of Cores: 4
      L2 Cache (per Core): 256 KB
      L3 Cache (per Processor): 12 MB
      Memory: 12 GB
      Boot ROM Version: VMW71.00V.13989454.B64.1906190538
      Apple ROM Info: [MS_VM_CERT/SHA1/27d66596a61c48dd3dc7216fd715126e33f59ae7]Welcome to the Virtual Machine
      SMC Version (system): 2.8f0
      Serial Number (system): VMNvO38W/RsY
      Hardware UUID: 4203018E-580F-C1B5-9525-B745CECA79EB

```


| `key` | `value` |
| ---: | --- |
|   cores | 4 |
| threads | 4 |

#### brew config


| `key` | `value` |
| ---: | --- |
| HOMEBREW_VERSION | 2.2.5 |
| ORIGIN | https://github.com/Homebrew/brew |
| HEAD | 4493f27db28be7f083737424cecd8edb863ec3f6 |
| Last commit | 2 weeks ago |
| Core tap ORIGIN | https://github.com/Homebrew/homebrew-core |
| Core tap HEAD | 1252f760fe029bcafb6025bd4b3835a8dfe00264 |
| Core tap last commit | 10 days ago |
| HOMEBREW_PREFIX | /usr/local |
| HOMEBREW_NO_ANALYTICS_THIS_RUN | 1 |
| HOMEBREW_NO_AUTO_UPDATE | 1 |
| CPU | quad-core 64-bit ivybridge |
| Homebrew Ruby | 2.6.3 => /System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/bin/ruby |
| Clang | 11.0 build 1100 |
| Git | 2.25.0 => /usr/local/bin/git |
| Curl | 7.64.1 => /usr/bin/curl |
| Java | 13.0.2-zulu-13.29+9, 12.0.2-zulu-12.3+11, 11.0.6-zulu-11.37+17, 1.8.0_242-zulu-8.44.0.11, 1.7.0_252-zulu-7.36.0.5 |
| macOS | 10.15.3-x86_64 |
| CLT | 11.3.1.0.1.1576735732 |
| Xcode | 11.3.1 => /Applications/Xcode_11.3.1.app/Contents/Developer |
| HOMEBREW_REPO | /usr/local/Homebrew |
| HOMEBREW_CELLAR | /usr/local/Cellar |
| HOMEBREW_CACHE | /Users/runner/Library/Caches/Homebrew |

#### Variables set in environment


| `key` | `value` |
| ---: | --- |
HOMEBREW_NO_AUTO_UPDATE | 1

#### Variables brew sets during install from source


| `key` | `value` |
| ---: | --- |
| CC | "clang" |
| CXX | "clang\+\+" |
| OBJC | "clang" |
| OBJCXX | "clang\+\+" |
| HOMEBREW_CC | "clang" |
| HOMEBREW_CXX | "clang\+\+" |
| MAKEFLAGS | "-j4" |
| CMAKE_PREFIX_PATH | "/usr/local" |
| CMAKE_INCLUDE_PATH | "/Applications/Xcode_11.3.1.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/usr/include/libxml2:/Applications/Xcode_11.3.1.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/System/Library/Frameworks/OpenGL.framework/Versions/Current/Headers" |
| CMAKE_LIBRARY_PATH | "/Applications/Xcode_11.3.1.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/System/Library/Frameworks/OpenGL.framework/Versions/Current/Libraries" |
| PKG_CONFIG_LIBDIR | "/usr/lib/pkgconfig:/usr/local/Homebrew/Library/Homebrew/os/mac/pkgconfig/10.15" |
| HOMEBREW_GIT | "git" |
| HOMEBREW_SDKROOT | "/Applications/Xcode_11.3.1.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk" |
| ACLOCAL_PATH | "/usr/local/share/aclocal" |
| PATH | "/usr/local/Homebrew/Library/Homebrew/shims/mac/super:/usr/bin:/bin:/usr/sbin:/sbin" |

### Installed taps


```
homebrew/cask: unpinned, 1 command, 3526 casks
/usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask (3,642 files, 201.8MB)
From: https://github.com/Homebrew/homebrew-cask

homebrew/cask-versions: unpinned, 163 casks
/usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask-versions (211 files, 333.9KB)
From: https://github.com/Homebrew/homebrew-cask-versions

homebrew/core: unpinned, 4910 formulae
/usr/local/Homebrew/Library/Taps/homebrew/homebrew-core (5,169 files, 12.8MB)
From: https://github.com/Homebrew/homebrew-core
```


### Installed packages


#### homebrew-core


  * adns 1.5.1
  * apr 1.7.0
  * apr-util 1.6.1_3
  * argon2 20190702_1
  * aria2 1.35.0
  * aspell 0.60.8
  * autoconf 2.69
  * azure-cli 2.0.81
  * bats 0.4.0
  * brotli 1.0.7
  * c-ares 1.15.0
  * carthage 0.34.0
  * cmake 3.16.3
  * curl 7.68.0
  * curl-openssl 7.68.0
  * freetds 1.1.24
  * freetype 2.10.1
  * gcc 9.2.0_3
  * gcc@8 8.3.0_2
  * gdbm 1.18.1
  * gettext 0.20.1
  * git 2.25.0_1
  * git-lfs 2.10.0
  * glib 2.62.4
  * gmp 6.1.2_2
  * gnupg 2.2.19
  * gnutls 3.6.12
  * go 1.13.7
  * gradle 6.1.1_1
  * icu4c 64.2
  * isl 0.22
  * jansson 2.12
  * jemalloc 5.2.1
  * jpeg 9d
  * jq 1.6
  * libassuan 2.5.3
  * libev 4.31
  * libevent 2.1.11_1
  * libffi 3.2.1
  * libgcrypt 1.8.5
  * libgpg-error 1.36
  * libidn 1.35
  * libidn2 2.3.0
  * libksba 1.3.5
  * libmetalink 0.1.3
  * libmpc 1.1.0
  * libpng 1.6.37
  * libpq 12.1_1
  * libsodium 1.0.18_1
  * libssh2 1.9.0_1
  * libtasn1 4.16.0
  * libtiff 4.1.0
  * libtool 2.4.6_1
  * libunistring 0.9.10
  * libusb 1.0.23
  * libyaml 0.2.2
  * libzip 1.6.1
  * llvm 9.0.1
  * lz4 1.9.2
  * maven 3.6.3_1
  * mpfr 4.0.2
  * nettle 3.4.1
  * nghttp2 1.40.0
  * node@12 12.15.0
  * npth 1.6
  * oniguruma 6.9.4
  * openjdk 13.0.2+8_2
  * openldap 2.4.49
  * openssl 1.0.2t
  * openssl@1.1 1.1.1d
  * p11-kit 0.23.20
  * parallel 20200122
  * pcre 8.43
  * pcre2 10.34
  * perl 5.30.1
  * php 7.4.2
  * pinentry 1.1.0_1
  * python 3.7.6_1
  * python@2 2.7.17_1
  * python@3.8 3.8.1
  * readline 8.0.1
  * rtmpdump 2.4+20151223_1
  * ruby 2.6.5
  * rustup-init 1.21.1
  * selenium-server-standalone 3.141.59
  * sqlite 3.31.1
  * subversion 1.13.0_2
  * swig 4.0.1
  * tidy-html5 5.6.0
  * unbound 1.9.6
  * unixodbc 2.3.7
  * utf8proc 2.4.0
  * webp 1.1.0
  * wget 1.20.3_2
  * xctool 0.3.7
  * xz 5.2.4

#### brew doctor


```
Your system is ready to brew.
```


#### homebrew-cask


  * chromedriver 80.0.3987.16
  * fastlane latest
  * google-chrome 80.0.3987.87
  * microsoft-edge 80.0.361.48
  * powershell 6.2.4

#### brew cask doctor


```
==> Homebrew Version
2.2.5
==> macOS
10.15.3
==> SIP
Enabled
==> Java
13.0.2-zulu-13.29+9, 12.0.2-zulu-12.3+11, 11.0.6-zulu-11.37+17, 1.8.0_242-zulu-8.44.0.11, 1.7.0_252-zulu-7.36.0.5
==> xattr issues
<NONE>
==> Gatekeeper support
Enabled
==> Homebrew Cask Install Location
<NONE>
==> Homebrew Cask Staging Location
/usr/local/Caskroom
==> Homebrew Cask Taps:
/usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask (3526 casks)
/usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask-versions (163 casks)
==> Contents of $LOAD_PATH
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/ruby-macho-2.2.0/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/rubocop-rspec-1.37.1/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/rubocop-performance-1.5.2/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/rubocop-0.79.0/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/unicode-display_width-1.6.0/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/ruby-progressbar-1.10.1/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/rspec-wait-0.0.9/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/rspec-retry-0.6.2/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/rspec-its-1.3.0/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/rspec-3.9.0/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/rspec-mocks-3.9.1/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/rspec-expectations-3.9.0/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/rspec-core-3.9.1/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/rspec-support-3.9.2/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/ronn-0.7.3/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/rdiscount-2.2.0.1/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/extensions/universal-darwin-19/2.6.0/rdiscount-2.2.0.1
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/rainbow-3.0.0/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/plist-3.5.0/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/parser-2.7.0.2/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/parallel_tests-2.30.0/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/parallel-1.19.1/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/mustache-1.1.1/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/mechanize-2.7.6/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/webrobots-0.1.2/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/ntlm-http-0.1.1/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/nokogiri-1.10.7/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/extensions/universal-darwin-19/2.6.0/nokogiri-1.10.7
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/mini_portile2-2.4.0/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/net-http-persistent-3.1.0/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/net-http-digest_auth-1.4.1/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/mime-types-3.3.1/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/mime-types-data-3.2019.1009/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/jaro_winkler-1.5.4/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/extensions/universal-darwin-19/2.6.0/jaro_winkler-1.5.4
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/http-cookie-1.0.3/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/hpricot-0.8.6/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/extensions/universal-darwin-19/2.6.0/hpricot-0.8.6
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/domain_name-0.5.20190701/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/unf-0.1.4/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/unf_ext-0.0.7.6/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/extensions/universal-darwin-19/2.6.0/unf_ext-0.0.7.6
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/diff-lcs-1.3/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/coveralls-0.8.23/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/thor-1.0.1/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/term-ansicolor-1.7.1/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/tins-1.24.0/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../../../../../../../../Library/Ruby/Gems/2.6.0/gems/sync-0.5.0/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/simplecov-0.16.1/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/simplecov-html-0.10.2/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/docile-1.3.2/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/json-2.3.0/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/extensions/universal-darwin-19/2.6.0/json-2.3.0
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/connection_pool-2.2.2/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/ast-2.4.0/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/activesupport-6.0.2.1/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/zeitwerk-2.2.2/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/tzinfo-1.2.6/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/thread_safe-0.3.6/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/minitest-5.13.0/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/i18n-1.8.2/lib
/usr/local/Homebrew/Library/Homebrew/vendor/bundle/bundler/../ruby/2.6.0/gems/concurrent-ruby-1.1.5/lib
/Library/Ruby/Site/2.6.0
/Library/Ruby/Site/2.6.0/x86_64-darwin19
/Library/Ruby/Site/2.6.0/universal-darwin19
/Library/Ruby/Site
/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0
/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/x86_64-darwin19
/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/universal-darwin19
/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby
/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0
/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/x86_64-darwin19
/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/universal-darwin19
/usr/local/Homebrew/Library/Homebrew
==> Environment Variables
LC_ALL="en_US.UTF-8"
PATH="/usr/local/Homebrew/Library/Homebrew/shims/scm:/usr/bin:/bin:/usr/sbin:/sbin"
SHELL="/bin/bash"
```


### Brewfile summarizing all available software


```
tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/cask-versions"
tap "homebrew/core"
# Cryptography and SSL/TLS Toolkit
brew "openssl@1.1"
# Download with resuming and segmented downloading
brew "aria2"
# Microsoft Azure CLI 2.0
brew "azure-cli"
# TAP-compliant test framework for Bash scripts
brew "bats"
# Decentralized dependency manager for Cocoa
brew "carthage"
# Cross-platform make
brew "cmake"
# Get a file from an HTTP, HTTPS or FTP server
brew "curl"
# GNU compiler collection
brew "gcc"
# GNU compiler collection
brew "gcc@8"
# Distributed revision control system
brew "git"
# Git extension for versioning large files
brew "git-lfs"
# Interpreted, interactive, object-oriented programming language
brew "python"
# GNU Pretty Good Privacy (PGP) package
brew "gnupg"
# Open source programming language to build simple/reliable/efficient software
brew "go"
# Open-source build automation tool based on the Groovy and Kotlin DSL
brew "gradle"
# Lightweight and flexible command-line JSON processor
brew "jq"
# Postgres C API library
brew "libpq"
# Next-gen compiler infrastructure
brew "llvm"
# Mac App Store command-line interface
brew "mas"
# Java-based project management
brew "maven"
# Platform built on V8 to build network applications
brew "node@12", link: true
# Shell command parallelization utility
brew "parallel"
# General-purpose scripting language
brew "php"
# Interpreted, interactive, object-oriented programming language
brew "python@2"
# Powerful, clean, object-oriented scripting language
brew "ruby"
# The Rust toolchain installer
brew "rustup-init"
# Browser automation for testing purposes
brew "selenium-server-standalone"
# Version control system designed to be a better CVS
brew "subversion"
# Internet file retriever
brew "wget"
# Drop-in replacement for xcodebuild with a few extra features
brew "xctool"
cask "chromedriver"
cask "fastlane"
cask "google-chrome"
cask "microsoft-edge"
cask "powershell"
```

