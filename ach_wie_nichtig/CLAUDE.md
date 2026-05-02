# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a LilyPond music engraving project: an arrangement of the baroque chorale "Ach wie flüchtig, ach wie nichtig" (Michael Franck, 1652) in a Blackgaze/Post Rock style. Arranger: Markus Herhoffer (2020). LilyPond version: 2.20.0.

## Build

Compile the score to PDF:
```bash
lilypond ach-wie-nichtig.ly
```
This outputs `ach-wie-nichtig-band.pdf` (configured via `\outputSuffix "band"`).

## Architecture

`ach-wie-nichtig.ly` is the master score file. It includes all instrumental parts and orchestrates them inside a single `\book` → `\score` block using `<<` parallel staves.

Each instrument lives in its own file following the naming pattern `<prefix>_ach-wie-nichtig.ly`:
- `voc_` — female vocal with 3 verse lyric variants
- `pno_` — piano using `\parallelMusic` to sync RH, LH-A/B/C staves
- `pad_` — synth pad
- `bass_` — bass guitar
- `ld-git_` — lead guitar
- `rh-git_` — rhythm guitar
- `drum_` — drum kit (`\drummode`)

Within each part file, musical material is broken into named variables by section (e.g. `vocIn`, `vocCho`, `vocSolo`, `vocEnd`). The master file assembles these into the full arrangement: Intro → Verse 1 → Chorus → Verse 2 → Guitar Solo → Verse 3 → End.

Global settings (tempo "Heavy and Gloomy" ♩=65, key E minor, 4/4, A4 paper, `RemoveEmptyStaffContext`) live in the master file.
