cask "pmon" do
  version "1.0.4"
  sha256 "90ea02e4dc319fe46d85eff6788823b4e5fc6bc5e68c73d674c060766d5a779e"

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
