import '../entities/Invoice/Invoice_entity.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';

abstract class InvoiceRepo {
  Future<ResponseState<List<InvoiceEntity>>> load();

  Future<ResponseState<InvoiceEntity>> loadOne(ReqParam param);
}
