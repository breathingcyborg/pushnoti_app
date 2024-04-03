# Developement guide

## Start Backend Server

### Connecting your android device via adb over wifi
- connect phone with usb cable. make sure developer mode is enabled
- execute `adb devices` (should show device)
- connect device and pc on same network
- execute `adb restart 5555` to restart adb on port 5555 on device
- execute `adb connect 192.168.43.1`. Replace this ip with ip of your phone.
- execute `adb connect 192.168.43.1` to connect to your phone over wifi
- unplug cable
- execute `adb reverse tcp:3000 tcp:3000` to make port 3000 of your machine available on port 3000 of your phone. (tcp:remote_port tcp:local_port)

If you have multiple devices connected, adb reverse does not work on older android devices (Android P and lower).

## Set env variables
- copy .env-example as .env and change variables

## Set firebase options
- install firebase tools

```bash
npm install -g firebase-tools
```

- install flutterfire cli

```bash
dart pub global activate flutterfire_cli
```

- configure firebase in root of your project
```bash
flutterfire configure
```

## Start flutter developement server
- use proper flutter version with fvm
```
fvm flutter use
```

- start build runner. build_runner is used for code generation.
```
fvm flutter pub run build_runner watch
```

- in a new terminal. start flutter dev server

```
fvm flutter run
```