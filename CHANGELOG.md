# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.0] - 2024-07-21

### Added

- Initial release
- All
  - Separate HL2 projects
  - Separate projects for EP2
  - Video playback commands
  - Sample mod files

### Changed

- All
  - Convert VC projects to vs2008
  - Add captioncompiler to everything_sdk.sln
  - Add HL2 legacy flashlight preprocessor directive
  - Remove npc_fisherman from HL2 projects
  - Removed HL2 EP2 specific files in EP1 projects

### Fixed

- All
  - Missing IsBIK()
  - Already defined function in memoverride.cpp
  - memoverride.cpp linker errors
  - Missing mathlib.lib in various projects
  - Output directory in various projects
  - Add missing HL2_EPISODIC ifdefs in ai_behavior_passenger.cpp
  - Crane not playing exit animation
  - Crash when `g_pVGuiLocalize->Find()` returns null

- HL2MP
  - Fix grenade_tripmine.cpp in basegrenade_shared.h

- SDK Template
  - Add missing weapon_sdkbase files
