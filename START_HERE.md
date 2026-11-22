# vgmplay: start here

Kieran's original 2015-2016 VGM music player for the BBC Micro: an exomizer-packed VGM stream played
through the SN76489. Kept as a curiosity / early reference; superseded by simondotm's vgm-converter and
vgm-packer (README.md). A small 6502 tool/demo in beebasm.

| | |
|---|---|
| GitHub | https://github.com/kieranhj/vgmplay (public) |
| Local path | D:\beeb\mine\vgmplay (moved from OneDrive\BEEB\Projects\vgmplay on 2026-11-22) |
| Branch | `main` (only branch) |
| Last commit | 2026-04-26: Initial commit (the 2015-16 code, published as one commit) |

## What's in here
- `vgmplay.6502` - the player; `vgmplay.ssd` - the built disc (committed).
- `BotB 4406 sonic_enters_a_dance_club.vgm` - the tune; `sonic.exo` - it packed by exomizer (committed).
- `beebasm.exe`, `exomizer.exe` - the tools, in the repo root.
- `notes.txt` - notes on the stream's command bytes.
- Gitignored local folders: `exos/` (other packed tunes), `posted/` (earlier released versions, v1-v3 and discs),
  `code backups/`.

## Build and run
- `make`: runs `make.bat`: exomizer packs the VGM to `sonic.exo`, then
  `beebasm.exe -i vgmplay.6502 -do vgmplay.ssd -boot MyCode -v > compile.txt`. The rebuilt `sonic.exo` and
  `vgmplay.ssd` are byte-identical to the committed ones.
- Note: `make.bat` runs `exomizer.exe` / `beebasm.exe` from the current folder, which cmd does unless
  `NoDefaultCurrentDirectoryInExePath` is set (it is in Claude Code's shells; there it fails to find them).
- Run: `run.bat` opens `vgmplay.ssd` in B-em (`..\..\bin\B-em\B-em.exe`).

## Local changes
- Untracked: `run.bat` (the B-em launcher above). Small; commit it or leave it.
- New, uncommitted: `Makefile`, `START_HERE.md`.

## Status and next steps
- An archive of old work, published 2026-04-26; nothing planned.

## See also
- `README.md`, `notes.txt`. Successors on D: `D:\beeb\mine\vgm-packer`, `D:\beeb\mine\vgm-player-bbc`,
  `D:\beeb\mine\vgm-converter`.
