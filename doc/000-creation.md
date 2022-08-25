# Create the project

`https://github.com/zjkuang/react-native-builder-bob`

```
kuang@Zhengqians-iMac github % npx create-react-native-library @zjkuang/react-native-utils
✔ What is the name of the npm package? … @zjkuang/react-native-utils
✔ What is the description for the package? … @zjkuang/react-native-utils
✔ What is the name of package author? … Zhengqian Kuang
✔ What is the email address for the package author? … dev.kuang@gmail.com
✔ What is the URL for the package author? … https://github.com/zjkuang
✔ What is the URL for the repository? … https://github.com/zjkuang/zjkuang-react-native-utils
✔ What type of library do you want to develop? › Native module
✔ Which languages do you want to use? › Java & Objective-C
Project created successfully at @zjkuang/react-native-utils!

Get started with the project:

  $ yarn

Run the example app on iOS:

  $ yarn example ios

Run the example app on Android:

  $ yarn example android

Good luck!
```

# Test the new created project

## iOS (starting folder: @zjkuang/react-native-utils)

```
cd example
yarn install
yarn start
(Start a new Terminal and cd @zjkuang/react-native-utils/example)
cd ios
pod install
cd ..
yarn ios
```

## Android (starting folder: @zjkuang/react-native-utils)
```
cd example
yarn install
yarn start
(Start a new Terminal and cd @zjkuang/react-native-utils/example)
cd android
(Connect a device to the computer)
adb reverse tcp:8081 tcp:8081
yarn android
```

# Push to GitHub repository

## Verification

Before sending a pull request, make sure your code passes TypeScript and ESLint. Run the following to verify:

```
yarn typescript
yarn lint
```

To fix formatting errors, run the following:

```
yarn lint --fix
```

## Push to GitHub

(Create an empty GitHub public repository "zjkuang-react-native-utils", with no README.md, no .gitignore)

```
git add .
git commit -m "feat: first commit"
git remote add origin git@github.com:zjkuang/zjkuang-react-native-utils.git
git branch -M main
git push -u origin main
```

### Trouble-shooting

(1) `git commit -m "first commit"` failed with info
```
✖   subject may not be empty [subject-empty]
✖   type may not be empty [type-empty]
```
Solution:
https://www.conventionalcommits.org/en/v1.0.0/

`git commit -m "feat: first commit"`

# Publish

```
yarn typescript
yarn prepare
yarn release
```

## Trouble-shooting

(1) `yarn release` failed with info
```
npm ERR! 402 Payment Required - PUT https://registry.npmjs.org/@zjkuang%2freact-native-utils - You must sign up for private packages
```
Solution:
https://stackoverflow.com/a/68086218/7455975

`package.json`
```
"publishConfig": {
  "access": "public"
}
```

# Usage

Check `https://github.com/zjkuang/jkrnts` for usage example.

## Trouble-shooting

(1) iOS native module couldn't be found. `Error: The package doesn't seem to be linked...`
Reason: react-native version must be 0.68.2+ to support .mm files in native iOS module(s).

## Tips

(1) You can rename the .mm file to .m file and remove the `#ifdef RCT_NEW_ARCH_ENABLED` hunks, and then to test it you should
```
(In root folder zjkuang-react-native-utils)
yarn
cd example
cd ios && pod install && cd ..
yarn ios
```

# Polish

## index.tsx

Since we dont have any UI components in `./src/index.tsx`, we want to rename it to `./src/index.ts`
Remember to make corresponding change in `tsconfig.json`, otherwise the renamed `index.ts` couldn't be found by outsiders.
```
{
  "compilerOptions": {
    "baseUrl": "./",
    "paths": {
      "@zjkuang/react-native-utils": ["./src/index.ts"]
    },
```
