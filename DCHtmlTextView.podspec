#
# Be sure to run `pod lib lint DCHtmlTextView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'DCHtmlTextView'
    s.version          = '0.2.0'
    s.summary          = 'DCHtmlTextView is used to show plain HTML tags in to UITextView'
    
    
    s.description      = <<-DESC
    DCHtmlTextView will render the Plain HTML tags in to UITextView.
    DESC
    
    s.homepage         = 'https://github.com/iOSDeepakChauhan/DCHtmlTextView'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Deepak Chauhan' => 'mobile.deepakchauhan@gmail.com' }
    s.source           = { :git => 'https://github.com/iOSDeepakChauhan/DCHtmlTextView.git', :tag => s.version.to_s }
    s.source_files = "DCHtmlTextView.swift"

    s.ios.deployment_target = '12.0'
    s.swift_version = '5.0'
    s.platform     = :ios, "12.0"
    
end
