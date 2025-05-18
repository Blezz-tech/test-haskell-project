{
  stdenv,
  lib,
  haskellPackages,
}:
haskellPackages.mkDerivation {
  pname = "test-haskell-project";
  version = "0.1.0";

  src = ./.;

  # Если у вас есть зависимости, укажите их здесь
  # buildDepends = [ haskellPackages.base haskellPackages.text ];

  # Опционально: описание, лицензия, авторы и т.д.
  description = "Описание вашего Haskell пакета";
  license = lib.licenses.mit;
  maintainers = with lib.maintainers; [ "blezz-tech" ];

}
