import '../../common/utils/pagination/pagination/pagination.dart';
import '../../domain/entities/equipment/equipment.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import 'base/resource.dart';

class EquipmentsDataSourceImpl extends LoadingResDataSource<EquipmentModel> {
  @override
  Future<ResponseState<List<EquipmentModel>>> load(ReqParam param) {
    // TODO: implement load
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<EquipmentModel>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<Pagination<EquipmentModel>>> loadPage(ReqParam param) {
    // TODO: implement loadPage
    throw UnimplementedError();
  }

}
