# Create a custom grid layout using UICollectionView

<br>
A simple project to show you how easy it is to create a grid layout with UICollectionView.

<img src="#">

<br>
# Installation
<br>
Grab the GridLayout.swift file and drag it into your project to customise the look of your UICollectionView.

<br>
# Usage
<br>
Just specify the number of columns you wish to display at initialisation and assign it to your collectionView. Simple as that. Per default the layout object is using 1-1pt for each space between rows and columns.

```swift
var gridLayout: GridLayout = GridLayout(numberOfColumns: 4)

func viewDidLoad() {
  super.viewDidLoad()
  ...
  collectionView.collectionViewLayout = gridLayout
}
```

<br>
# Credits
Check out my blog for more tutorials, projects, freebies like this, at <a href="sabminder.com">sabminder.com</a>
