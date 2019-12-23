# Xcode Project Set up Guide for Nexacro 17
*Read this in other languages:  [한국어](README.md), [English](README.en.md)*
## Nexacro 17 mobile app 빌드를 위한 파일 준비
- iOS용 넥사크로 라이브러리 파일 (nexacro17_iOS_xxxxxxxx_x.zip)
 *"nexacro17_iOS_xxxxxxxx_x.zip" 파일은 [파일은 투비소프트 기술지원 홈페이지](http://support.tobesoft.co.kr)에서 다운로드 받을 수 있습니다*  
 Downloads &rarr; Nexacro Platform 17 &rarr; nexacro17_iOX_[{date}_{realeasenumber}].zip  
 
## Xcode 프로젝트 생성 및 설정
### 1. 프로젝트 생성
> 1. File &rarr; New &rarr; Project
> 2. "Single View App" 선택
> 3. "Objective-C" 언어 선택
> 4. 위치 선택 후 클릭 "Create" 버튼

### 2. 터미널에서 폴더 열기
```
{PROJECT_LOCATION}/{PRODUCT_NAME_FOLDER}
```
예:  
```
cd ~/Documents/HelloNexacro/HelloNexacro
```

>프로젝트 생성 시 "Product Name" 을 "HelloNexacro"
>프로젝트 위치는 "~/Documents" 로 가정합니다.

### 3. 터미널에 명령어 입력

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

### 4. 압축해제 및 nexacro17.framework.zip 파일 복사
1. 압축해제: `nexacro17_iOS_xxxxxxxx_x.zip`
2. 복사 : `nexacro17.framework.zip` 파일을 `../../nexacro17framework` 폴더로

### 5. podfile 생성
cd {PROJECT_LOCATION} then init pod  
예: 
```bash
cd ~/Documents/HelloNexacro
pod init
```
### 6. podfile 에 list 추가
> pod 'nexacro17framework', :path => '../nexacro17framework'

예:

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
### 8. AppDelegate.m 파일에서 bootstrapUrl 설정
```objc
NSString *bootstrapUrl = @"http://[URL]/_ios_/start_ios.json";
```

# Nexqacro Studio 에서 iOS용 모바일 파일 생성
- `Deploy` &rarr; `Packing` 선택
- `Output Path` 설정 후 "Next" 클릭
- `iOS/iPadOS` 및 `Update(Local+Server)` 선택 후 "Packing" 버튼 클릭
- 웹서버에 packing 파일 업로드
    Packing files
    - Archive00.xzip 
    - nexacro17lib.zip 
    - Resource.zip
    - Run.zip 
    - start_ios.json **&larr; boostrap 파일**  