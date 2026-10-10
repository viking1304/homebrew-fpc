cask "fpc@dev" do
  arch arm: "aarch64", intel: "x86_64"
  fpc_compiler = on_arch_conditional arm: "ppca64", intel: "ppcx64"

  version "3.3.1,g272e8a798e"
  sha256 arm:   "d99ea95cbf4d4208f4819687c3fad2bca4763a9342465ea42472178226bda24d",
         intel: "edfb459092b20979afab1eaa1ba25c465622ab7f8e8513bf8766d364649392ae"

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
