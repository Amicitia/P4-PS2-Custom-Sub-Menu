# P4 Custom Sub Menu (PS2)
**Custom scripts for Persona 4 that replace the square button function with a fully featured trainer**  
<img src="/Screenshots/modmenu.gif?raw=true">  
Go to [this repository for the PC version](https://github.com/ShrineFox/Persona-4-Golden-Mod-Menu) or [this one for the Vita](https://github.com/Amicitia/P4G-Vita-Custom-Sub-Menu)
## Notable Features
- **Call Menu**: Using IDs, call a Field, Dungeon Floor, Battle, Event, Cutscene, BGM/SFX Track, Dungeon or Facility to load
- **Player Menu**: Change date/time, Social Link ranks, give yen/items, manage party members
- **Flags**: Toggle individual bitflags or entire ranges of them
More features will continue to be added as game functions are discovered.
## Optional Extensions
- QuickTravelPlus (extended quicktravel options in Yasogami High and around the town of Inaba)
- IntroSkip (start the game at 4/20)
- SaveAnywhere by [Tupelov](https://github.com/Tupelov) ([see mod release](https://gamebanana.com/gamefiles/13318))
- FindAFriend by [AnimatedSwine37](https://gamebanana.com/members/1742760) ([see mod release](https://gamebanana.com/gamefiles/12921))
## Usage (PCSX2)
### First Time Setup
1. Follow [these instructions](https://shrinefox.com/guides/modding-using-hostfs-on-pcsx2-p3-p4-smt3) to set up HostFS Mod Loading on PCSX2.
### Building the Mod
1. Download and unzip the [Mod Compendium](https://gamebanana.com/tools/6878) and add the [latest compiled Release](https://github.com/TGEnigma/Mod-Compendium/releases) to the "Mods" folder.
2. In the Mod Compendium Settings, enable "HostFS Mode" and set the output to your game folder mentioned in the setup guide.
3. Click Build and load the game in PCSX2 using the ELF file mentioned in the setup guide.
## Usage (PS2)
1. To use on hardware or other emulators, you'll have to build the mod into the ISO by [following this guide instead](https://shrinefox.com/guides/2020/03/29/loading-modded-files-in-persona-3-4-ps2/).
## Compiling the scripts yourself
You don't have to follow this section if you're merely installing the mod on your Vita. This is for developers who want to make changes to the mod.
1. Download the latest build of TGE's [AtlusScriptCompiler](https://ci.appveyor.com/project/TGEnigma/atlusscripttoolchain/build/artifacts) ([source](https://github.com/TGEnigma/AtlusScriptToolchain)), which is used to compile the **.flow** and **.msg** scripts in this repository and recompile them into **.bf** format.
2. Download this [P4 Library](https://github.com/Tupelov/Persona-Library) that includes some function names used in this menu. Extract it and overwrite the contents of the **AtlusScriptTools\Libraries folder**.
3. Also download [TGE's PAKTools](https://github.com/TGEnigma/AtlusFileSystemLibrary/releases) which is used to repack BIN/PAK files.
4. Edit the build.bat file with the paths to your AtlusScriptCompiler and PAKTool exe files. Name your edited copy build_local.bat.
5. Run build_local.bat.
### Required Files
Before you can build, you need to place the following files in your build\input folder:
1. FIELD\PACK\F007_001.P00
2. FIELD\PACK\F010_002.P00
3. FIELD\PACK\F020_001.P00
4. FIELD\PACK\F023_001.P00
5. FIELD\SCRIPT\DUNGEON.BF
6. FIELD\SCRIPT\DUNGEON01.BF
7. FIELD\SCRIPT\FIELD.BF
8. FIELD\SCRIPT\LMAP.BF
9. SCHEDULER\SCHEDULER_04.BF
These can be found in their respective folders from the game's DATA.CVM, extracted with 7zip.
