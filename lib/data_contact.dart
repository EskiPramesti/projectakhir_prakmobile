import 'base_network.dart';

class DataContact {
  static DataContact instance = DataContact();
  Future<Map<String, dynamic>> loadNamaContact() {
    return BaseNetwork.get("contact");
  }
}
