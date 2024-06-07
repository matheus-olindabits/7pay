enum ExceptionError {
  cep("Não foi possível localizar o cep"),
  defaultError("Algo deu errado. Por favor, tente novamente.");

  final String name;
  const ExceptionError(this.name);
}
