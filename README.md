# 🎮 Classic UI Launcher
## A Sims Legacy Collection UI Fix

Classic UI Launcher automates the process of changing your monitor's resolution when you start the game in order to bypass the in-game scaling behaviors. It automatically switches your monitor’s resolution *before* the game launches, and restores it to native *after* you exit.

*In practice*, it's a game launcher that can force **The Sims Legacy Collection** to run at the resolution of your choice and use **your monitor and GPU** for resolution scaling instead of letting the game’s internal scaler pixelate the UI.

Run the installer, follow the instructions, select the resolution you want The Sims Legacy Collection to run at, use Classic UI Launcher to launch the game!

*To be clear, this is designed to run your game lower than your monitor's native resolution for people that need that function.* **Probable use cases are listed below.**

---

## 🎯 Typical Use Cases

I recommend capping the in-game resolution to **1080p** if you can stand the black borders introduced at this resolution. Otherwise I recommend using **1365x768**. 
- Selecting **1440p** or **4K** as your in-game resolution will result in the same strange scaling behavior as the default `Sims.exe`. 

- 🖥️ **1440p / 4K Displays** (*2560x1440 / 3840x2160*)
  Switch to **1920×1080** to eliminate the pixelated UI.

- 🖥️ **1080p Displays** (*1920x1080*) 
  Drop to **1365×768** for a larger UI and no black bars on the neighborhood screen.

- 🖥️ **768p Displays** (*1366x768*)
  Drop to **1365x768** for a properly scaled UI without scaling artifacts.

- 🖥️ **720p Displays**
  Supported but not much of a reason to use this program unless you want to have 800x600 or 1066x600 scaled by your monitor.

- 📺 **4:3 Displays**
  Supported.

- 😤 **Scaling Annoyances**  
  If you hate the Sims Legacy Collection’s built-in fullscreen behavior, this gives you proper scaling with more options.

---

## 🚨 Warnings

