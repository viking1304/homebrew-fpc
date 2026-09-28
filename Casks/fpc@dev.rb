cask "fpc@dev" do
  arch arm: "aarch64", intel: "x86_64"
  fpc_compiler = on_arch_conditional arm: "ppca64", intel: "ppcx64"

  version "3.3.1,gce5ad5555f"
  sha256 arm:   "af8eaf702cacdf1124465ae7c3e91131f583cf7e0cbec67c176c59f16153faeb",
         intel: "f91a34e12755d9fc115d6fdc88c9d04365ccf937ead4b99b476fc0a1da28655c"

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
