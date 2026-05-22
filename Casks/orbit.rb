# Homebrew cask for Orbit
#
# Install:
#   brew install --cask zekevh/tap/orbit
#
# To update after a new release:
#   1. Replace `version` with the new version string.
#   2. Replace `sha256` with the SHA256 printed in the GitHub Actions release summary.

cask "orbit" do
  version "1.0.0"
  sha256 "ad857fa88f787aaddc33f1c57702e622823fa3df0b2ec9c08b650389741b19b9"

  url "https://github.com/zekevh/Orbit/releases/download/v#{version}/Orbit-#{version}.dmg"

  name "Orbit"
  desc "Native macOS contact workspace with notes, insights, and follow-ups"
  homepage "https://zvh.io/apps/orbit"

  app "Orbit.app"

  caveats <<~EOS
    Orbit is not notarized. On first launch, right-click the app and select "Open",
    then confirm in the dialog that appears.

    Alternatively, remove the quarantine attribute:
      sudo xattr -d com.apple.quarantine /Applications/Orbit.app
  EOS
end
