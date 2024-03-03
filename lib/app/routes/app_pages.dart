import 'package:get/get.dart';

import '../modules/beranda/bindings/beranda_binding.dart';
import '../modules/beranda/views/beranda_view.dart';
import '../modules/bottomnavbar/bindings/bottomnavbar_binding.dart';
import '../modules/bottomnavbar/views/bottomnavbar_view.dart';
import '../modules/editProfil/bindings/edit_profil_binding.dart';
import '../modules/editProfil/views/edit_profil_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/permintaan/bindings/permintaan_binding.dart';
import '../modules/permintaan/views/permintaan_view.dart';
import '../modules/produk/bindings/produk_binding.dart';
import '../modules/produk/views/produk_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/riwayat/bindings/riwayat_binding.dart';
import '../modules/riwayat/views/riwayat_view.dart';
import '../modules/ubahPass/bindings/ubah_pass_binding.dart';
import '../modules/ubahPass/views/ubah_pass_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOMNAVBAR;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const BottomnavbarView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMNAVBAR,
      page: () => const BottomnavbarView(),
      binding: BottomnavbarBinding(),
    ),
    GetPage(
      name: _Paths.PRODUK,
      page: () => ProdukView(),
      binding: ProdukBinding(),
    ),
    GetPage(
      name: _Paths.RIWAYAT,
      page: () => const RiwayatView(),
      binding: RiwayatBinding(),
    ),
    GetPage(
      name: _Paths.BERANDA,
      page: () => const BerandaView(),
      binding: BerandaBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFIL,
      page: () => const EditProfilView(),
      binding: EditProfilBinding(),
    ),
    GetPage(
      name: _Paths.UBAH_PASS,
      page: () => const UbahPassView(),
      binding: UbahPassBinding(),
    ),
    GetPage(
      name: _Paths.PERMINTAAN,
      page: () => const PermintaanView(),
      binding: PermintaanBinding(),
    ),
  ];
}
