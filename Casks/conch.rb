cask "conch" do
  version "0.2.0"
  sha256 "dde4270d8335fc2dc10cc846d76b23fa9126a28696470a904ad04a1dddbe8129"

  url "https://github.com/alexgrant999/conch/releases/download/v#{version}/Conch-#{version}.zip"
  name "Conch"
  desc "Terminal manager for running many Claude Code sessions side by side"
  homepage "https://github.com/alexgrant999/conch"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Conch.app"

  zap trash: [
    "~/Library/Application Support/Conch",
    "~/Library/Preferences/com.alexgrant.conch.plist",
  ]
end
