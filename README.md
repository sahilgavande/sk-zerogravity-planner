# 🪐 SK ZeroGravity Daily Planner

> **Production Web Application**  
> **Stitch Project ID:** `4972856916003344066`  
> **Stitch Screen ID:** `92ad909518e249c586dc04b63fcdea13`  
> **Theme:** Deep Space Dark Mode, Frosted Glassmorphism, Microgravity Physics & Web Audio Engine

---

## 🚀 Overview

**SK ZeroGravity Daily Planner** is a high-performance, zero-dependency, production-ready single-page web application designed for comprehensive 24-hour time management, cognitive focus, fitness synchronization, and automated phone notification dispatches.

---

## 🌟 Key Features Implemented

### 1. 🌌 Design System & Microgravity Particle Canvas
* **Aesthetics:** Deep space palette (`#08090F`, `#0D111E`), glowing cyan (`#00F5D4`), cosmic purple (`#9D4EDD`), and supernova amber accents with `backdrop-filter: blur(16px)` glassmorphism.
* **Anti-Gravity Canvas:** Interactive HTML5 Canvas background where starry particles drift in microgravity and dynamically repel away from mouse/touch hover with constellation starlight connection lines.

### 2. ⏱️ Interactive 24-Hour Schedule Builder
* Divided into 4 distinct orbit blocks:
  * 🌅 **Morning Orbit** (06:00 – 12:00)
  * ☀️ **Afternoon Orbit** (12:00 – 17:00)
  * 🌇 **Evening Orbit** (17:00 – 21:00)
  * 🌙 **Night Deorbit** (21:00 – 06:00)
* **Real-Time Schedule Balance Meter:** Analyzes total hours across Deep Work, Gym & Fitness, Recovery & Sleep, and Health/Routine with live optimization scoring.
* **1-Click Quick Inserts:**
  * `+ Work Deep-Dive (90m)`
  * `+ Gym Protocol (60m)`
  * `+ Meal & Fuel (45m)`
  * `+ Power-Nap (25m)`
* **Task Operations:** Instant checkboxes, delete, time block filtering, and custom block modal.

### 3. 🪐 Gravity Fields (Eisenhower Matrix)
* 4 Strategic Quadrants:
  * 🚀 **Zero Gravity (Q1):** Urgent & Important (High-Priority Thrusters)
  * 🪐 **Low Gravity (Q2):** Important, Not Urgent (Orbital Planning & Long-Term Compounding)
  * ☄️ **High Mass (Q3):** Urgent, Not Important (Fast Deflection & Rapid Intercept)
  * 🌌 **Deep Space (Q4):** Not Urgent, Not Important (Deorbit & Eliminate)
* Move items between quadrants with the orbit cycle button or add tasks directly into any field.

### 4. 🎯 Focus Orb & Soundscapes (Pomodoro Engine)
* **Visual Focus Orb:** Circular glowing SVG progress ring with real-time countdown and pulsing aura.
* **Presets:** 25m Focus, 50m Sprint, 5m Short Break, 15m Recharge.
* **Built-in Web Audio API Synthesizers:**
  * 🧠 **40 Hz Gamma Focus Tone:** Stereo sine wave modulation (Left 200 Hz / Right 240 Hz) engineered for peak mental clarity and memory consolidation.
  * 🌌 **Ambient Deep Space Drone:** Low-frequency warm resonant drone with analog-style low-pass filter sweeps.
  * Master volume slider and responsive animated soundwave visualizers.

### 5. ⚡ Gym & Fitness Time Sync
* **Hypertrophy Split Selector:** Push Day (Chest/Delts/Triceps), Pull Day (Back/Biceps), Leg Day (Quads/Hamstrings), Cardio & Core.
* **Exercise Checklist:** Track sets, reps, and check off exercises with audio feedback.
* **Integrated Rest Timer:** 30s, 60s, 90s, and 120s set rest countdown with alert chimes.
* **8-Glass Hydration Tracker:** Interactive 250ml glasses logging towards a 2,000ml daily target.

