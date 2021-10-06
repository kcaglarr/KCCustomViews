# KCCustomViews

KCCustomViews is a Swift library for reusable custom views

##Installation
Xcode : File -> Swift Packages -> Add Package Dependency -> Paste url

##Usage
```
import KCCheckbox
```

After adding it to your project with SPM:

Make sure you have two images named 'control' and 'uncheck'.

It is enough to 'KCCheckbox' the view class you have added to your project.

If you want to get status of checkbox:
 
 ```
     @IBAction func checkAction(_ sender: KCCheckbox) {
        print(sender.checked)
    }
 ```
