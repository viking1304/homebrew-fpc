cask "fpc@dev" do
  arch arm: "aarch64", intel: "x86_64"
  fpc_compiler = on_arch_conditional arm: "ppca64", intel: "ppcx64"

  version "3.3.1,g9795473b9d"
  sha256 arm:   "0817dfa76fe955aa3b43214ac0da98269e9b331949e69647da35c2a3988005d7",
         intel: "29639d55118e3aeff201f19ad1d373263f5fe8b47c637adfc1992fb929b8cce1"

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
