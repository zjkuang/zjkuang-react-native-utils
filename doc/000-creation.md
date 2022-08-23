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

Before sending a pull request, make sure your code passes TypeScript and ESLint. Run the following to verify:

```
yarn typescript
yarn lint
```

To fix formatting errors, run the following:

```
yarn lint --fix
```
