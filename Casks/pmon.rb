cask "pmon" do
  version "1.0.2"
  sha256 "092a84c05c81e70dd56159e87ae652d68eae5fe6da67e6a52608594a90090ab3"

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
