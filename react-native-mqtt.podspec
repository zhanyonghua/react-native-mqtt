require 'json'

packageJson = JSON.parse(File.read(File.join(__dir__, "package.json")))
version = packageJson["version"]
description = packageJson["description"]
homepage = packageJson["homepage"]
license = packageJson["license"]
author = packageJson["author"]
repository = packageJson["repository"]["url"]
iqVersion = version.split('-').first

Pod::Spec.new do |s|
    s.name           = "react-native-mqtt"
    s.version        = version
    s.description    = description
    s.homepage       = homepage
    s.summary        = "Exit,close,kill,shutdown app completely for React Native"
    s.license        = license
    s.authors        = author
    s.source         = { :git => 'https://github.com/zhanyonghua/react-native-mqtt.git', :tag => "v#{s.version}" }
    s.platform       = :ios, "9.0"
    s.preserve_paths = 'README.md', 'package.json', '*.js'
    s.source_files   = 'ios/RCTMqtt/*.{h,m}'
    #s.vendored_libraries = "ios/RCTMqtt/*.a"
    s.public_header_files = 'ios/RCTMqtt/*.h'
    
    s.dependency 'MQTTClient','~> 0.6.9'
    s.dependency 'MQTTClient/Websocket','~> 0.6.9'
end
