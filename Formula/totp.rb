class Totp < Formula
    desc "TOTP CLI"
    homepage "https://github.com/taekop/homebrew-totp"
    version "1.1"

    url "https://github.com/taekop/homebrew-totp/releases/download/v1.1/totp-1.1.tar.gz"
    sha256 "aa288160545077f8e14a319d79b02dc1f01560cc724838e6f436039633de5787"

    def install
        bin.install "bin/execute" => "totp"
        libexec.install "libexec/main.rb"
        libexec.install "libexec/totp.rb"
        libexec.install "libexec/yaml_config.rb"
        libexec.install "libexec/pretty_print.rb"
    end
end
