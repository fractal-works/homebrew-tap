cask "autorouter" do
  version "0.1.74"
  sha256 "f35087008d1a42d7c446ba12d58efa2b8fc80d675240708f3ba8780f3da93ffc"

  url "https://updates.autorouter.com/Auto-#{version}.dmg"
  name "AutoRouter"
  desc "Model router for Codex and Claude Code"
  homepage "https://autorouter.com/"

  livecheck do
    url "https://updates.autorouter.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "AutoRouter.app"

  uninstall quit: "local.auto.dock.installed"

  zap trash: [
    "~/Library/Application Support/local.auto.dock.installed",
    "~/Library/Caches/local.auto.dock.installed",
    "~/Library/HTTPStorages/local.auto.dock.installed",
    "~/Library/HTTPStorages/local.auto.dock.installed.binarycookies",
    "~/Library/Preferences/local.auto.dock.installed.plist",
  ]
end
