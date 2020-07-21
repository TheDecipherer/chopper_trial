// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_schools_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$GetSchoolsService extends GetSchoolsService {
  _$GetSchoolsService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = GetSchoolsService;

  @override
  Future<Response<dynamic>> loginUser(Map<String, dynamic> body) {
    final $url = '/api/user/signin';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
