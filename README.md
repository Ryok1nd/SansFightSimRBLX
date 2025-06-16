# Sans Fight Simulator

#### Video Demo:
*(Add a link to your demo video here)*

#### Description
A demo of an Undertale combat engine inside Roblox. This project recreates the first few attacks from the sans fight in Undertale.

#### Key Features
- First three attacks implemented:
  - Sans Intro
  - Sans Bone Gap 1
  - Sans Blue Bone 1
- Undertale Movement
  -Red heart/Free roam movement
  -Blue heart/Gravity movement
- Different hit types
  -Normal hit. When player touches, they take damage
  -Blue hit. When player moves while touching, they take damage

#### File Structure
- `ServerScriptService/` - contains all Lua scripts for Sans attacks and hit detection on the server-side
- `StartPlayerScripts` - contains all Lua scripts for player movements, remote event function and start player attributes locally
- `Modules/` - supporting modules and utilities
- `SansFightSimulator.rbxlx` - full Roblox place file 

#### Next Steps
- Learn how to implement player inertia on moving platforms
- Complete the rest of the attacks
- Continue improving combat mechanics and syncing animations
- Add more models and actual designs
- Add boss loops
- Add bottom buttons

#### Technologies Used
- Roblox Studio
- Roblox Lua scripting
- TweenService for animations
- RemoteEvents for client-server communication
- Chatgpt for learning
