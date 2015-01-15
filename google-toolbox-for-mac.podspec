Pod::Spec.new do |s|
  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "google-toolbox-for-mac"
  s.version      = "2.0.0.0"
  s.summary      = "Mirror of http://google-toolbox-for-mac.googlecode.com"
  
  s.description  = <<-DESC
                   A collection of source from different Google projects that may be
                   of use to developers working other Mac projects.
                   DESC
  
  s.homepage     = "https://github.com/lxcid/google-toolbox-for-mac"
  
  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = { :type => 'Apache License, Version 2.0', :file => 'COPYING' }
  
  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "thomasvl" => "thomasvl@google.com" }
  
  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.ios.deployment_target = "7.0"
  s.osx.deployment_target = "10.9"
  
  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = {
    :git => "https://github.com/lxcid/google-toolbox-for-mac.git",
    :tag => "2.0.0.0"
  }
  
  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.framework  = "Foundation", "CoreGraphics"
  
  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = false
  
  # ――― Subspecs ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.subspec 'Core' do |ss|
    ss.source_files = 'GTMDefines.h'
  end
  
  s.subspec 'DebugUtils' do |ss|
    ss.dependency 'google-toolbox-for-mac/Core'
    ss.source_files = 'DebugUtils/*.{h,m}'
    ss.exclude_files = 'DebugUtils/*Test.m'
  end
  
  s.subspec 'Foundation' do |ss|
    ss.dependency 'google-toolbox-for-mac/Core'
    ss.dependency 'google-toolbox-for-mac/DebugUtils'
    ss.source_files = 'Foundation/*.{h,m}'
    ss.exclude_files = 'Foundation/*Test.m'
    ss.ios.exclude_files = [
      'Foundation/GTMAbstractDOListener.{h,m}',
      'Foundation/GTMFileSystemKQueue.{h,m}',
      'Foundation/GTMFourCharCode.{h,m}',
      'Foundation/GTMNSAppleEventDescriptor+Foundation.{h,m}',
      'Foundation/GTMNSAppleEventDescriptor+Handler.{h,m}',
      'Foundation/GTMNSAppleScript+Handler.{h,m}',
      'Foundation/GTMNSFileManager+Carbon.{h,m}',
      'Foundation/GTMNSString+FindFolder.{h,m}',
      'Foundation/GTMScriptRunner.{h,m}',
      'Foundation/GTMTransientRootProxy.{h,m}',
      'Foundation/GTMTransientRootPortProxy.{h,m}'
    ]
  end

end
