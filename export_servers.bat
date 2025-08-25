@echo off

cd ..

set godot_path="C:\Users\NathanJones\Desktop\Projects\_complete\Recycle Bin - Shortcut\Godot_v4.4.1-stable_win64.exe\Godot_v4.4.1-stable_win64.exe"
set mq_authentication_path="C:\Users\NathanJones\Desktop\Projects\_complete\Recycle Bin - Shortcut\Godot\MQAuthentication"
set mq_gateway_path="C:\Users\NathanJones\Desktop\Projects\_complete\Recycle Bin - Shortcut\Godot\MQGateway"


%godot_path% --path %mq_authentication_path% --export-release "MQAuthentication" "dist\MQAuthentication.x86_64"
%godot_path% --path %mq_gateway_path% --export-release "MQGateway" "dist\MQGateway.x86_64"

cd MQUtils

docker compose up --build
