# DeclarativeLayout

AutoLayout extension that helps coding like Swift UI's declarative syntax. 

## Installation

### [Swift Package Manager for Apple platforms](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)

Select Xcode menu `File > Swift Packages > Add Package Dependency` and enter repository URL with GUI.  
```
Repository: https://github.com/aybekckaya/DeclarativeLayout.git
```

### [Swift Package Manager](https://swift.org/package-manager/)

Add the following to the dependencies of your `Package.swift`:
```swift
.package(url: "https://github.com/aybekckaya/DeclarativeLayout.git", from: "1.0.0")
```

## Usage

```swift
        let vv = UIView(frame: .zero)
        self.view.addSubview(vv)
        
        vv.trailingAnchor(margin: 3)
            .leadingAnchor(margin: 12)
            .topAnchor(margin: 32)
            .bottomAnchor(margin: 43)
        
        // or
        
        vv.fit(edges: UIEdgeInsets(top: 32, left: 12, bottom: 43, right: 3))

```
