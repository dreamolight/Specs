Pod::Spec.new do |s|
  s.name         = "AAAudienceNetwork"
  s.version      = "0.0.2"
  s.summary      = "Facebook Audience Network Mobile App Ad SDK"

  s.description  = <<-DESC
                     Facebook's Audience Network allows you to monetize your iOS and Android apps with Facebook ads.
                   DESC
  s.homepage     = "https://developers.facebook.com/docs/audience-network"
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
              Copyright 2004-present Facebook. All Rights Reserved.

              You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
              copy, modify, and distribute this software in source code or binary form for use
              in connection with the web services and APIs provided by Facebook.

              As with any software that integrates with the Facebook platform, your use of
              this software is subject to the Facebook Developer Principles and Policies
              [http://developers.facebook.com/policy/]. This copyright notice shall be
              included in all copies or substantial portions of the software.

              THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
              IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
              FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
              COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
              IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
              CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
            LICENSE
  }
  s.author       = 'Facebook'
  s.platform     = :ios, "9.0"
  s.module_name = 'FBAudienceNetwork'

  s.source       = { "http": "http://localhost:8888/FBAudienceNetwork.zip", :type => :zip }
  s.source_files = "FBAudienceNetwork.framework/**/*.h"
  s.public_header_files = "FBAudienceNetwork.framework/**/*.h"
  s.frameworks = "AudioToolbox", "StoreKit", "CoreGraphics", "UIKit", "Foundation", "Security", "CoreImage", "AVFoundation", "CoreMedia"
  s.weak_frameworks = "AdSupport", "CFNetwork", "CoreMotion", "CoreLocation", "CoreTelephony", "LocalAuthentication", "SafariServices", "SystemConfiguration", "VideoToolbox", "WebKit"
  s.library = "c++", "xml2"
  s.vendored_frameworks = "FBAudienceNetwork.framework"

  s.requires_arc = false
  s.dependency "FBSDKCoreKit/Basics"
end
