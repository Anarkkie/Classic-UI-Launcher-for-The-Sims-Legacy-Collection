# **Classic UI Launcher**
**A Sims Legacy Collection UI Fix**

A game launcher that forces **The Sims Legacy Collection** to use **your monitor and GPU** for resolution scaling — keeping **2D and 3D elements** tied at a **1:1 ratio** instead of letting the game’s internal scaler scale things awkwardly. 

Automates the process of changing your monitor's resolution before The Sims Legacy Collection launches and changing back to your native resolution when you are done playing.
Properly scales the game when running below your monitor's native resolution.
- **Automatic Resolution Switching**  
  - **NirCmd** changes your monitor to the selected resolution before The Sims launches.  
- **Seamless Revert**  
  - Instantly restores your native resolution after you exit the game.  
- **Preserves True 1:1 Ratio**  
  - Keeps the 2D UI and 3D world aligned as intended, free from the game’s internal scaling quirks.  
- **Easy Setup** but does require some steps.  
  - A guided installer helps you pick a resolution and set up shortcuts.  
- **Portable & Open Source** 

---

## Typical Use Cases      

- **1440p/4K Displays**  
  - Switch down to 1920x1080 to avoid pixelated UI and mismatched scaling by letting the GPU and monitor handle it. 
- **1080p Displays**  
  - Switch down to 1365×768 for a larger UI and no ugly black borders. Having the monitor and GPU handle the scaling.  
- **Disliking Default Scaling**  
  - If The Sims Legacy Collection’s default “fullscreen” scaling annoys you, this provides a more authentic look and gives you more options.

---

### The Problem
- **Default Sims.exe** 
The Sims Legacy Collection's internal method of scaling is strange, often resulting in mismatched proportions between the 2D interface (menus, UI) and 3D world (characters, objects).  
- On 2560x1440p+ monitors, a **pixelated UI** effect gets introduced and has odd scaling artifacts at any resolution.
- On 1080p monitors, some users might want to run the game at a lower resolution to bypass the black borders on the neighborhood screen. But the built-in resolution options just look bad when running a resolution lower than your native monitor. No matter the resolution you choose. 

### The Solution
- **Classic UI Launcher** redirects all resolution management to **your monitor or GPU**, preserving the original **1:1 ratio** between 2D and 3D elements.  
- It’s **not** an upscaler. Rather, it **automatically changes** your monitor’s resolution before the game starts, then **reverts** it after you exit — **no game files are touched**.

---

## Warnings

