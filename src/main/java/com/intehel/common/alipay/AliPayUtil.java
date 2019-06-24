package com.intehel.common.alipay;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.domain.AlipayTradeAppPayModel;
import com.alipay.api.request.AlipayTradeAppPayRequest;
import com.alipay.api.response.AlipayTradeAppPayResponse;

public class AliPayUtil {

    public static String pay(String orderId ,String orderMoney, String orderName) {
        AlipayConfig zfb = new AlipayConfig();
        // 实例化具体API对应的request类,类名称和接口名称对应,当前调用接口名称：alipay.trade.app.pay
        AlipayTradeAppPayRequest payRequest = new AlipayTradeAppPayRequest();
        // SDK已经封装掉了公共参数，这里只需要传入业务参数。以下方法为sdk的model入参方式(model和biz_content同时存在的情况下取biz_content)。
        AlipayTradeAppPayModel model = new AlipayTradeAppPayModel();
        // 实例化客户端
        AlipayClient alipayClient = new DefaultAlipayClient(
                zfb.URL, zfb.APPID, zfb.RSA_PRIVATE_KEY,
                zfb.FORMAT, zfb.CHARSET, zfb.ALIPAY_PUBLIC_KEY, zfb.SIGNTYPE);
        String orderInfo = null;
        // 商品的标题/交易标题/
        model.setSubject(orderName);
        // 商户网站唯一订单号
        model.setOutTradeNo(orderId);
        // 订单总金额，单位为元
        model.setTotalAmount(orderMoney);
        // 销售产品码，商家和支付宝签约的产品码，为固定值QUICK_MSECURITY_PAY
        model.setProductCode("FAST_INSTANT_TRADE_PAY");
        payRequest.setBizModel(model);
        payRequest.setNotifyUrl(zfb.notify_url);
        try {
            // 这里和普通的接口调用不同，使用的是sdkExecute
            AlipayTradeAppPayResponse response = alipayClient
                    .sdkExecute(payRequest);
            orderInfo = response.getBody();
        } catch (AlipayApiException e) {
            e.printStackTrace();
        }
        return orderInfo;
    }

}
