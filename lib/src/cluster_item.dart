import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart'
    as map_interface;

mixin ClusterItem {
  map_interface.LatLng get location;

  String? _geohash;
  String get geohash => _geohash ??=
      Geohash.encode(location, codeLength: ClusterManager.precision);
}
