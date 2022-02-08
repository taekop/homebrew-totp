class Totp < Formula
    desc "TOTP CLI"
    homepage "https://github.com/taekop/homebrew-totp"
    version "1.0"

    url "https://github.com/taekop/homebrew-totp/releases/download/v1.0/totp-1.0.tar.gz"
    sha256 "a64b45653a3bc692d46159db3ddcb73fc45c1f63656b6e50ece2edf0e7868275"

    def install
        bin.install "bin/execute" => "totp"
        libexec.install "libexec/main"
        libexec.install "libexec/totp"
        libexec.install "libexec/yaml_config"
        libexec.install "libexec/pretty_print"
    end
end
