import '../entities/address/address.dart';
import '../entities/customer/customer.dart';
import '../entities/key_valu_option/key_value_option.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';

abstract class AddressRepo {
  Future<ResponseState<List<AddressModel>>> load();
  Future<ResponseState<AddressModel>> loadOne(ReqParam param);
  Future<ResponseState<AddressModel>> create(ReqParam param);
  Future<ResponseState<bool>> update(ReqParam param);
  Future<ResponseState<bool>> delete(ReqParam param);
  Future<ResponseState<List<KeyValueOptionEntity>>> loadOptions(ReqParam param);//for loading countries,states,cities
  // Future<ResponseState<bool>> loadStates(ReqParam param);
  // Future<ResponseState<bool>> loadCities(ReqParam param);
}
