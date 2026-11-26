cask "conch" do
  version "0.3.0"
  sha256 "b8f4d32f889009117ddd83c04b2b9b7874715bb6c085663c6e55bcb833df84b8"

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
