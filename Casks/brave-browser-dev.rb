cask "brave-browser-dev" do
  version "88.1.21.66,121.66"
  sha256 "96f48e07efdb56331ab6deb9753ab96eff3f9071c3d353c13a886b636abfff3e"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/dev/#{version.after_comma}/Brave-Browser-Dev-x64.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  appcast "https://updates.bravesoftware.com/sparkle/Brave-Browser/dev/appcast.xml"
  name "Brave Dev"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-dev/"

  auto_updates true

  app "Brave Browser Dev.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
