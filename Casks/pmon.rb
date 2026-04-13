cask "pmon" do
  version "1.0"
  sha256 "00f936701bb7848005f25d5108414b2b7b208ae2998d1aca95505fb28639a905"

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
