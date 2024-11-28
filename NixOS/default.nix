with import <nixpkgs> {};

mkShell {
  # Add required development dependencies
  buildInputs = [
    pkgconfig
    gtk3
    clang
    rapidjson
  ];

  # Export PKG_CONFIG_PATH for pkg-config to find GTK3 and other libraries
  shellHook = ''
    export PKG_CONFIG_PATH=${gtk3.dev}/lib/pkgconfig:${gtk3.out}/lib/pkgconfig:$PKG_CONFIG_PATH
    echo "Development environment is ready. You can now run 'make' or your build command."
  '';
}

