# **Classic UI Launcher** :video_game:
**A Sims Legacy Collection UI Fix**

A **portable tool** that forces **The Sims Legacy Collection** to use **your monitor or GPU** for resolution scaling—keeping **2D and 3D elements** at a classic **1:1 ratio** instead of letting the game’s internal scaler stretch things awkwardly.

---

## :mag: Overview

### The Problem
- **Default Sims.exe** in The Sims Legacy Collection tries to handle fullscreen and resolution scaling **internally**, often resulting in mismatched proportions between the 2D interface (menus, UI) and 3D world (characters, objects).  
- On modern monitors (especially **1440p** or higher), this can lead to a **pixelated UI**, black borders, or odd scaling artifacts.

### The Solution
- **Classic UI Launcher** redirects all resolution management to **your monitor or GPU**, preserving the original **1:1 ratio** that made the first Sims so visually cohesive.  
- It’s **not** an upscaler. Rather, it **automatically changes** your monitor’s resolution before the game starts, then **reverts** it after you exit—**no game files are touched**.

---

## :warning: Warnings

1. **Antivirus Alerts**  
   - Compiled scripts + **NirCmd** can trigger **false positives**. If you trust Classic UI Launcher, **whitelist** it and your Sims Legacy folder. Source is available for your review.  
2. **Custom Resolutions**  
   - Resolutions like **1066x600** or **1365×768** might need **custom resolution** setups in your GPU control panel (NVIDIA/AMD/Intel).  
3. **Installer Needs Admin Rights**  
   - **`Classic UI Launcher Setup.exe`** only (to create shortcuts and copy files).  
   - **`Classic UI Launcher.exe`** does **not** require elevation.  
4. **No Game File Modifications**  
   - Game data remains untouched. You can still launch The Sims Legacy Collection normally if you want.

---

## :exclamation: Disclaimer

- **Monitor Compatibility**  
  - Some displays reject or limit certain resolutions (especially non-standard aspect ratios).  
- **GPU Scaling**  
  - For best results, set your GPU’s **Scaling Mode** to **Aspect Ratio** (or “Preserve Aspect Ratio”) so it handles any resizing, not your display. Also make sure to perform scaling on GPU.

---

## :sparkles: Features

- **Automatic Resolution Switching**  
  - **NirCmd** changes to your chosen resolution right before The Sims launches.  
- **Seamless Revert**  
  - Instantly restores your native resolution after you exit.  
- **Preserves True 1:1 Ratio**  
  - Keeps the 2D UI and 3D world aligned as intended, free from the game’s internal scaling quirks.  
- **Easy Setup**  
  - A guided installer helps you pick a resolution and set up shortcuts.  
- **Portable & Open Source**  
  - Move or delete anytime; [source code on GitHub](https://github.com/Anarkkie/Classic-UI-Launcher-for-The-Sims-Legacy-Collection) for transparency.

---

## :floppy_disk: Installation

1. **Download**  
   - [**Get the latest version**](https://github.com/Anarkkie/Classic-UI-Launcher-for-The-Sims-Legacy-Collection/releases/tag/v1.0).  
2. **Extract or Copy**  
   - Place **"Classic UI Launcher"** anywhere you like  
     **OR**  
   - Copy its contents directly into your **The Sims Legacy** folder.  
3. **Whitelist**  
   - **Recommended**: Whitelist the folder where you put Classic UI Launcher, plus The Sims Legacy install folder, to avoid antivirus flags.  
4. **Run Setup**  
   - Double-click **`Classic UI Launcher Setup.exe`**, follow prompts and choose a resolution. 
5. **Done**  
   - Launch via **Classic UI Launcher** shortcut or **`Classic UI Launcher.exe`**. No further config needed unless you change monitors or move files.

---

## :wrench: Custom Resolution & Scaling

If your monitor doesn’t list certain resolutions (e.g. **1066x600**, **1365×768**), **create** them in your GPU software:

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

## :bulb: Typical Use Cases

- **1440p/4K Displays**  
  - Avoid pixelated UI and mismatched scaling by letting the GPU handle it.  
- **1080p Users Wanting Larger UI**  
  - Switch down to 1365×768 for bigger 2D elements without ugly black borders.  
- **Disliking Default Scaling**  
  - If The Sims Legacy Collection’s “fullscreen” scaling annoys you, this provides a more authentic, old-school experience.

---

## :question: FAQ

1. **What does Classic UI Launcher do, exactly?**  
   - It sets your monitor to a chosen resolution before the game starts, bypassing the internal scaling. Then it reverts back afterward.  
2. **Will it break my Sims?**  
   - No. It never modifies **Sims.exe** or game files, just display settings.  
3. **Why is my antivirus freaking out?**  
   - NirCmd and compiled scripts sometimes look “suspicious” to AV software. The [source code](https://github.com/Anarkkie/Classic-UI-Launcher-for-The-Sims-Legacy-Collection) is open if you want to review or compile it yourself.  
4. **Do I need admin rights?**  
   - Only to run **Setup.exe**, so it can create shortcuts and write to The Sims folder. The launcher itself is fine without elevation.  
5. **Isn’t lower resolution blurry?**  
   - Sure, lower-than-native is softer. But it enlarges the UI, which many players prefer for the classic Sims vibe.

---

## :outbox_tray: Uninstallation

1. **Delete the Files**  
   - Remove **`Classic UI Launcher.exe`**, **`nircmd.exe`**, **`nircmdc.exe`**, and **`settings.ini`** from where you placed them.  
2. **No Registry Edits**  
   - The launcher doesn’t change system settings beyond these files.  
3. **Reinstall/Repair**  
   - Just re-run **`Classic UI Launcher Setup.exe`** if you ever want it again.

---

## :handshake: Credits

- **Developer**: [**Anarkkie**](https://github.com/Anarkkie)  
- **Assistance**: [ChatGPT (OpenAI)](https://openai.com/) – Logic & code insights  
- **AutoHotkey**: [AutoHotkey.com](https://www.autohotkey.com/) – Scripting the launcher & installer  
- **NirCmd**: [NirSoft](https://www.nirsoft.net/utils/nircmd.html) – On-the-fly resolution switching  

**Big thanks** to the Sims community for testing and feedback!  
For questions or issues, check the [**GitHub Repo**](https://github.com/Anarkkie/Classic-UI-Launcher-for-The-Sims-Legacy-Collection) or open an issue.  

Enjoy your **classic** Sims experience!

Related Links:
https://www.reddit.com/r/thesims1/s/ENk8UhxN9V
