part of 'prayer_cubit.dart';

enum PrayerStatus { loading, loaded, error }

final class PrayerState extends Equatable {
  final PrayerStatus status;
  final List<PrayerTimeEntity> prayerTimes;
  final String? error;

  const PrayerState({
    this.status = PrayerStatus.loading,
    this.prayerTimes = const [],
    this.error,
  });

  PrayerState copyWith({
    PrayerStatus? status,
    List<PrayerTimeEntity>? prayerTimes,
    String? error,
  }) {
    return PrayerState(
      status: status ?? this.status,
      prayerTimes: prayerTimes ?? this.prayerTimes,
      error: error,
    );
  }

  @override
  List<Object?> get props => [status, prayerTimes, error];
}
