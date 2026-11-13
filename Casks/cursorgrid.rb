cask "cursorgrid" do
  version "0.1.0"
  sha256 "7d95661f2671a0318323ee19763ca7990dc27fcfd5027b4e01bf7e1ac8eda7fd"

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
