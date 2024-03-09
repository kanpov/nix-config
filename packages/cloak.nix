{ buildGoModule, fetchFromGitHub }:

buildGoModule {
  pname = "Cloak";
  version = "2.8.0";

  src = fetchFromGitHub {
    owner = "eclairevoyant";
    repo = "Cloak";
    rev = "34b0d1a";
    hash = "sha256-2nk/sz2pNVt7rM+6omj+FK1U039swFqjHmnE4n3YC4E=";
  };

  vendorHash = "sha256-xyzFsk1frnj+HbYpXTjrZzD1NM5mokNv6maCA4CsT/w=";

  doCheck = false;

  ldflags = [
    "-X main.version=master(c48a880)"
  ];
}