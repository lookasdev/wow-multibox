- OMB software: https://github.com/OpenMultiBoxing/OpenMultiBoxing
- Jamba addon: https://legacy-wow.com/wotlk-addons/jamba/
- AutoHotKey (choose v1.1): https://www.autohotkey.com/
- recommended server: Warmane's Icecrown (x7 xp rates)

# Multibox Setup Guide

## 1. Initial Setup

### Step 1: Extract OMB
Unzip the OpenMultiBoxing folder to your preferred location.

### Step 2: Configure `launchwow.bat`
- Edit the file and set your WoW directory:
  ```bat
  set dir=D:\Games\WoW Warmane
  ```
- Remove the comment (`REM`) in front of the `timeout` command for consistent launching behavior.

### Step 3: Launch
Run `launchwow.bat` to start your WoW instances.

---

## 2. Window Layout (Recommended)

**Layout for 5 windows:**
- 1 main window (bottom)
- 4 secondary windows (top in one row)

**Suggested OMB Layout Settings:**
- ✅ Auto
- ✅ One row/col for small windows
- ✅ Main at bottom
- ⬜ Same size for all
- Aspect Ratio: **Any**
- Scale: **1/6**
- ✅ Avoid taskbar area
- Snap to: **4**

---

## 3. In-Game Preparation

### Accounts & Characters
- Create 5 Google and 5 Warmane accounts.
- Log in and create 5 characters (all Alliance or all Horde).
- Recommended classes: **5 Paladins** or **5 Druids**.

---

## 4. Addons (Recommended)

- **Essential**: `Jamba`
- Action Bar Saver  
- Auctionator  
- Bagnon  
- Cheese  
- Doom Cooldown Pulse  
- GearScore Lite  
- Genie  
- OmniCC  
- Plate Buffs  
- Postal  
- Quartz  
- SexyMap  
- Skada  
- Snowfall KeyPress  
- SoundAlerter  
- Spy  
- Tidy Plates: Clean Plates  
- Totem Plates  
- DBM  

> **Note**: Only enable essential addons (e.g., Jamba, Bagnon, ABS) for alts to save resources.

---

## 5. Hotkey Configuration

### OMB `settings.txt`
```ini
hk1,focus=Ctrl-F1
hk1,swap=Ctrl-1
hk2,focus=Ctrl-F2
hk2,swap=Ctrl-2
hk3,focus=Ctrl-F3
hk3,swap=Ctrl-3
hk4,focus=Ctrl-F4
hk4,swap=Ctrl-4
hk5,focus=Ctrl-F5
hk5,swap=Ctrl-5
hk6,focus=Ctrl-F6
hk6,swap=Ctrl-Shift-F6
hk7,focus=Ctrl-F7
hk7,swap=Ctrl-Shift-F7
hk8,focus=Ctrl-F8
hk8,swap=Ctrl-Shift-F8
hk9,focus=Ctrl-F9
hk9,swap=Ctrl-Shift-F9
hk10,focus=Ctrl-F10
hk10,swap=Ctrl-Shift-F10
```

---

## 6. Key Broadcasting

### Toggle:
- Use `Ctrl + Shift + R` (OMB default)
- Or, use a custom **AutoHotKey (AHK)** script (recommended)

#### AHK Example (v1.1):
```ahk
BindKey("~v", "v")
BindShiftKey("~+v", "v")
BindAltKey("~!v", "v")
BindCtrlKey("~^v", "v")
```

> Use `\` key to suspend/resume key broadcasting.

---

## 7. Jamba Setup

### Team
- Add all characters.
- Set the master in each instance.
- Push settings from master to all others.

### Macros
- Create Macro Set, Macro Variables, and Macros in Jamba.
- Add macros to share across all clients.
- Push settings for both macro and macro variables.
- Build macros on the main and test them.

> ⚠️ *Bug:* "Delete macro" doesn’t work — overwrite test macros on slaves instead.

### Quest Settings
- Auto-accept quests **only from team**.
- Master auto-shares accepted quests.

### Item Use
- Bind keys for item slots 1 & 2 (e.g., `-` and `=`) via keybindings.

---

## 8. Example Macros

### Follow:
```lua
/cleartarget
/stopattack
/stopcasting
/follow mainCharName
```

### Interact:
```lua
/assist mainCharName
```
> Works with "Interact With Target" keybind.

### Buff:
```lua
/target player
/castsequence reset=3 Mark of the Wild, Thorns
```

### DPS:
```lua
/target focus mainCharName
/assist mainCharName
/startattack
/cast Moonfire
```

### Heal:
```lua
/target mainCharName
/cast Rejuvenation
```

---

## 9. Additional Tips

- Set WoW to **Windowed Mode**
- Set loot to **Free for All**
- **Tank as main** = better control
- Use "Show Desktop" to minimize all windows
- Use **Ctrl + Click** on WoW in the taskbar to bring up all clients
- Keep a **notepad** with all character names
- **Mute all but main window** in Windows Volume Mixer
- In Interface Options:
  - Enable Action Bars
  - Enable Equipment Manager
  - Enable Preview Talents
- Lower graphics settings for performance
- **Time Saver**: Copy main account's `WTF\Account\[Character]` folder to others for UI/addon sync
