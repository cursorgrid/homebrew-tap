cask "cursorgrid" do
  version "0.1.1"
  sha256 "ed3d8490d578b19d50bee09f1dde5d4dd4316da08d5e9ac736fd9adc82371b4b"

  url "https://github.com/cursorgrid/homebrew-tap/releases/download/v#{version}/CursorGrid.dmg"
  name "CursorGrid"
  desc "Move and click the pointer from the keyboard with a grid"
  homepage "https://cursorgrid.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "CursorGrid.app"

  uninstall quit: "com.cursorgrid.app"

  # The app keeps no files of its own yet; only macOS may write these.
  zap trash: [
    "~/Library/Preferences/com.cursorgrid.app.plist",
    "~/Library/Saved Application State/com.cursorgrid.app.savedState",
  ]
end
