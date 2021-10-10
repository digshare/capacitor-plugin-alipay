package com.mufan.capacitor.plugin.alipay;

import android.app.Activity;
import android.os.Message;

import com.alipay.sdk.app.PayTask;
import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

import java.util.Map;

@CapacitorPlugin(name = "Alipay")
public class AlipayPlugin extends Plugin {
    private Alipay alipay = new Alipay();

    @PluginMethod
    public void request(PluginCall call) {
        Alipay.lastCall = call;

        final String orderInfo = call.getString("orderInfo");
        final Activity act = getBridge().getActivity();

        final Runnable payRunnable = new Runnable() {

            @Override
            public void run() {
                PayTask task = new PayTask(act);
                Map<String, String> result = task.payV2(orderInfo, true);

                Message msg = new Message();
                msg.what = alipay.SDK_PAY_FLAG;
                msg.obj = result;

                alipay.mHandler.sendMessage(msg);
            }
        };

        Thread payThread = new Thread(payRunnable);
        payThread.start();
    }
}
