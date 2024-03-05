import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/Invoice/Invoice_entity.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/repositories/invoice_repo.dart';
import '../data_sources/invoices/data_source.dart';
import '../data_sources/invoices/remote_data_source.dart';

final invoicesRemoteRepositoryProvider = Provider<_RepositoryImpl>(
  (ref) => _RepositoryImpl(
    ref.read(invoicesRemoteDataSourceProvider),
  ),
);

class _RepositoryImpl extends InvoiceRepo {
  final InvoiceDataSource datasource;

  _RepositoryImpl(this.datasource);

  @override
  Future<ResponseState<List<InvoiceEntity>>> load() {
    return datasource.load();
  }

  @override
  Future<ResponseState<InvoiceEntity>> loadOne(ReqParam param) {
    return datasource.loadOne(param);
  }


}
