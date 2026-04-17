cask "pmon" do
  version "1.0.3"
  sha256 "4ae2223b56bc106992418e027695ef09592dead223bac783830584cf10521d63"

  url "https://github.com/So-Yul-e/homebrew-pmon/releases/download/v#{version}/PMON-#{version}.zip"
  name "PMON"
  desc "Process Monitor for macOS — menu bar app for ports and Docker"
  homepage "https://github.com/So-Yul-e/PMON"

  app "PMON.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/PMON.app"]
  end

  zap trash: "~/Library/Preferences/kr.box.PMON.plist"
end