### 6. 📱 Phone Message & SMS Dispatch Simulator
* **Interactive Smartphone Mockup:** Live lockscreen clock, dynamic island, and real-time incoming notification stack.
* **Native Web Notification API:** Direct integration with desktop & mobile OS push notifications with permission management.
* **Automated Dispatches:** Preset alerts for Morning Routine, Gym Reminders, Deep Work Alarms, and Evening Wrap-Up.
* **Custom SMS/Notification Dispatcher:** Schedule custom alerts with optional countdown delays (5s / 15s).
* **1-Click WhatsApp & Telegram Sync:** Automatically formats your daily schedule into an actionable text digest ready to send to your phone.

### 7. 💾 Data Persistence & Local Storage
* Automatically saves schedule items, matrix tasks, fitness splits, water intake, and focus logs to `localStorage`.
* **JSON Export:** Download full JSON backups anytime.
* **Blueprint Reset:** One-click restore to original blueprint data.

### 8. ✨ Google AI Studio (Gemini API) Integration
* **Client-Side Secure Key Storage:** Enter your free Gemini API key in the UI settings; it is stored safely in `localStorage`.
* **AI Auto-Plan Day:** Generate optimized 24-hour time-blocked schedules with one click.
* **AI Matrix Sorter:** Automatically categorize disorganized task lists into the 4 Eisenhower Gravity Quadrants.
* **AI Phone Notification Drafter:** Generate punchy, motivational mobile alerts ready for phone dispatch.

---

## 🚀 Deployment Options

### Option 1: Netlify Drop (Fastest — 30 Seconds, No CLI)
1. Open [app.netlify.com/drop](https://app.netlify.com/drop).
2. Drag and drop the `sk-zerogravity-planner` folder into the browser window.
3. Netlify immediately provisions a free SSL domain (e.g. `https://sk-zerogravity.netlify.app`) that you can open on your phone.

### Option 2: Continuous Deployment via GitHub / GitHub Pages
1. Run [deploy-github.bat](file:///C:/Users/Gavande/.gemini/antigravity/scratch/sk-zerogravity-planner/deploy-github.bat) to push your code to your GitHub repo.
2. In GitHub, go to **Settings → Pages** and select `main` branch.
3. Your site will be published at `https://<YOUR_USERNAME>.github.io/<YOUR_REPO_NAME>/`.

### Option 3: Google Firebase Hosting
1. Create a project at [console.firebase.google.com](https://console.firebase.google.com/).
2. Run [deploy-firebase.bat](file:///C:/Users/Gavande/.gemini/antigravity/scratch/sk-zerogravity-planner/deploy-firebase.bat) to deploy directly to `https://<your-project-id>.web.app`.

---

## 📂 Project Directory Structure

```text
sk-zerogravity-planner/
│
├── index.html              # Main production layout & glassmorphic HUD
├── README.md               # Documentation & setup guide
│
├── css/
│   └── style.css           # Glassmorphism, neon glows, responsive mobile styles
│
├── js/
│   ├── particles.js        # Anti-Gravity particle canvas & repulsion physics
│   ├── audio.js            # Web Audio API synthesizers (40Hz & Space Drone)
│   ├── storage.js          # localStorage manager, blueprint data & backup
│   ├── schedule.js         # 24-hour schedule builder & balance meter
│   ├── matrix.js           # Gravity Fields (Eisenhower Matrix)
│   ├── fitness.js          # Gym splits, rest timer & 8-glass water tracker
│   ├── focus.js            # Circular Focus Orb & Pomodoro logic
│   ├── notifications.js    # Phone simulator, push alerts & messenger sync
│   └── app.js              # Application coordinator & event dispatcher
│
└── assets/                 # Icons & static assets
```

---

## 🖥️ How to Run & Open

### Option 1: Direct Browser Launch
Simply double-click or open [index.html](file:///C:/Users/Gavande/.gemini/antigravity/scratch/sk-zerogravity-planner/index.html) in any modern browser (Chrome, Edge, Brave, Firefox, Safari).

### Option 2: Set as Workspace in Antigravity IDE
In Antigravity IDE:
1. Go to **File** → **Open Folder**.
2. Select: `C:\Users\Gavande\.gemini\antigravity\scratch\sk-zerogravity-planner`.
3. You now have the entire project as your active workspace!
