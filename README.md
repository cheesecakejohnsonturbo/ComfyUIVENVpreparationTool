# ComfyUI VENV Preparation Tool
Venv preparation tool for ComfyUI which will create its own launch.bat and a shortcut.lnk to it that you can move wherever you want.
You should git clone this tool side by side with your git-cloned ComfyUI. I haven't tested it with portable but you would have to use the new launcher instead of the old one in order to properly venv it. 
Whereas D:\Workspace\ is an example path, your path to your workspace is the path we're looking for.
Say that your ComfyUI instance is located in D:\Workspace\Instance01\ComfyUI\main.py where main.py is the main comfy file and an anchor value we can rely on as a sure bet, this tool should be in D:\Workspace\Instance01\ComfyUIVENVPreparationTool\SetupVenvOnlyPYTHON312.bat and executed from that path.
I haven't implemented the steps necessary to foolproof the script so make sure that the path ComfyUI exists, even if it's empty, it'll work. (you can test the .bat with an empty ComfyUI folder and also edit the .bat if you want to VENV something else than ComfyUI like another WEBUI and edit the path but that's for an advanced context)
This is an excerpt of the installer that I made to adapt Comfy 3D Pack on windows on a fresh install.
So, important paths:
X:\YourWorkspace\Yourinstance\ComfyUI\
X:\YourWorkspace\Yourinstance\ComfyUIVENVpreparationTool\
This tool is part of a set of tools that are to become optional. It is separated to keep things sorted and clean.
