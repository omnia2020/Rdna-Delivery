import 'package:flutter/material.dart';
import 'package:rdna_delivery/src/core/widgets/app_toast.dart';
import 'package:rdna_delivery/src/features/order-list/data/delivery_orders_api.dart';
import 'package:rdna_delivery/src/features/order-list/models/models.dart';

class DeliveryOrdersProvider extends ChangeNotifier {
  bool _showLoading = false;
  bool get showLoading => _showLoading;

  DeliveryOrdersModel? _deliveryOrdersModel;
  DeliveryOrdersModel? get deliveryOrdersModel => _deliveryOrdersModel;

  List<OrdersData>? _ordersData = [];
  List<OrdersData>? get ordersData => _ordersData;
  int _currentPage = 1;
  int get currentPage => _currentPage;
  set currentPage(int currentPage) {
    _currentPage = currentPage;
  }

  int lastPage = 0;
  bool _loadMore = true;
  bool get loadMore => _loadMore;
  set loadMore(bool loadMore) {
    _loadMore = loadMore;
  }

  listAllDeliveryOrders() async {
    _ordersData = [];
    try {
      _showLoading = true;
      _deliveryOrdersModel = await DeliveryOrdersApi().listAllDeliveryOrders(1);
      notifyListeners();
      _ordersData?.addAll(_deliveryOrdersModel?.data?.ordersData ?? []);
      _showLoading = false;
      notifyListeners();
    } catch (e) {
      _showLoading = false;
      notifyListeners();
      AppToast.errorToast(e.toString());
    }
  }

  loadMoreOrders() async {
    try {
      if (loadMore) {
        lastPage = deliveryOrdersModel?.data?.lastPage ?? 1;
        currentPage += 1;
        if (currentPage <= lastPage) {
          _deliveryOrdersModel =
              await DeliveryOrdersApi().listAllDeliveryOrders(currentPage);
          notifyListeners();
          _ordersData?.addAll(_deliveryOrdersModel?.data?.ordersData ?? []);
          loadMore = true;
          notifyListeners();
        } else {
          loadMore = false;
          notifyListeners();
        }
      }
    } catch (e) {
      loadMore = false;
      AppToast.errorToast(e.toString());
    }
  }

  SingleOrderDetails? _singleOrderDetails;
  SingleOrderDetails? get singleOrderDetails => _singleOrderDetails;

  showOrderDetails(int id) async {
    try {
      _showLoading = true;
      _singleOrderDetails = await DeliveryOrdersApi().showOrderDetails(id);
      notifyListeners();
      _showLoading = false;
      notifyListeners();
    } catch (e) {
      _showLoading = false;
      notifyListeners();
      AppToast.errorToast(e.toString());
    }
  }

  AcceptOrderModel? _acceptOrderModel;
  AcceptOrderModel? get acceptOrderModel => _acceptOrderModel;
  acceptOrder({int? orderID}) async {
    _acceptOrderModel = null;
    try {
      _showLoading = true;
      notifyListeners();
      _acceptOrderModel = await DeliveryOrdersApi().acceptOrder(orderID!);
      notifyListeners();
      _showLoading = false;
      notifyListeners();
    } catch (e) {
      _showLoading = false;
      notifyListeners();
      AppToast.errorToast(e.toString());
    }
  }

  AcceptOrderModel? _completeOrder;
  AcceptOrderModel? get completeOrder => _completeOrder;

  completeDeliverOrder({int? id, bool? status, String? issue}) async {
    _completeOrder = null;
    try {
      _showLoading = true;
      notifyListeners();
      _completeOrder = await DeliveryOrdersApi()
          .completeOrderDelivered(id: id, reportIssue: issue, status: status);
      notifyListeners();
      _showLoading = false;
      notifyListeners();
    } catch (e) {
      _showLoading = false;
      notifyListeners();
      AppToast.errorToast(e.toString());
    }
  }

  reset() async {
    _deliveryOrdersModel = null;
    _ordersData = [];
    _acceptOrderModel = null;
    _completeOrder = null;
    loadMore = true;
    currentPage = 1;
    lastPage = 1;
    await listAllDeliveryOrders();
  }
}
