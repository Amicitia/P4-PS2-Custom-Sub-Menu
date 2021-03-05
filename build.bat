set PAKPACK="path to PAKPack.exe"
set COMPILER="path to AtlusScriptCompiler.exe"
set BUILD_PATH=.\build
set INPUT_PATH=%BUILD_PATH%\input
set OUTPUT_PATH=%BUILD_PATH%\output

if not exist %BUILD_PATH% mkdir %BUILD_PATH%
if not exist %INPUT_PATH% mkdir %INPUT_PATH%
if not exist %OUTPUT_PATH% mkdir %OUTPUT_PATH%
if not exist %OUTPUT_PATH%\DATA mkdir %OUTPUT_PATH%\DATA
if not exist %OUTPUT_PATH%\DATA\FIELD mkdir %OUTPUT_PATH%\DATA\FIELD
if not exist %OUTPUT_PATH%\DATA\FIELD\SCRIPT mkdir %OUTPUT_PATH%\DATA\FIELD\SCRIPT
if not exist %OUTPUT_PATH%\DATA\FIELD\PACK mkdir %OUTPUT_PATH%\DATA\FIELD\PACK
if not exist %OUTPUT_PATH%\DATA\SCHEDULER mkdir %OUTPUT_PATH%\DATA\SCHEDULER

%PAKPACK% unpack "%INPUT_PATH%\FIELD\PACK\F007_001.P00"
%PAKPACK% unpack "%INPUT_PATH%\FIELD\PACK\F010_002.P00"
%PAKPACK% unpack "%INPUT_PATH%\FIELD\PACK\F020_001.P00"
%PAKPACK% unpack "%INPUT_PATH%\FIELD\PACK\F023_001.P00"

%COMPILER% .\field\field.bf.flow -Compile -OutFormat V1 -Library P4 -Encoding P4 -Out "%OUTPUT_PATH%\DATA\FIELD\SCRIPT\FIELD.BF" -Hook
%COMPILER% .\field\dungeon.bf.flow -Compile -OutFormat V1 -Library P4 -Encoding P4 -Out "%OUTPUT_PATH%\DATA\FIELD\SCRIPT\DUNGEON.BF" -Hook
%COMPILER% .\field\dungeon01.bf.flow -Compile -OutFormat V1 -Library P4 -Encoding P4 -Out "%OUTPUT_PATH%\DATA\FIELD\SCRIPT\DUNGEON01.BF" -Hook
%COMPILER% .\field\lmap.bf.flow -Compile -OutFormat V1 -Library P4 -Encoding P4 -Out "%OUTPUT_PATH%\DATA\FIELD\SCRIPT\LMAP.BF" -Hook
%COMPILER% .\field\f007.bf.flow -Compile -OutFormat V1 -Library P4 -Encoding P4 -Out "%OUTPUT_PATH%\DATA\FIELD\PACK\F007_001\f007.bf" -Hook
%COMPILER% .\field\f010.bf.flow -Compile -OutFormat V1 -Library P4 -Encoding P4 -Out "%OUTPUT_PATH%\DATA\FIELD\PACK\F010_002\f010.bf" -Hook
%COMPILER% .\field\f020.bf.flow -Compile -OutFormat V1 -Library P4 -Encoding P4 -Out "%OUTPUT_PATH%\DATA\FIELD\PACK\F020_001\f020.bf" -Hook
%COMPILER% .\field\f023.bf.flow -Compile -OutFormat V1 -Library P4 -Encoding P4 -Out "%OUTPUT_PATH%\DATA\FIELD\PACK\F023_001\f023.bf" -Hook
%COMPILER% .\scheduler\scheduler_04.bf.flow -Compile -OutFormat V1 -Library P4 -Encoding P4 -Out "%OUTPUT_PATH%\DATA\SCHEDULER\SCHEDULER_04.BF" -Hook

del /s /q "%INPUT_PATH%\field\pack\F007_001\*"
rmdir /s /q "%INPUT_PATH%\field\pack\F007_001"
del /s /q "%INPUT_PATH%\field\pack\F010_002\*"
rmdir /s /q "%INPUT_PATH%\field\pack\F010_002"
del /s /q "%INPUT_PATH%\field\pack\F020_001\*"
rmdir /s /q "%INPUT_PATH%\field\pack\F020_001"
del /s /q "%INPUT_PATH%\field\pack\F023_001\*"
rmdir /s /q "%INPUT_PATH%\field\pack\F023_001"

%PAKPACK% replace "%INPUT_PATH%\field\pack\F007_001.P00" f007.bf "%OUTPUT_PATH%\DATA\FIELD\PACK\F007_001\f007.bf" "%OUTPUT_PATH%\DATA\FIELD\PACK\F007_001.P00"
%PAKPACK% replace "%INPUT_PATH%\field\pack\F010_002.P00" f010.bf "%OUTPUT_PATH%\DATA\FIELD\PACK\F010_002\f010.bf" "%OUTPUT_PATH%\DATA\FIELD\PACK\F010_002.P00"
%PAKPACK% replace "%INPUT_PATH%\field\pack\F020_001.P00" f020.bf "%OUTPUT_PATH%\DATA\FIELD\PACK\F020_001\f020.bf" "%OUTPUT_PATH%\DATA\FIELD\PACK\F020_001.P00"
%PAKPACK% replace "%INPUT_PATH%\field\pack\F023_001.P00" f023.bf "%OUTPUT_PATH%\DATA\FIELD\PACK\F023_001\f023.bf" "%OUTPUT_PATH%\DATA\FIELD\PACK\F023_001.P00"
rmdir /s /q "%OUTPUT_PATH%\DATA\FIELD\PACK\F007_001"
rmdir /s /q "%OUTPUT_PATH%\DATA\FIELD\PACK\F010_002"
rmdir /s /q "%OUTPUT_PATH%\DATA\FIELD\PACK\F020_001"
rmdir /s /q "%OUTPUT_PATH%\DATA\FIELD\PACK\F023_001"