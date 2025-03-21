# 🎮 Classic UI Launcher
## A Sims Legacy Collection UI Fix

A game launcher that forces **The Sims Legacy Collection** to use **your monitor and GPU** for resolution scaling — keeping 2D and 3D elements tied at a **1:1 ratio** instead of letting the game’s internal scaler stretch or blur things.

It automatically switches your monitor’s resolution *before* the game launches, and restores it *after* you exit — allowing for clean, GPU-handled scaling without touching any game files.

---

## 🚨 Warnings

1. 🛡️ **Antivirus Alerts**  
   `nircmd.exe` + compiled scripts may trigger false positives. Whitelist the folder if needed.  
   Source is fully available: [GitHub Repository](https://github.com/Anarkkie/Classic-UI-Launcher-for-The-Sims-Legacy-Collection)

2. 🧮 **Custom Resolutions**  
   Some resolutions (e.g., **1365×768**, **960×720**, **1066×600**) may need to be created manually in your GPU software.

3. 🔐 **Admin Rights**  
   - Only **`Classic UI Launcher Setup.exe`** requires admin to create shortcuts.  
   - The launcher itself (**`Classic UI Launcher.exe`**) runs fine without elevation.

4. 🚫 **No Game File Changes**  
   Your Sims installation remains untouched. You can still use the regular launcher anytime.

---

## ✨ Features

- ⚙️ **Automatic Resolution Switching**  
  Uses [**NirCmd**](https://www.nirsoft.net/utils/nircmd.html) to change your monitor to the selected resolution before launch.

- 🔄 **Seamless Revert**  
  Instantly restores your native resolution after you quit.

- 🧩 **Preserves 1:1 Ratio**  
  Keeps 2D UI and 3D world properly aligned, eliminating blur and scaling artifacts.

- 🛠️ **Easy Setup (Some Steps Required)**  
  A guided installer walks you through picking your internal resolution and setting up shortcuts.

- 📦 **Portable & Open Source**  
  No registry edits. No background services. Just works.

---

## 🎯 Typical Use Cases

- 🖥️ **1440p / 4K Displays**  
  Switch to 1920×1080 to eliminate pixelated UI and scaling bugs.

- 📺 **1080p Displays**  
  Drop to 1365×768 for a larger UI and no black bars on the neighborhood screen.

- 😤 **Scaling Annoyances**  
  If you hate the Sims Legacy Collection’s built-in fullscreen behavior, this gives you proper scaling with more options.

---

## ⚠️ The Problem

- ❌ The default `Sims.exe` uses *weird internal scaling* that separates 2D and 3D elements, leading to pixelation, stretched UI, or awkward proportions when running the game at a resolution lower than your monitor’s native.

- 🔍 On **4K and 1440p monitors**, running the game at native resolution causes severe **UI pixelation** — especially in menus and dialogs — because the game was never meant to be viewed at those pixel densities.

- 📐 On **1080p and lower**, the game actually looks sharp and scales correctly *if* the in-game resolution matches the monitor. However, the **black bars** on the neighborhood and Create-a-Sim screens drive some users crazy.

- 🌀 Lowering the in-game resolution using the default launcher often leads to **worse image quality**, since `Sims.exe` handles scaling poorly — with fuzzy visuals, distorted elements, or mismatched UI sizing.

- ✅ Classic UI Launcher solves this by letting **your GPU and monitor** handle the resolution scaling instead of the game. You get a **clean, properly scaled UI** even at lower-than-native resolutions.

- 💡 It’s especially helpful for:
  - 📏 **1080p users** who want to run at **1365×768** to get a larger UI and remove black borders *without* blurring.
  - 🧼 **1440p and 4K users** who want to run at **1080p** for a smoother-looking UI without pixelation, while keeping everything sharp through proper GPU scaling.

---

## ✅ The Solution

Classic UI Launcher shifts all resolution scaling responsibility away from `Sims.exe` and hands it over to **your GPU and monitor**, which are much better at the job.

Instead of modifying the game itself, the launcher:
- 🔧 **Temporarily switches your monitor** to your chosen resolution before launching the game.
- 🔙 **Restores your native resolution** as soon as you exit.
- 🔐 Leaves all Sims files untouched — it's fully external and reversible.

🖱️ You’re free to choose from several internal game resolutions during setup, including:
- 🖼️ **Native resolution** (if you want to keep things sharp at 1080p or below)
- 📏 Or **lower resolutions** like 1365×768, 960×720, or 1066×600 for cleaner UI scaling or to remove black borders.

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
   Launch `Classic UI Launcher Setup.exe`, select a resolution, and follow the prompts.

5. 🖥️ **Set In-Game Resolution**  
   In Sims, set the in-game resolution to **match** what you chose during setup.

---

## 🧠 Custom Resolution Setup

If you don’t see options like **1365x768**, **960x720**, or **1066x600**, you may need to create them manually:

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

✅ Once added, you won’t need to do this again unless you change GPUs or displays.

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
> Yes — but that’s kind of the point. Your monitor’s GPU-based scaling looks **much better** than the game's internal one, especially for Sims 1.  
> It smooths the UI and gives it that *classic*, authentic look.

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
