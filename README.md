# Create a custom grid layout using UICollectionView

<br>
A simple project to show you how easy it is to create a grid layout with UICollectionView.

<img src="https://s3-eu-west-1.amazonaws.com/sabminder/Image+resources/Create+grid+layout+UICollectionView.png" />

<br>
# Installation
<br>
Grab the GridLayout.swift file and drag it into your project to customise the look of your UICollectionView.

<br>
# In this branch
<br>
This branch supports switching from a grid layout to a list layout, and adjust the number of columns within that grid layout.

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
# More information
Check out my blog for more tutorials, projects, freebies like this, at <a href="sabminder.com">sabminder.com</a>

Check out the tutorial for this project <a href="http://sabminder.com/create-grid-layout-uicollectionview/">here</a>.
