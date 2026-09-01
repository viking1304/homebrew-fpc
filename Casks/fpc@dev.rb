cask "fpc@dev" do
  arch arm: "aarch64", intel: "x86_64"
  fpc_compiler = on_arch_conditional arm: "ppca64", intel: "ppcx64"

  version "3.3.1,gebc02725e5"
  sha256 arm:   "edf1ffc058e9525806495e29a85f8b733a30a8af90686561f3061dc0225cc3d4",
         intel: "d5c810e7705e2d03c10ed78246912e60cf7db7571dca18f98c32dc075f212591"

  url "https://github.com/viking1304/fpc-trunk/releases/download/v#{version.csv.first}-#{version.csv.second}/fpc-#{version.csv.first}-#{version.csv.second}-#{arch}-macosx.dmg"
  name "Free Pascal Compiler (trunk)"
  desc "Unofficial nightly binaries for FPC trunk"
  homepage "https://github.com/viking1304/fpc-trunk"

  pkg "fpc-#{version.csv.first}-#{version.csv.second}-#{arch}-macosx.pkg"
  binary "/usr/local/lib/fpc/#{version.csv.first}/#{fpc_compiler}"

  uninstall pkgutil: "org.freepascal.fpc.trunk.#{arch}"

  caveats do
    files_in_usr_local
  end
end
