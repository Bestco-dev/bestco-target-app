import '../entities/address/address.dart';
import '../entities/customer/customer.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';

abstract class CustomersRepo {
  Future<ResponseState<List<CustomerEntity>>> load();
  Future<ResponseState<CustomerEntity>> loadOne(ReqParam param);
  Future<ResponseState<CustomerEntity>> create(ReqParam param);
  Future<ResponseState<bool>> update(ReqParam param);
  Future<ResponseState<bool>> delete(ReqParam param);
  Future<ResponseState<AddressModel>> createAddress(ReqParam param);
  Future<ResponseState<bool>> updateAddress(ReqParam param);
  Future<ResponseState<bool>> deleteAddress(ReqParam param);
}
