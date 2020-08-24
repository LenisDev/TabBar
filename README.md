![Minimal, yet higly customizable](/Logo.png "TabBar - Project Logo")

[![License](https://img.shields.io/github/license/LenisDev/TabBar)](https://github.com/LenisDev/TabBar/blob/master/LICENSE)
[![Release version](https://img.shields.io/cocoapods/v/Tab)](https://github.com/LenisDev/TabBar/releases)


- [Overview](#overview)
- [Usage](#usage)
- [Installation Guide](#installation-guide)
- [Full Documentation](https://lenisdev.github.io/TabBar/index.html)
- [Contribute](#contribute)

<br>

### Overview
Leight-weight, reusable and heighly customizable tab bar.

<br>

### Usage
```
  let tabItems = [TabBarItemViewModel(id: UUID().description, title: "Tab 1", image: UIImage(systemName: "trash"), state: .selected),
                  TabBarItemViewModel(id: UUID().description, title: "Tab 2", image: nil)]
                  
  let tabView = TabBarView(data: TabBarViewModel(items: tabItems)) { selectedItem in
    // on item selected
    print(selectedItem)
  }
```

<br>

### Installation Guide

#### Carthage

Step 1: 
Add following to your CartFile

```
github "LenisDev/TabBar" ~> 0.0.1
```

Step 2:
run `carthage update` from current project directory.

*That's all, you have it installed.*

<br>

#### CocoaPods

Step 1:
Add `pod 'Tab', '~> 0.0.1'` to your Podfile:

```
target 'MyApp' do
  pod 'Tab', '~> 0.0.1'
end
```

Step 2:
run `pod install` from current project directory.

*That's all, you have it installed.*

<br>

>
>
>Try it using following command
>```
>pod try Tab
>```
>

<br>

#### Swift Package Manager
```
dependencies: [
    .package(url: "https://github.com/LenisDev/TabBar.git", .upToNextMajor(from: "0.0.1"))
]
```

<br>

### Contribute
> - Play around and report bugs
> - Fix issues and create PR
> - Add documentations and new features
