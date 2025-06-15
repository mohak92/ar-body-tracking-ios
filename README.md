# 🕺 AR Body Tracking App

An iOS application that uses **ARKit’s Motion Capture** technology to track human skeleton joints in real time using the device camera. Built with **SwiftUI**, **RealityKit**, and **UIKit**, this app provides a visual overlay of the user’s joint positions directly on screen.

---

## 📱 Features

- Real-time AR body tracking using the rear camera
- Visual skeleton overlay using RealityKit
- SwiftUI interface with UIKit integration for ARView
- Tracks key joint positions: head, spine, arms, legs, etc.
- Smooth AR session handling and joint updates

---

## 🚀 Requirements

- iOS 14.0+
- Xcode 14 or later
- A device with an A12 Bionic chip or newer (iPhone XR, XS, 11, SE 2nd Gen or later)
- Camera permissions enabled

---

## 🧰 Technologies Used

- **ARKit**: For motion capture and body tracking
- **RealityKit**: For rendering the AR skeleton overlay
- **SwiftUI**: For building modern UI components
- **UIKit**: For embedding ARView inside SwiftUI

---

## 🛠 Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone https://github.com/mohak92/ar-body-tracking-ios.git
   cd ar-body-tracking-ios
   ```

2. **Open the Project**
   ```bash
   open ar-body-tracking-ios.xcodeproj
   ```
3.	Build and Run
  - Ensure you run the app on a physical device (not on the simulator).
	- Grant camera permissions when prompted.

## 📂 Project Structure
```
.
├── ar-body-tracking-ios
│   ├── ar_body_tracking_iosApp.swift
│   ├── ARViewContainer.swift
│   ├── Assets.xcassets
│   │   ├── AccentColor.colorset
│   │   │   └── Contents.json
│   │   ├── AppIcon.appiconset
│   │   │   └── Contents.json
│   │   └── Contents.json
│   ├── BodySkeleton.swift
│   ├── Bones.swift
│   ├── ContentView.swift
│   ├── Info.plist
│   ├── Preview Content
│   │   └── Preview Assets.xcassets
│   │       └── Contents.json
│   ├── SkeletonBone.swift
│   └── SkeletonJoint.swift
├── ar-body-tracking-ios.xcodeproj
│   ├── project.pbxproj
│   ├── project.xcworkspace
│   │   ├── contents.xcworkspacedata
│   │   ├── xcshareddata
│   │   │   └── swiftpm
│   │   │       └── configuration
│   │   └── xcuserdata
│   │       └── mohaktamhane.xcuserdatad
│   │           └── UserInterfaceState.xcuserstate
│   └── xcuserdata
│       └── mohaktamhane.xcuserdatad
│           └── xcschemes
│               └── xcschememanagement.plist
└── README.md
```

## 📍 Known Limitations
- Works best in well-lit environments.
- Only supports full-body tracking (requires full person in camera frame).
- Limited to devices with body tracking support.

## 🔐 Privacy
This app uses the device camera solely for body tracking and does not record or store any video or personal data.

## 🙌 Acknowledgements
- Apple’s ARKit 4+ Motion Capture
-	Tutorials from developer.apple.com
-	Community contributions on ARKit & RealityKit
