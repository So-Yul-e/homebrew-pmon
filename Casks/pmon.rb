cask "pmon" do
  version "1.2.0"
  sha256 "15181188e18456e0249213196300692be2e79e34660a8ef4d14b17e38a965392"

  url "https://github.com/So-Yul-e/homebrew-pmon/releases/download/v#{version}/PMON-#{version}.zip"
  name "PMON"
  desc "Process Monitor for macOS — menu bar app for ports and Docker"
  homepage "https://github.com/So-Yul-e/homebrew-pmon"

  app "PMON.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/PMON.app"]
  end

  zap trash: "~/Library/Preferences/kr.box.PMON.plist"
end
