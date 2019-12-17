Pod::Spec.new do |s|
    s.name         = "nexacro17framework"
    s.version      = "1.0.0"
    s.summary      = "nexacro17 framework"
    s.description  = <<-DESC
    Nexacro17 Framework.
    It should be changed source file name "nexacro17frameworklibrary.zip" to actual download framwork file name such as "nexacro17_frameworklibrary_xxxxxxxx_x.zip"
    DESC
    s.homepage     = "http://www.tobesoft.com"
    s.license = "MIT"
    s.author  = "TOBESOFT"
    s.source  = { :http => 'file:' + __dir__ + '/nexacro17frameworklibrary.zip' }
    s.public_header_files = "nexacro17.framework/Headers/*.h"
    s.source_files = "nexacro17.framework/Headers/*.h"
    s.vendored_frameworks = "nexacro17.framework"
    s.platform = :ios
    s.ios.deployment_target  = '10.0'
    s.frameworks = "AddressBookUI","AddressBook","AudioToolbox","AVFoundation","CFNetwork","CoreBluetooth","CoreLocation","CoreMedia","MediaPlayer","MessageUI","MobileCoreServices","QuartzCore","Security","SystemConfiguration","UIKit"
    s.libraries = "c++","xml2","z.1.2.5","sqlite3.0"
    # s.xcconfig = { 'OTHER_LDFLAGS' => '-fembed-bitcode' }
    # s.pod_target_xcconfig = { 'BITCODE_GENERATION_MODE' => 'bitcode',
    #                'ENABLE_BITCODE' => 'YES',
    #                'OTHER_LDFLAGS' => '-fembed-bitcode',
    #                'OTHER_CFLAGS' => '-fembed-bitcode',
    #              }
end


