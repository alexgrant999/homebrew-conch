cask "conch" do
  version "0.2.1"
  sha256 "3471e3405ff8b24a72f518f7cffc17e1d9f5842effdb2d0beba9fdba9cd624c5"

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
