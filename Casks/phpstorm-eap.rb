cask :v1 => 'phpstorm-eap' do
  version '141.2325'
  sha256 'd9fb715b9c6a351bd30f25e62aa1f6fae2938b17065999efd1375e5a3f4fedba'

  url "https://download.jetbrains.com/webide/PhpStorm-EAP-#{version}.dmg"
  name 'PhpStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'
  license :commercial

  app 'PhpStorm EAP.app'

  zap :delete => [
                  '~/Library/Application Support/WebIde90',
                  '~/Library/Caches/WebIde90',
                  '~/Library/Logs/WebIde90',
                  '~/Library/Preferences/WebIde90',
                  '~/Library/Preferences/com.jetbrains.PhpStorm-EAP.plist',
                  '~/.WebIde90',
                 ]

  caveats <<-EOS.undent
    #{token} requires Java 6 like any other IntelliJ-based IDE.
    You can install it with
    brew cask install caskroom/homebrew-versions/java6
    The vendor (JetBrains) doesn't support newer versions of Java (yet)
    due to several critical issues, see details at
    https://intellij-support.jetbrains.com/entries/27854363
  EOS
end
