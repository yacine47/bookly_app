abstract class Failure {}

class ServiceFailure extends Failure {
  final String error;

  ServiceFailure(this.error);
}
