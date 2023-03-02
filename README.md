# QuickSwiftUI

Convenient SwiftUI functions and modifiers

Full example are available in the `Examples` folder

# Usages
## AutoFocus
Automatically set the focus state of a text field when `onAppear` is called

```
TextField("Name", text: $text)
    .autoFocus()
```

## Center Overlay
Show text at the center of a view conditionally

```
VStack { }
    .overlay(text: "There are no results", show: noResults)
```

## Did Submit
Implementation of `onSubmit` that will compile on iOS 14.0+, but will only be called on iOS 15.0+

```
TextField("Name", text: .constant(""))
    .didSubmit { }
```

## Full Width
Spread a view to fill the width of its parent

```
Text("Fill It!")
    .fullWidth()
```

## Half Sheet
Modifier functions to easily present a view in a half sheet size, or custom sheet size

```
VStack {}
    .sheet(isPresented: $showingHalf) {
        Text("Half Sheet")
            .halfSheet()
    }
```

## Keyboard Toolbar
Modifier function to add a "Done" button to the keyboard toolbar

```
TextField("Name", text: .constant(""))
    .keyboardDoneButton()
```

## RoundedButton
Customizable Rounded Button similar to the `.bordered` ButtonStyle

```
Button("Basic") { }
    .buttonStyle(RoundedButton())
```
