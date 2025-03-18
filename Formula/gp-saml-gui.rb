class GpSamlGui < Formula
  include Language::Python::Virtualenv

  desc "Interactively authenticate to GlobalProtect VPNs that require SAML"
  homepage "https://github.com/dlenski/gp-saml-gui"
  url "https://github.com/lkrms/gp-saml-gui/archive/d5b19868424c0ea8145d532ed638fda4aba45d60.tar.gz"
  version "20250318"
  sha256 "d37e6b02410a9dfc2685d9c6b83759d2b822b68b09220d98be0a4d5e0b539b4a"
  license "GPL-3.0-or-later"
  head "https://github.com/lkrms/gp-saml-gui.git", branch: "lkrms/pywebview"

  depends_on "gtk+3"
  depends_on "openconnect"
  depends_on "pygobject3"
  depends_on "python@3.13"
  depends_on "vpn-slice" => :optional

  # To update:
  #
  # ```shell
  # brew update-python-resources --exclude-packages pygobject lkrms/misc/gp-saml-gui
  # ```
  resource "bottle" do
    url "https://files.pythonhosted.org/packages/1b/fb/97839b95c2a2ea1ca91877a846988f90f4ca16ee42c0bb79e079171c0c06/bottle-0.13.2.tar.gz"
    sha256 "e53803b9d298c7d343d00ba7d27b0059415f04b9f6f40b8d58b5bf914ba9d348"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/1c/ab/c9f1e32b7b1bf505bf26f0ef697775960db7932abeb7b516de930ba2705f/certifi-2025.1.31.tar.gz"
    sha256 "3d5da6925056f6f18f119200434a4780a94263f10d1c21d032a6f6b2baa20651"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/16/b0/572805e227f01586461c80e0fd25d65a2115599cc9dad142fee4b747c357/charset_normalizer-3.4.1.tar.gz"
    sha256 "44251f18cd68a75b56585dd00dae26183e102cd5e0f9f1466e6df5da2ed64ea3"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "proxy-tools" do
    url "https://files.pythonhosted.org/packages/f2/cf/77d3e19b7fabd03895caca7857ef51e4c409e0ca6b37ee6e9f7daa50b642/proxy_tools-0.1.0.tar.gz"
    sha256 "ccb3751f529c047e2d8a58440d86b205303cf0fe8146f784d1cbcd94f0a28010"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/5c/94/a111239b98260869780a5767e5d74bfd3a8c13a40457f479c28dcd91f89d/pyobjc_core-11.0.tar.gz"
    sha256 "63bced211cb8a8fb5c8ff46473603da30e51112861bd02c438fbbbc8578d9a70"
  end

  resource "pyobjc-framework-cocoa" do
    url "https://files.pythonhosted.org/packages/c5/32/53809096ad5fc3e7a2c5ddea642590a5f2cb5b81d0ad6ea67fdb2263d9f9/pyobjc_framework_cocoa-11.0.tar.gz"
    sha256 "00346a8cb81ad7b017b32ff7bf596000f9faa905807b1bd234644ebd47f692c5"
  end

  resource "pyobjc-framework-quartz" do
    url "https://files.pythonhosted.org/packages/a5/ad/f00f3f53387c23bbf4e0bb1410e11978cbf87c82fa6baff0ee86f74c5fb6/pyobjc_framework_quartz-11.0.tar.gz"
    sha256 "3205bf7795fb9ae34747f701486b3db6dfac71924894d1f372977c4d70c3c619"
  end

  resource "pyobjc-framework-security" do
    url "https://files.pythonhosted.org/packages/c5/75/4b916bff8c650e387077a35916b7a7d331d5ff03bed7275099d96dcc6cd9/pyobjc_framework_security-11.0.tar.gz"
    sha256 "ac078bb9cc6762d6f0f25f68325dcd7fe77acdd8c364bf4378868493f06a0758"
  end

  resource "pyobjc-framework-webkit" do
    url "https://files.pythonhosted.org/packages/79/4f/02a6270acf225c2a34339677e796002c77506238475059ae6e855358a40c/pyobjc_framework_webkit-11.0.tar.gz"
    sha256 "fa6bedf9873786b3376a74ce2ea9dcd311f2a80f61e33dcbd931cc956aa29644"
  end

  resource "pywebview" do
    url "https://files.pythonhosted.org/packages/7a/c7/645f3b0bb190bf58c5cea9cfbcaa337ce3b54531ad207d3748676eb8cdc9/pywebview-5.4.tar.gz"
    sha256 "b5e2c6c7502aaf72a9ae6034daf83785f5fad874fac7fa82bf4fcf854f1f083a"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
    sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/df/db/f35a00659bc03fec321ba8bce9420de607a1d37f8342eee1863174c69557/typing_extensions-4.12.2.tar.gz"
    sha256 "1a7ead55c7e559dd4dee8856e3a88b41225abfe1ce8df57b7c13915fe121ffb8"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/aa/63/e53da845320b757bf29ef6a9062f5c669fe997973f966045cb019c3f4b66/urllib3-2.3.0.tar.gz"
    sha256 "f8c5449b3cf0861679ce7e0503c7b44b5ec981bec0d1d3795a07f1ba96f0204d"
  end

  def install
    ENV["MACOSX_DEPLOYMENT_TARGET"] = MacOS.version if OS.mac?
    virtualenv_install_with_resources
  end

  test do
    system bin/"gp-saml-gui", "--help"
  end
end
