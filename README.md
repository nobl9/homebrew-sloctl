# Homebrew tap for sloctl

For more details on sloctl visit 
[its repository](https://github.com/nobl9/sloctl).

How it works? Quoting Homebrew docs:

> A tap is just a Git repository so you don’t have to do anything specific
when making modifications, apart from committing and pushing your changes. \
Once your tap is installed, Homebrew will update it each time a user
runs brew update.
Outdated formulae will be upgraded when a user runs brew upgrade,
like core formulae.

## Automation

The tap is updated by [Goreleaser](https://goreleaser.com/) which in turn
is configured and run in 
[sloctl repository](https://github.com/nobl9/sloctl/blob/main/.goreleaser.yml)
on every official release.
