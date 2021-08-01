import 'package:cab_rider/datamodels/userCL.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

String serverKeyOauth =
    'Bearer ya29.a0ARrdaM8c5QbfIGl6oE4EVsOi_q43A7RYi6wy7LVHaNotWJTXODjwHczKB5VP8Eug83ENH8OLfE6Iump7y3_LcnTQkRcaG9UXuTA26D4_C_v-VgPUsWOw9AMO67M16qK0CKysoXTqJbPEwk7WKjfNbGZ8Sb6p';

String mapKey = 'AIzaSyB-DXDM28-apXG86HbxwKu6Q7ZI7V0BqS4';
final CameraPosition googlePlex = CameraPosition(
  target: LatLng(37.42796133580664, -122.085749655962),
  zoom: 14.4746,
);
User currentFirebaseUser;
UserCL currentUserInfo;
