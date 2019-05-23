# Make-CollectionView-Height-Dynamic-According-to-Content
This guide will show you how to enable dynamic height of collectionview according to the data. There is a sample attached to show how can we use it by disabling scroll of collectionview and  showing the full height of it .


Source of Guide :- https://stackoverflow.com/a/42438709/10422074

Note :- You can use ScrollView instead of Tableview to scroll whole screen

Guide :-

* Add a height constraint to your collection view.
* Set its priority to 999.
* Set its constant to any value that only makes it reasonably visible on the storyboard.
* Change the bottom equal constraint of the collection view to greater or equal.
* Connect the height constraint to an outlet.
* Every time you reload the data on the collection view do the following:


Call this Code after Relaoding CollectinView or Tableview 

```swift

var height = self.otherProvidersCollectionView.collectionViewLayout.collectionViewContentSize.height          self.heightContraint.constant = height
self.view.layoutIfNeeded()

```
