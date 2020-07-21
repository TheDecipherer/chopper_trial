import 'package:chopper/chopper.dart';

part 'get_schools_service.chopper.dart';

@ChopperApi(baseUrl: '/api/user/signin')
abstract class GetSchoolsService extends ChopperService {
  // @Get(headers: {
  //   'cookie':
  //       'express:sess=eyJqd3QiOiJleUpoYkdjaU9pSklVekkxTmlJc0luUjVjQ0k2SWtwWFZDSjkuZXlKcFpDSTZJalZtTURBMVl6Z3pZVEU1TXpjMFpUWmlabU5oT1dZeU5pSXNJbVZ0WVdsc0lqb2lZV1J0YVc1QVkzSmxZWEpsTURBdWFXNGlMQ0p5YjJ4bElqb2lZV1J0YVc0aUxDSnVZVzFsSWpvaVRtRnJhV0VnUVc1cmRXNWthVzVuSUVweUxpSXNJbk5qYUc5dmJFbGtJam9pTldZd01EVmpPRE5oTVRrek56UmxObUptWTJFNVpqSTFJaXdpYVdGMElqb3hOVGsxTXpBNU9EQTNmUS43bzNhSTdIbGZnc2VWYXZwcFpwd1o2NWNzN25mN09WMnVTVDFHUklhaUpjIn0=; Path=/; Domain=localhost; HttpOnly;'
  // })
  // Future<Response> getSchools();

  @Post()
  Future<Response> loginUser(
    @Body() Map<String, dynamic> body,
  );

  static GetSchoolsService create() {
    final client = ChopperClient(
      baseUrl: 'http://localhost:3000',
      services: [
        _$GetSchoolsService(),
      ],
      converter: JsonConverter(),
    );

    return _$GetSchoolsService(client);
  }
}
