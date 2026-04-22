# Practical 6, 7, 9 – Quick Practical Steps with Commands

## Practical 6: Read/Write Data from Firebase

### Aim
Connect Flutter with Firebase and perform read/write operations using Cloud Firestore.

---

## Step-by-Step Procedure

### Step 1: Create Flutter Project
```cmd
flutter create firebase_app
cd firebase_app
```

---

### Step 2: Open Firebase Console
- Open Firebase Console
- Login using Gmail
- Click **Create Project**
- Project Name: `StudentDataApp`
- Click Continue → Create Project

---

### Step 3: Add Android App
- Click Android icon
- Copy package name from:

```text
android/app/build.gradle
```

Example:
```text
com.example.firebase_app
```

- Paste package name in Firebase
- Click **Register App**

---

### Step 4: Download google-services.json
Download:
```text
google-services.json
```

Paste inside:
```text
android/app/
```

---

### Step 5: Update build.gradle Files

### File 1:
```text
android/build.gradle
```

Add:
```gradle
classpath 'com.google.gms:google-services:4.3.15'
```

---

### File 2:
```text
android/app/build.gradle
```

Add at bottom:
```gradle
apply plugin: 'com.google.gms.google-services'
```

---

### Step 6: Add Firebase Packages
Open:
```text
pubspec.yaml
```

Add:
```yaml
firebase_core: ^2.24.2
cloud_firestore: ^4.13.6
```

Run:
```cmd
flutter pub get
```

---

### Step 7: Initialize Firebase
Add in `main.dart`
```dart
await Firebase.initializeApp();
```

---

### Step 8: Change Firestore Rules
Go to:
```text
Firestore Database → Rules
```

Use:
```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /{document=**} {
      allow read, write: if true;
    }
  }
}
```

Publish rules.

---

### Step 9: Run App
```cmd
flutter run
```

---

## Important Commands
```cmd
flutter pub get
flutter run
flutter doctor
```

============================================================

# Practical 7: Test and Deploy Production Ready Flutter App on Android Platform

## Aim
Test Flutter app and generate release APK for deployment.

---

## Step-by-Step Procedure

### Step 1: Create Project
```cmd
flutter create student_info_app
cd student_info_app
```

---

### Step 2: Write Code in main.dart
Use simple Student Info App.

---

### Step 3: Run App for Testing
```cmd
flutter run
```

Check:
- TextField working
- Button working
- No crash
- No red errors

---

### Step 4: Analyze Code
```cmd
flutter analyze
```

Fix warnings if needed.

---

### Step 5: Build Release APK
```cmd
flutter build apk --release
```

Expected output:
```text
Built build/app/outputs/flutter-apk/app-release.apk
```

---

### Step 6: APK Location
```text
build/app/outputs/flutter-apk/app-release.apk
```

---

### Step 7: Use Emulator (if mobile not allowed)
Open Android Studio:
```text
Tools → Device Manager
```

Create Virtual Device → Start Emulator

Check device:
```cmd
flutter devices
```

Run app:
```cmd
flutter run
```

---

## Important Commands
```cmd
flutter run
flutter analyze
flutter build apk --release
flutter devices
flutter install
```

============================================================

# Practical 9: Deploy E-Commerce PWA to GitHub Pages

## Aim
Deploy E-Commerce Progressive Web Application to GitHub Pages.

---

## Step-by-Step Procedure

### Step 1: Create React Project
```cmd
npx create-react-app ecommerce-pwa
cd ecommerce-pwa
```

---

### Step 2: Replace App.js
Add simple Product Store UI.

---

### Step 3: Run Project Locally
```cmd
npm start
```

Browser opens:
```text
http://localhost:3000
```

---

### Step 4: Install gh-pages Package
```cmd
npm install gh-pages --save-dev
```

---

### Step 5: Add homepage in package.json
Add:
```json
"homepage": "https://yourusername.github.io/ecommerce-pwa"
```

Replace `yourusername` with your GitHub username.

---

### Step 6: Add Deploy Scripts
Inside `scripts` add:

```json
"predeploy": "npm run build",
"deploy": "gh-pages -d build"
```

---

### Step 7: Create GitHub Repository
Repository name:
```text
ecommerce-pwa
```

---

### Step 8: Push Code to GitHub
```cmd
git init
git add .
git commit -m "Initial Commit"
git branch -M main
git remote add origin https://github.com/yourusername/ecommerce-pwa.git
git push -u origin main
```

---

### Step 9: Deploy to GitHub Pages
```cmd
npm run deploy
```

---

### Step 10: Live URL
```text
https://yourusername.github.io/ecommerce-pwa
```

---

## Important Commands
```cmd
npm start
npm install gh-pages --save-dev
npm run build
npm run deploy
git init
git push
```

