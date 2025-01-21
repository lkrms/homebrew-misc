class PrettyPhp < Formula
  desc "Opinionated PHP code formatter"
  homepage "https://github.com/lkrms/pretty-php"
  url "https://github.com/lkrms/pretty-php/releases/download/v0.4.88/pretty-php.phar"
  sha256 "2b4c0cbbd2b28a76187fca5ac836cac592c9360ea20b6fbf39e3ec364d1b8c24"
  license "MIT"

  depends_on "pandoc" => :build
  depends_on "php"

  def install
    mv "pretty-php.phar", "pretty-php"
    system "#{Formula["php"].bin}/php -ddisplay_errors=stderr pretty-php _man | #{Formula["pandoc"].bin}/pandoc --standalone --to man -o pretty-php.1"

    bin.install "pretty-php"
    man1.install "pretty-php.1"
  end

  test do
    assert_match "pretty-php v#{version} \\(", shell_output("#{bin}/pretty-php --version").strip
  end
end
