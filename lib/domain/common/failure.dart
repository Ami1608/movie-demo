abstract class Failure {}
abstract class FeatureFailure extends Failure{}

class ServerError extends Failure {}
class InternalError extends Failure {}
class NetworkConnection extends Failure {}
class GeneralError extends Failure{
  var message;
  GeneralError(this.message);
}

// Login
class UserNotPermission extends FeatureFailure{}
class InvalidAuthDetail extends FeatureFailure{}
class UserNotFound extends FeatureFailure{}

