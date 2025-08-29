@echo off

cd ..

set godot_path="C:\Users\Nathan\Desktop\Godot_v4.4.1-stable_win64.exe"
set mq_authentication_path="%cd%\MQAuthentication"
set mq_gateway_path="%cd%\MQGateway"
set mq_game_path="%cd%\MQGame"


%godot_path% --headless --path %mq_authentication_path% --export-release "Linux" "dist\MQAuthentication.x86_64"
%godot_path% --headless --path %mq_gateway_path% --export-release "Linux" "dist\MQGateway.x86_64"
%godot_path% --headless --path %mq_game_path% --export-release "Linux" "dist\MQGame.x86_64"

cd MQUtils

docker compose down
docker compose up --build

pause