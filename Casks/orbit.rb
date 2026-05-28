# Homebrew cask for Orbit
#
# Install:
#   brew install --cask zekevh/tap/orbit
#
# To update after a new release:
#   1. Replace `version` with the new version string.
#   2. Replace `sha256` with the SHA256 printed in the GitHub Actions release summary.

cask "orbit" do
  version "1.2.0"
  sha256 "48da93749ed79c16391e9f3565b44d3e71b53e09b1361383fb941659ebed2d7b"

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
