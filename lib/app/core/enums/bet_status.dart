enum BetStatus {
  inProgress('Em progresso'),
  pending('Pagamento pendente'),
  done('Concluído');

  const BetStatus(this.description);

  final String description;
}
