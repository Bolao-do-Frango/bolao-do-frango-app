enum PoolStatus {
  inProgress('Em progresso'),
  pending('Pagamento pendente'),
  done('Concluído');

  const PoolStatus(this.description);

  final String description;
}
