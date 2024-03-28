import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/invoice_repo_impl.dart';
import '../entities/invoice_entity/invoice_entity.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';
import '../repositories/invoice_repo.dart';

final invoicesRemoteUseCaseProvider = Provider<_UseCase>(
    (ref) => _UseCase(ref.read(invoicesRemoteRepositoryProvider)));

class _UseCase implements InvoiceRepo {
  InvoiceRepo repo;
  _UseCase(this.repo);

  @override
  Future<ResponseState<List<InvoiceEntity>>> load() {
    return repo.load();
  }

  @override
  Future<ResponseState<InvoiceEntity>> loadOne(ReqParam param) {
    return repo.loadOne(param);
  }
}
