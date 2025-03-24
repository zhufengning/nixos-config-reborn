{ stdenv, swt, jdk23, makeWrapper, wrapGAppsHook3, jeb_home }:
let
  java = "${jdk23}/bin/java";
  swt_lib = "${swt.outPath}/lib/";
  swt_jar = "${swt.outPath}/jars/swt.jar";
in stdenv.mkDerivation rec {
  name = "jeb-${version}";
  version = "1.0";
  src = ./.;
  buildInputs = [ swt jdk23 makeWrapper ];
  nativeBuildInputs = [ wrapGAppsHook3 ];
  installPhase = ''
    apps=$out/share/applications/
    icons=$out/share/icons/hicolor/scalable/apps
    mkdir -p $apps
    mkdir -p $icons
    cp -r ./jeb.desktop $apps
    cp ./jeb.png $icons
    makeWrapper ${java} $out/bin/jeb --add-flags "-Djava.library.path=${swt_lib}  -cp ${jeb_home}/bin/app/jebc.jar:${swt_jar} com.pnfsoftware.jeb.rcpclient.Launcher"'';
}
