# Homebrew cask for Moka
#
# Host this file in the shared tap repo: github.com/zekevh/homebrew-tap
#   Casks/moka.rb
#
# Install:
#   brew install --cask zekevh/tap/moka
#
# To update after a new release:
#   1. Replace `version` with the new version string.
#   2. Replace `sha256` with the SHA256 printed in the GitHub Actions release summary.

cask "moka" do
  version "1.0.0"
  sha256 "625cca87987a9ffb83871f0b34d43c94fb5555a11e7e95ce016bd3de59e37e3c"

  url "https://github.com/zekevh/Moka/releases/download/v#{version}/Moka-#{version}.dmg"

  name "Moka"
  desc "macOS menu bar app that keeps your Mac awake"
  homepage "https://zvh.io/apps/moka"

  app "Moka.app"

  caveats <<~EOS
    Moka is not notarized. On first launch, right-click the app and select "Open",
    then confirm in the dialog that appears.

    Alternatively, remove the quarantine attribute:
      sudo xattr -d com.apple.quarantine /Applications/Moka.app
  EOS
end