1. **Antivirus Alerts**  
   - Compiled scripts + **NirCmd** can trigger **false positives**. If you trust Classic UI Launcher, **whitelist** it and your Sims Legacy install folder. Source is available for your review. [source code on GitHub](https://github.com/Anarkkie/Classic-UI-Launcher-for-The-Sims-Legacy-Collection)  
2. **Custom Resolutions**  
   - Oddball resolutions like **1066x600**, **1365×768**, etc. might need **custom resolution** setups in your GPU control panel (NVIDIA/AMD/Intel).  
3. **Installer Needs Admin Rights**  
   - **`Classic UI Launcher Setup.exe`** only (to create shortcuts and copy files).  
   - **`Classic UI Launcher.exe`** does **not** require elevation.  
4. **No Game File Modifications**  
   - Game data remains untouched. You can still launch The Sims Legacy Collection normally if you want.

---

## Disclaimer

- **Monitor Compatibility**  
  - Some displays reject or limit certain resolutions (especially non-standard aspect ratios).  
- **GPU Scaling**  
  - For best results, set your GPU’s **Scaling Mode** to **Aspect Ratio** (or “Preserve Aspect Ratio”) so it handles any resizing, not your display. Also make sure to perform scaling on GPU.

---

## Installation

1. **Download**  
   - [**Get the latest version**](https://github.com/Anarkkie/Classic-UI-Launcher-for-The-Sims-Legacy-Collection/releases/tag/v1.0a).  
2. **Extract ZIP**  
   - Place **"Classic UI Launcher"** anywhere you like  
     **OR**  
   - Copy its contents directly into your **The Sims Legacy** folder.  
3. **Whitelist**  
   - **Recommended**: Whitelist the folder where you put Classic UI Launcher, plus The Sims Legacy install folder, to avoid antivirus flags.  
4. **Run Setup**  
   - Double-click **`Classic UI Launcher Setup.exe`**, follow prompts and choose a resolution. 
5. **Done**  
   - Launch via **Classic UI Launcher** shortcut or **`Classic UI Launcher.exe`**. No further config needed unless you change monitors or move files.
   - Ensure the in-game resolution option is set to the same resolution you chose in this installer. Then restart the game. 

---

## Custom Resolution & Scaling

If your monitor doesn’t list **1066x600**, **960x720**, or **1365x768**, **create** them in your GPU software:

### NVIDIA Control Panel
1. **Right-click** desktop → **NVIDIA Control Panel**  
2. **Change resolution** → **Customize** → **Create Custom Resolution**  
3. **Adjust desktop size & position** → **Aspect ratio** → **Perform scaling on: GPU**  

### AMD Software
1. **Right-click** desktop → **AMD Software**  
2. **Display** → **Custom Resolutions** → Enter your desired width/height  
3. **Scaling Mode** → **Preserve aspect ratio** → ensure GPU scaling is enabled  

### Verify in Windows
- Right-click desktop → **Display settings**. If Windows sees your new resolution, so will Classic UI Launcher.

---

## FAQ

1. **What does Classic UI Launcher do, exactly?**  
   - It sets your monitor to a chosen resolution before the game starts, bypassing the internal scaling. Then it reverts back afterward.  
2. **Will it break my Sims?**  
   - No. It never modifies **Sims.exe** or game files, just display settings.  
3. **Why is my antivirus detecting this?**  
   - NirCmd and compiled scripts sometimes look “suspicious” to AV software. The [source code](https://github.com/Anarkkie/Classic-UI-Launcher-for-The-Sims-Legacy-Collection) is open if you want to review or compile it yourself.  
4. **Do I need admin rights?**  
   - Only to run **Setup.exe**, so it can create shortcuts and write to The Sims folder. The launcher itself is fine without elevation.  
5. **Isn’t lower resolution blurry?**  
   - Sure, lower-than-native is softer. But it enlarges the UI, which many players prefer for the classic Sims vibe.
6. **I'm running a 1440p monitor and I can't choose 2560x1440 in this installer!**
   - For now, the resolution for this mod is capped at 1080p. This the highest resolution that cleanly scales the game for this mod's purpose. 

---

## Uninstallation

1. **Delete the Files**  
   - Remove **`Classic UI Launcher.exe`**, **`nircmd.exe`**, **`nircmdc.exe`**, and **`settings.ini`** from where you placed them.  
2. **No Registry Edits**  
   - The launcher doesn’t change system settings beyond these files.  
3. **Reinstall/Repair**  
   - Just re-run **`Classic UI Launcher Setup.exe`** if you ever want it again.

---

## Credits

- **Developer**: [**Anarkkie**](https://github.com/Anarkkie)  
- **Assistance**: [ChatGPT (OpenAI)](https://openai.com/) – Logic & code insights  
- **AutoHotkey**: [AutoHotkey.com](https://www.autohotkey.com/) – Scripting the launcher & installer  
- **NirCmd**: [NirSoft](https://www.nirsoft.net/utils/nircmd.html) – On-the-fly resolution switching  

**Big thanks** to the Sims community for testing and feedback!  
For questions or issues, check the [**GitHub Repo**](https://github.com/Anarkkie/Classic-UI-Launcher-for-The-Sims-Legacy-Collection) or open an issue.  

Enjoy your **classic** Sims experience!

Related Links:
- https://github.com/Anarkkie/Classic-UI-Launcher-for-The-Sims-Legacy-Collection
- https://www.reddit.com/r/thesims1/s/ENk8UhxN9V
- https://steamcommunity.com/app/3314060/discussions/0/550108023198062592/