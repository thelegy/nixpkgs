{ buildPythonPackage,
  fetchFromGitHub,
  isPy27,
  opuslib,
  protobuf,
  stdenv,
}:

buildPythonPackage rec {
  pname = "pymumble";
  version = "0.3.1";

  disabled = isPy27;

  propagatedBuildInputs = [ opuslib protobuf ];

  src = fetchFromGitHub {
    owner = "azlux";
    repo = "pymumble";
    rev = "1dd6d6d4df2fdef33202f17e2acf3ba9678a5737";
    sha256 = "1r1sch8xrpbzffsb72lhp5xjr3ac3xb599n44vsfmaam3xklz6vz";
  };

  doCheck = true;

  meta = with stdenv.lib; {
    description = "Python 3 version of pymumble, Mumble library used for multiple uses like making mumble bot.";
    homepage = "https://github.com/azlux/pymumble";
    license = licenses.gpl3;
    platforms = platforms.all;
    maintainers = with maintainers; [ thelegy ];
  };
}
