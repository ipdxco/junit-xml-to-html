# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

## [1.1.2] - 2023-12-01
### Changed
- use saxon image from ipdxco

## [1.1.1] - 2023-03-13
### Added
- support for summary HTML reports

## [1.1.0] - 2023-03-13
### Changed
- start using `pl-strflt/saxon`

### Removed
- removed `junit-xml-to-html` container image

## [1.0.5] - 2023-03-10
### Changed
- start using `pl-strflt/docker-container-action/.github/actions/github`

## [1.0.4] - 2023-03-10
### Fixed
- correctly extract the repository and ref inputs on self-hosted runners

## [1.0.3] - 2023-03-10
### Changed
- use jq instead of cut to infer docker-container-action inputs

## [1.0.2] - 2023-03-10
### Fixed
- correctly set the repository and ref inputs for docker-container-action

## [1.0.1] - 2023-03-09
### Changed
- migrated to pl-strflt/docker-container-action

## [1.0.0] - 2023-02-28
### Added
- v1 of the JUnit XML to HTML action
