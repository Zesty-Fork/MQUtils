@echo off

cd ..

set godot_path="C:\Users\NathanJones\Desktop\Projects\_complete\Recycle Bin - Shortcut\Godot_v4.4.1-stable_win64.exe\Godot_v4.4.1-stable_win64.exe"
set mq_path="%cd%\MQAuthentication"

%godot_path% --headless --path %mq_path% --export-release "MQAuthentication" "dist\MQAuthentication.x86_64"

cd MQUtils

docker compose restart authentication