// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  @JsonKey(name: 'list')
  List<WeatherDetails> get weatherList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call({@JsonKey(name: 'list') List<WeatherDetails> weatherList});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherList = null,
  }) {
    return _then(_value.copyWith(
      weatherList: null == weatherList
          ? _value.weatherList
          : weatherList // ignore: cast_nullable_to_non_nullable
              as List<WeatherDetails>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$_WeatherCopyWith(
          _$_Weather value, $Res Function(_$_Weather) then) =
      __$$_WeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'list') List<WeatherDetails> weatherList});
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$_Weather>
    implements _$$_WeatherCopyWith<$Res> {
  __$$_WeatherCopyWithImpl(_$_Weather _value, $Res Function(_$_Weather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherList = null,
  }) {
    return _then(_$_Weather(
      weatherList: null == weatherList
          ? _value._weatherList
          : weatherList // ignore: cast_nullable_to_non_nullable
              as List<WeatherDetails>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weather implements _Weather {
  const _$_Weather(
      {@JsonKey(name: 'list') required final List<WeatherDetails> weatherList})
      : _weatherList = weatherList;

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  final List<WeatherDetails> _weatherList;
  @override
  @JsonKey(name: 'list')
  List<WeatherDetails> get weatherList {
    if (_weatherList is EqualUnmodifiableListView) return _weatherList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherList);
  }

  @override
  String toString() {
    return 'Weather(weatherList: $weatherList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weather &&
            const DeepCollectionEquality()
                .equals(other._weatherList, _weatherList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_weatherList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {@JsonKey(name: 'list')
      required final List<WeatherDetails> weatherList}) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  @JsonKey(name: 'list')
  List<WeatherDetails> get weatherList;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherDetails _$WeatherDetailsFromJson(Map<String, dynamic> json) {
  return _WeatherDetails.fromJson(json);
}

/// @nodoc
mixin _$WeatherDetails {
  @JsonKey(name: 'dt')
  num get date => throw _privateConstructorUsedError;
  MainWeatherInfo get main => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  List<WeatherStatus> get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDetailsCopyWith<WeatherDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDetailsCopyWith<$Res> {
  factory $WeatherDetailsCopyWith(
          WeatherDetails value, $Res Function(WeatherDetails) then) =
      _$WeatherDetailsCopyWithImpl<$Res, WeatherDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') num date,
      MainWeatherInfo main,
      @JsonKey(name: 'weather') List<WeatherStatus> status});

  $MainWeatherInfoCopyWith<$Res> get main;
}

/// @nodoc
class _$WeatherDetailsCopyWithImpl<$Res, $Val extends WeatherDetails>
    implements $WeatherDetailsCopyWith<$Res> {
  _$WeatherDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? main = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as num,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainWeatherInfo,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as List<WeatherStatus>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainWeatherInfoCopyWith<$Res> get main {
    return $MainWeatherInfoCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherDetailsCopyWith<$Res>
    implements $WeatherDetailsCopyWith<$Res> {
  factory _$$_WeatherDetailsCopyWith(
          _$_WeatherDetails value, $Res Function(_$_WeatherDetails) then) =
      __$$_WeatherDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') num date,
      MainWeatherInfo main,
      @JsonKey(name: 'weather') List<WeatherStatus> status});

  @override
  $MainWeatherInfoCopyWith<$Res> get main;
}

/// @nodoc
class __$$_WeatherDetailsCopyWithImpl<$Res>
    extends _$WeatherDetailsCopyWithImpl<$Res, _$_WeatherDetails>
    implements _$$_WeatherDetailsCopyWith<$Res> {
  __$$_WeatherDetailsCopyWithImpl(
      _$_WeatherDetails _value, $Res Function(_$_WeatherDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? main = null,
    Object? status = null,
  }) {
    return _then(_$_WeatherDetails(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as num,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainWeatherInfo,
      status: null == status
          ? _value._status
          : status // ignore: cast_nullable_to_non_nullable
              as List<WeatherStatus>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherDetails implements _WeatherDetails {
  const _$_WeatherDetails(
      {@JsonKey(name: 'dt') required this.date,
      required this.main,
      @JsonKey(name: 'weather') required final List<WeatherStatus> status})
      : _status = status;

  factory _$_WeatherDetails.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDetailsFromJson(json);

  @override
  @JsonKey(name: 'dt')
  final num date;
  @override
  final MainWeatherInfo main;
  final List<WeatherStatus> _status;
  @override
  @JsonKey(name: 'weather')
  List<WeatherStatus> get status {
    if (_status is EqualUnmodifiableListView) return _status;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_status);
  }

  @override
  String toString() {
    return 'WeatherDetails(date: $date, main: $main, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDetails &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._status, _status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, main, const DeepCollectionEquality().hash(_status));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherDetailsCopyWith<_$_WeatherDetails> get copyWith =>
      __$$_WeatherDetailsCopyWithImpl<_$_WeatherDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDetailsToJson(
      this,
    );
  }
}

abstract class _WeatherDetails implements WeatherDetails {
  const factory _WeatherDetails(
      {@JsonKey(name: 'dt') required final num date,
      required final MainWeatherInfo main,
      @JsonKey(name: 'weather')
      required final List<WeatherStatus> status}) = _$_WeatherDetails;

  factory _WeatherDetails.fromJson(Map<String, dynamic> json) =
      _$_WeatherDetails.fromJson;

  @override
  @JsonKey(name: 'dt')
  num get date;
  @override
  MainWeatherInfo get main;
  @override
  @JsonKey(name: 'weather')
  List<WeatherStatus> get status;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDetailsCopyWith<_$_WeatherDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

MainWeatherInfo _$MainWeatherInfoFromJson(Map<String, dynamic> json) {
  return _MainWeatherInfo.fromJson(json);
}

/// @nodoc
mixin _$MainWeatherInfo {
  num get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'feels_like')
  num get tempFeelsLike => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainWeatherInfoCopyWith<MainWeatherInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainWeatherInfoCopyWith<$Res> {
  factory $MainWeatherInfoCopyWith(
          MainWeatherInfo value, $Res Function(MainWeatherInfo) then) =
      _$MainWeatherInfoCopyWithImpl<$Res, MainWeatherInfo>;
  @useResult
  $Res call({num temp, @JsonKey(name: 'feels_like') num tempFeelsLike});
}

/// @nodoc
class _$MainWeatherInfoCopyWithImpl<$Res, $Val extends MainWeatherInfo>
    implements $MainWeatherInfoCopyWith<$Res> {
  _$MainWeatherInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? tempFeelsLike = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num,
      tempFeelsLike: null == tempFeelsLike
          ? _value.tempFeelsLike
          : tempFeelsLike // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainWeatherInfoCopyWith<$Res>
    implements $MainWeatherInfoCopyWith<$Res> {
  factory _$$_MainWeatherInfoCopyWith(
          _$_MainWeatherInfo value, $Res Function(_$_MainWeatherInfo) then) =
      __$$_MainWeatherInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num temp, @JsonKey(name: 'feels_like') num tempFeelsLike});
}

/// @nodoc
class __$$_MainWeatherInfoCopyWithImpl<$Res>
    extends _$MainWeatherInfoCopyWithImpl<$Res, _$_MainWeatherInfo>
    implements _$$_MainWeatherInfoCopyWith<$Res> {
  __$$_MainWeatherInfoCopyWithImpl(
      _$_MainWeatherInfo _value, $Res Function(_$_MainWeatherInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? tempFeelsLike = null,
  }) {
    return _then(_$_MainWeatherInfo(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num,
      tempFeelsLike: null == tempFeelsLike
          ? _value.tempFeelsLike
          : tempFeelsLike // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainWeatherInfo implements _MainWeatherInfo {
  const _$_MainWeatherInfo(
      {required this.temp,
      @JsonKey(name: 'feels_like') required this.tempFeelsLike});

  factory _$_MainWeatherInfo.fromJson(Map<String, dynamic> json) =>
      _$$_MainWeatherInfoFromJson(json);

  @override
  final num temp;
  @override
  @JsonKey(name: 'feels_like')
  final num tempFeelsLike;

  @override
  String toString() {
    return 'MainWeatherInfo(temp: $temp, tempFeelsLike: $tempFeelsLike)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainWeatherInfo &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.tempFeelsLike, tempFeelsLike) ||
                other.tempFeelsLike == tempFeelsLike));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temp, tempFeelsLike);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainWeatherInfoCopyWith<_$_MainWeatherInfo> get copyWith =>
      __$$_MainWeatherInfoCopyWithImpl<_$_MainWeatherInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainWeatherInfoToJson(
      this,
    );
  }
}

abstract class _MainWeatherInfo implements MainWeatherInfo {
  const factory _MainWeatherInfo(
          {required final num temp,
          @JsonKey(name: 'feels_like') required final num tempFeelsLike}) =
      _$_MainWeatherInfo;

  factory _MainWeatherInfo.fromJson(Map<String, dynamic> json) =
      _$_MainWeatherInfo.fromJson;

  @override
  num get temp;
  @override
  @JsonKey(name: 'feels_like')
  num get tempFeelsLike;
  @override
  @JsonKey(ignore: true)
  _$$_MainWeatherInfoCopyWith<_$_MainWeatherInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherStatus _$WeatherStatusFromJson(Map<String, dynamic> json) {
  return _WeatherStatus.fromJson(json);
}

/// @nodoc
mixin _$WeatherStatus {
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherStatusCopyWith<WeatherStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStatusCopyWith<$Res> {
  factory $WeatherStatusCopyWith(
          WeatherStatus value, $Res Function(WeatherStatus) then) =
      _$WeatherStatusCopyWithImpl<$Res, WeatherStatus>;
  @useResult
  $Res call({String main, String description, String icon});
}

/// @nodoc
class _$WeatherStatusCopyWithImpl<$Res, $Val extends WeatherStatus>
    implements $WeatherStatusCopyWith<$Res> {
  _$WeatherStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherStatusCopyWith<$Res>
    implements $WeatherStatusCopyWith<$Res> {
  factory _$$_WeatherStatusCopyWith(
          _$_WeatherStatus value, $Res Function(_$_WeatherStatus) then) =
      __$$_WeatherStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String main, String description, String icon});
}

/// @nodoc
class __$$_WeatherStatusCopyWithImpl<$Res>
    extends _$WeatherStatusCopyWithImpl<$Res, _$_WeatherStatus>
    implements _$$_WeatherStatusCopyWith<$Res> {
  __$$_WeatherStatusCopyWithImpl(
      _$_WeatherStatus _value, $Res Function(_$_WeatherStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$_WeatherStatus(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherStatus implements _WeatherStatus {
  const _$_WeatherStatus(
      {required this.main, required this.description, required this.icon});

  factory _$_WeatherStatus.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherStatusFromJson(json);

  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'WeatherStatus(main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherStatus &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, main, description, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherStatusCopyWith<_$_WeatherStatus> get copyWith =>
      __$$_WeatherStatusCopyWithImpl<_$_WeatherStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherStatusToJson(
      this,
    );
  }
}

abstract class _WeatherStatus implements WeatherStatus {
  const factory _WeatherStatus(
      {required final String main,
      required final String description,
      required final String icon}) = _$_WeatherStatus;

  factory _WeatherStatus.fromJson(Map<String, dynamic> json) =
      _$_WeatherStatus.fromJson;

  @override
  String get main;
  @override
  String get description;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherStatusCopyWith<_$_WeatherStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
