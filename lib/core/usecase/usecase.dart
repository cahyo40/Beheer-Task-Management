abstract class UseCase<Type, Params> {
  Type call({Params param});
}

abstract class UseCaseNoParam<Type> {
  Type call();
}
