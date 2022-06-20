import 'package:web3dart/web3dart.dart';

import 'services/mnemonic_generator.dart';

void main() {
  _createPhrase();
}

Future<void> _createPhrase() async {
  final MnemonicGenerator service = MnemonicGenerator.instance;

  final String mnemonic = service.generateMnemonic();
  final String privateKey = await service.getPrivateKey(mnemonic);
  final EthereumAddress publicKey = await service.getPublicKey(privateKey);

  print('Mnemonic: $mnemonic');
  print('Private key: $privateKey');
  print('Public key: ${publicKey.hex}');
}
