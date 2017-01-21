Pod::Spec.new do |s|
  s.name             = "reddift"
  s.version          = "2.0.1"
  s.summary          = "Swift Reddit API Wrapper."
  s.description      = <<-DESC
                      reddift is Swift Reddit API Wrapper.
                       - Supports OAuth2(and DOES NOT support Cookie-authentication).
                       - Supports multi-accounts using KeyChain.
                       DESC
  s.homepage         = "https://github.com/sonsongithub/reddift"
  s.license          = 'MIT'
  s.author           = { "sonson" => "yoshida.yuichi@gmail.com" }
  s.source           = {
    :git => "https://github.com/shusain93/reddift.git",
    :tag => "v#{s.version}",
    :submodules => true
  }

  s.subspec 'MiniKeychain' do |subspec|
    subspec.source_files = 'reddift/vendor/MiniKeychain/MiniKeychain/MiniKeychain.swift'
  end

  s.social_media_url = 'https://twitter.com/sonson_twit'

  s.ios.deployment_target = "8.4"
  s.osx.deployment_target = "10.9"
  s.tvos.deployment_target = "9.0"
  s.requires_arc = true

  s.source_files = 'reddift/*/*.swift', 'reddift/vendor/Google/*.{h,m}'
end
