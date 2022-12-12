// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_failures.freezed.dart';

@freezed
class RouteFailures with _$RouteFailures {
  @Implements<Exception>()
  const factory RouteFailures.pathNotAvailableError(
          [@Default('Error: This URL/path is not available') String message]) =
      RouteFailuresPathNotAvailableError;

  @Implements<Exception>()
  const factory RouteFailures.missingRequestNumberOrIdError(
      [@Default('Error: Request Number or ID are missing')
          String message]) = RouteFailuresMissingRequestNumberOrIdError;

  @Implements<Exception>()
  const factory RouteFailures.missingTaskPathError(
      [@Default('Error: Task is no longer available. Please login again')
          String message]) = RouteFailuresMissingTaskPathError;

  @Implements<Exception>()
  const factory RouteFailures.unspecifiedError(
          [@Default('Error: Unable to find this route') String message]) =
      RouteFailuresUnspecifiedError;
}
