import '../entities/address/address.dart';
import '../entities/customer/customer.dart';
import '../entities/order/order_entity.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';

abstract class OrdersProductsRepo {
  Future<ResponseState<List<OrderEntity>>> load(ReqParam param);
  Future<ResponseState<OrderEntity>> loadOne(ReqParam param);
  Future<ResponseState<OrderEntity>> create(ReqParam param);
  Future<ResponseState<bool>> update(ReqParam param);
  Future<ResponseState<bool>> delete(ReqParam param);
}
