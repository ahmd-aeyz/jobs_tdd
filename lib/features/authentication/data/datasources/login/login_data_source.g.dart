// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _LoginDataSource implements LoginDataSource {
  _LoginDataSource(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://0a20-154-180-84-54.ngrok.io/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<LoginDataResponseModel> login(loginUserModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(loginUserModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LoginDataResponseModel>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = LoginDataResponseModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
