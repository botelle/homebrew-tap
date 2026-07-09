cask "lightsout" do
  version "1.0.0"
  sha256 "7bffe29d44d7a442f5be8937c5ab111fe7b71649a1f800871cdd4551fab1b74b"

  url "https://github.com/botelle/lightsout/releases/download/v#{version}/LightsOut-#{version}.zip"
  name "LightsOut"
  desc "Menubar app to turn the display off while the Mac stays awake"
  homepage "https://github.com/botelle/lightsout"

  depends_on macos: ">= :ventura"

  app "LightsOut.app"

  zap trash: [
    "~/Library/Preferences/org.botelle.lightsout.plist",
  ]
end