1. 🛡️ **Antivirus Alerts**  
   `nircmd.exe` and compiled scripts may trigger false positives. Whitelist the extracted `Classic UI Launcher` folder and your `The Sims Legacy` folder before running the installer.
   **Note from the Author:** *"Malwarebytes flags this on my system as well. Take a look at the source code on GitHub. The `.ahk` files are easily viewable*
   Source is fully available: [GitHub Repository](https://github.com/Anarkkie/Classic-UI-Launcher-for-The-Sims-Legacy-Collection)

3. 🧮 **Custom Resolutions**  
   Some resolutions (e.g., **1365×768**, **960×720**, **1066×600**) may need to be created manually in your GPU software.

4. 🔐 **Admin Rights**  
   - Only **`Classic UI Launcher Setup.exe`** requires admin to create shortcuts.  
   - The launcher itself (**`Classic UI Launcher.exe`**) runs fine without elevation.

5. 🚫 **No Game File Changes**  
   Your Sims installation remains intact. You can still use the regular launcher anytime.

---

## ✨ Features

- ⚙️ **Automatic Resolution Switching**  
  Uses [**NirCmd**](https://www.nirsoft.net/utils/nircmd.html) to change your monitor to the selected resolution before launch.

- 🔄 **Seamless Revert**  
  Instantly restores your native resolution after you quit.

- 🧩 **Eliminates the Pixelated UI Issue**   
  By capping your game to **1080p** or lower.

- 🛠️ **Easy Setup (Some Steps Required)**  
  A guided installer walks you through setting everything up and picking your desired internal resolution.

- 📦 **Portable & Open Source**  
  No registry edits. No background services. Just works.

---

## ⚠️ The Problem

❌ The default `Sims.exe`:
  - Uses *weird internal scaling* that separates 2D and 3D elements, leading to pixelation and scaling artifacts at **native 1440p and above** or when running the game at a resolution lower than your monitor’s native resolution.
  - 🔍 On **4K and 1440p monitors**:
    - Running the game at **native** causes severe **UI pixelation** — especially in menus and dialogs — because the game was never meant to be viewed at those pixel densities.
  - 📐 At **1080p and lower**:
    - The game actually looks sharp and scales correctly *if* the in-game resolution matches the monitor's native resolution. However, the **black bars** on the neighborhood and Create-a-Sim screens drive some users crazy.
  
🌀 Lowering the in-game resolution using the default launcher leads to **worse image quality**, *leaving **1080p**, **1440p**, and **4K** users stuck* with blocky visuals and pixelated UI.


✅ Classic UI Launcher solves this by letting **your GPU and monitor** handle the resolution scaling instead of the game. You get a **clean, properly scaled UI** even at lower-than-native resolutions.

---

## ✅ The Solution

Classic UI Launcher shifts all resolution scaling responsibility away from `Sims.exe` and hands it over to **your GPU and monitor**, which are much better at the job.

Instead of modifying the game itself, the launcher:
- 🔧 **Temporarily switches your monitor** to your chosen resolution before launching the game.
- 🔙 **Restores your native resolution** as soon as you exit.
- 🔐 Leaves all Sims files untouched — it's fully external and reversible.

🖱️ You’re free to choose from several internal game resolutions during setup, including:
- 🖼️ **Your monitor's native resolution** (*1440p and 4k will retain default `Sims.exe` scaling behavior*)
- 📏 Or **lower resolutions** like 1365×768, 960×720, or 1066×600 for cleaner UI scaling or to remove black borders.

- 💡 It’s especially helpful for:
  - 📏 **1080p users** who want to run at **1365×768** to get a larger UI and remove black borders *without* blurring.
  - 🧼 **1440p and 4K users** who want to run at **1080p** for a smoother-looking UI without pixelation, while keeping everything sharp through proper GPU scaling.

🛠️ The setup is **re-runnable at any time**, so you can change your preferred resolution whenever you like.

⚙️ If you take the time to set up **custom resolutions** and configure your **GPU’s scaling mode** (e.g. “preserve aspect ratio” and “scale on GPU”), the experience becomes seamless going forward.  
That GPU setup only needs to be done **once**, and from then on, launching and playing will be totally smooth.

---

## 📥 Installation Instructions

1. 🔽 **Download**  
   [Download the latest version here](https://github.com/Anarkkie/Classic-UI-Launcher-for-The-Sims-Legacy-Collection/releases)

2. 📂 **Extract ZIP**  
   Place the folder wherever you like  
   OR copy the **contents** of the **Classic UI Launcher** folder into the game path where **Sims.exe** is located.

3. 🧼 **Whitelist (Optional but Recommended)**  
   Whitelist both the folder where you placed the launcher and your Sims install directory to avoid antivirus issues.

4. 🚀 **Run Setup**  
   Launch `Classic UI Launcher Setup.exe`, follow the prompts, and select a resolution.

5. 🖥️ **Set In-Game Resolution**  
   Set the in-game resolution to **match** what you chose during setup.

---

## 🧠 Custom Resolution Setup

**1365x768**, **960x720**, or **1066x600** most likely need to have custom resolutions created:

### 🟩 NVIDIA
- Right-click desktop → **NVIDIA Control Panel**  
- **Change resolution** → **Customize** → **Create Custom Resolution**  
- **Adjust Desktop Size & Position** → **Scaling Mode: Aspect Ratio**, performed on: **GPU**

### 🟥 AMD
- Right-click desktop → **AMD Software**  
- **Display** → **Custom Resolutions** → Enter values manually  
- Enable **GPU scaling** + **Preserve Aspect Ratio**

### 🟦 Intel
- Open **Intel Graphics Command Center**  
- Go to **Display** → **Custom Resolutions** → Add your desired mode

✅ Once added, you shouldn't need to do this again unless you do a clean install of your GPU drivers.

---

## ❓ FAQ

**What does this actually do?**  
> It switches your monitor to a chosen resolution *before* the game boots, and switches back afterward. This avoids the game’s bad scaling.

**Will this break anything?**  
> No. It doesn't touch Sims.exe or any core files. It only changes display settings temporarily.

**Why is my antivirus flagging this?**  
> NirCmd and compiled scripts can be falsely flagged. Check the [GitHub repo](https://github.com/Anarkkie/Classic-UI-Launcher-for-The-Sims-Legacy-Collection) if you want to build it yourself.

**Do I need admin rights?**  
> Only for the Setup to make shortcuts and copy files. The launcher itself runs without admin.

**Isn’t lowering my resolution just blurry?**  
> Yes, in a sense — but that’s kind of the point. Your monitor’s GPU-based scaling looks **much better** than the game's internal one, especially for Sims 1.  
> It smooths the UI and gives it that *classic*, authentic look.

**EA App Initialization Failed. The game failed to successfully launch from the EA App.**
> This error drives me nuts too. It's not my mod doing this. This also happens launching the game normally.
  - Just press `OK`, let the resolution revert back to your native resolution. Starting the game again should work.

**The resolution didn't revert back to my native resolution!**
> Usually happens after the EA App error. Be sure to allow the resolution to switch back to your monitor's native resolution after pressing `OK`.
  - Try launching the game again, and it should switch back to your native resolution when you are done.
  - Go into your Display Settings and change it back. 
    - *This shouldn't happen often, but I will be looking into it.*

---

## 🗑️ Uninstallation

1. Delete these files from wherever you installed them:
   - `Classic UI Launcher.exe`  
   - `nircmd.exe`  
   - `nircmdc.exe`  
   - `settings.ini`

2. That’s it. No registry changes. No hidden leftovers.

3. To reinstall, just run the setup again.

---

## 🙌 Credits

- 👤 **Mod Author**: [Anarkkie](https://github.com/Anarkkie)  
- 🧠 **Logic/Assistance**: [ChatGPT (OpenAI)](https://openai.com/)  
- 🖥️ **Resolution Switching**: [NirCmd](https://www.nirsoft.net/utils/nircmd.html)  
- 🧾 **Scripting**: [AutoHotkey](https://www.autohotkey.com/)

Thanks to everyone in the Sims community for testing and feedback! ❤️  
Issues or questions? Check the GitHub repo or open a support thread.

---

## 🔗 Related Links

- https://github.com/Anarkkie/Classic-UI-Launcher-for-The-Sims-Legacy-Collection  
- https://www.reddit.com/r/thesims1/s/ENk8UhxN9V  
- https://steamcommunity.com/app/3314060/discussions/0/550108023198062592/

---
Enjoy your *classic* Sims experience — the way it was meant to look!
