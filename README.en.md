# Xcode Project Set up Guide for Nexacro 17
*Read this in other languages:  [한국어](README.md), [English](README.en.md)*
## Preapre files for building Nexacro 17 mobile app
- Nexacro library file (nexacro17_iOS_xxxxxxxx_x.zip) for iOS
 *You can download "nexacro17_iOS_xxxxxxxx_x.zip" file in [tobesoft technical support](http://support.tobesoft.co.kr) site*  
 Downloads &rarr; Nexacro Platform 17 &rarr; nexacro17_iOX_[{date}_{realeasenumber}].zip  
 
## Create Xcode project and set up
### 1. Create Project
> 1. File &rarr; New &rarr; Project
> 2. Choose a template "Single View App"
> 3. Choose a Language "Objective-C"
> 4. Choose location then click "Create" button

### 2. Open Folder on terminal
```bash
{PROJECT_LOCATION}/{PRODUCT_NAME_FOLDER}
For instance :  
cd ~/Documents/HelloNexacro/HelloNexacro
```

> When you created project, it assume "Product Name" is "HelloNexacro"  
> Chose location path is "~/Documents"

### 3. paste command on terminal

```bash
mkdir -p ../../nexacro17framework &&
mkdir -p en.lproj &&
mv AppDelegate.h AppDelegate.h_org && 
mv AppDelegate.m AppDelegate.m_org &&
mv ViewController.h ViewController.h_org &&
mv ViewController.m ViewController.m_org &&
curl -O https://github.com/tobehyo/template-ios-nexacro-setting/blob/master/AppDelegate.h -O https://github.com/tobehyo/template-ios-nexacro-setting/blob/master/AppDelegate.m -O https://github.com/tobehyo/template-ios-nexacro-setting/blob/master/ViewController.h -O https://github.com/tobehyo/template-ios-nexacro-setting/blob/master/ViewController.m && 
(cd en.lproj && 
curl -O https://github.com/tobehyo/template-ios-nexacro-setting/blob/master/en.lproj/Localizable.strings) &&
(cd ../../nexacro17framework && curl -O https://github.com/tobehyo/template-ios-nexacro-setting/blob/master/nexacro17framework.podspec) 
```

### 4. Unzip, Copy nexacro17.framework.zip
1. UnZip : `nexacro17_iOS_xxxxxxxx_x.zip`
2. Copy and Paste : `nexacro17.framework.zip` to `../../nexacro17framework`

### 5. Create podfile
cd {PROJECT_LOCATION} then init pod  
For example,
```bash
cd ~/Documents/HelloNexacro
pod init
```
### 6. Open podfile and add list
> pod 'nexacro17framework', :path => '../nexacro17framework'

For example,

```ruby
target 'emptyP' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  pod 'nexacro17framework', :path => '../nexacro17framework'
end
```

### 7. Pod Install
```bash
~/Documents/HelloNexacro $ pod install
```
### 8. set bootstrapUrl in AppDelegate.m
```objc
NSString *bootstrapUrl = @"http://[URL]/_ios_/start_ios.json";
```

# Packing iOS mobile files in Nexacro Studio
- Select `Deploy` &rarr; `Packing`
- Set `Output Path` then click "Next"
- Select `iOS/iPadOS` and `Update(Local+Server)` then click "Packing"
- upload packing files to web server
    Packing files
    - Archive00.xzip 
    - nexacro17lib.zip 
    - Resource.zip 
    - Run.zip 
    - start_ios.json **&larr; this is boostrap file**  