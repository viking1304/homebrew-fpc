cask "fpc@dev" do
  arch arm: "aarch64", intel: "x86_64"
  fpc_compiler = on_arch_conditional arm: "ppca64", intel: "ppcx64"

  version "3.3.1,g8036833189"
  sha256 arm:   "7c304ea8f47a08af4382d02438e05e9f82d1085ac9172eebee8883f2883df76e",
         intel: "170ca891d73aba999b8c258a7561d0da62a3bb400eafe26fbe5504ffa655b6cc"

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
