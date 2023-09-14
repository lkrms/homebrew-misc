class PrettyPhp < Formula
  desc "Opinionated PHP code formatter"
  homepage "https://github.com/lkrms/pretty-php"
  url "https://github.com/lkrms/pretty-php/releases/download/v0.4.26/pretty-php.phar"
  sha256 "5c28dc20c476f78af4a80dd0f1f987467e86df4a850c7708c2be0faba3f6d4bf"
  license "MIT"

  depends_on "pandoc" => :build
  depends_on "php"

  def install
    bin.install "pretty-php.phar" => "pretty-php"
    system "#{bin}/pretty-php _man | #{Formula["pandoc"].bin}/pandoc --standalone --to man -o pretty-php.1"
    man1.install "pretty-php.1"
  end

  test do
    assert_match "pretty-php v#{version}-", shell_output("#{bin}/pretty-php --version").strip
  end
end
