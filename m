Return-Path: <usb-storage+bncBCB6X76TWIIRBXWMTO6AMGQE7FRIXPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 9959CA1142C
	for <lists+usb-storage@lfdr.de>; Tue, 14 Jan 2025 23:34:07 +0100 (CET)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-467bb3eea80sf2110891cf.2
        for <lists+usb-storage@lfdr.de>; Tue, 14 Jan 2025 14:34:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736894046; cv=pass;
        d=google.com; s=arc-20240605;
        b=YJAvWh9SOKCVO/dW9hXcCCUTUAxq9vwitGZlo8OmayjrqgO9vYZnhmtHeiAvXs8iWC
         4mj6EvTJ9fZyN/b8/+CZvQ9vKMQHNJ3oZR7doLTkiR/FS6yr/txYZiFVdKC3WtMxRtPK
         DJ8t5+t505QCFqp7res0ChqS54KOGFvpknZSlcQPChV5m+Q9c/nHrsmn3fu/j+4txjOV
         cWUAYo3XHy1Zod9JKsTlEpNgDLtc8NykxIbtDyWNCfYQKSIQgbZaXSwxRK6Io6N/A6hW
         eiOeqLfSpt4GeLXfJRhOwkFIiCo615wxuwS4gOdPaboVyRYT2oEjfWXByUOgiyiak9bw
         WLzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references
         :message-id:mime-version:subject:date:from:sender:dkim-signature;
        bh=z8r86Y/eOAyXzGyw6uYT9Lyw9rswIUPXDdL2rZkiGLw=;
        fh=yQxjCHXeJBx2OS+/4DMmx5CFD4z1SsEAEbTrAcePeoA=;
        b=YcXx+/VTYZj/HCtO7VCjl2jOIBSLIFfrNozJ/wnHIf9AdCrTv7/D3SkmMzsR2fU7ku
         P8xelTxdIxN9SJuNQgmS3znSsZZVsf0ns8YU3l2+/KXxrdLr8Pe1O3rUZGDdF6VkPIgx
         5F3ae3ldB3qa5v+b8IY+00cw/IOYWVeLlOMafMx8kpgft8JjcqjPad/7nzBu3JKSOsC5
         7A6BE2MpRcxDyLlFDIt/nR7OeuEmy0GOHqXKARuV2JRzgTBhaUP3NGIGF4YK8rJlY6As
         Ki+/ZdJeLHFHuUD95zatVd2Z2jqpEW3Y774SKjUa8FZdrjYLAR2DKda1Q41MR0KyZ7EI
         w10Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=VOcYskqk;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736894046; x=1737498846; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:in-reply-to:references:message-id
         :mime-version:subject:date:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z8r86Y/eOAyXzGyw6uYT9Lyw9rswIUPXDdL2rZkiGLw=;
        b=CtaRAAxzu5JVE1HWQlyu5mZMbJ588pg3YODJLtqa8I5ljQxX69Irz680Z2vHa4zvdt
         gc5Na7LXnbE8dxBH9s4Ek9T4PIq2wATNXNJzTU6+4abiLHncYArdoouTNnxK2HqWW9jv
         moWdzGCKzn6ODMSnOP1WdjlF1sufW71/z3jLM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736894046; x=1737498846;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:in-reply-to:references:message-id
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=z8r86Y/eOAyXzGyw6uYT9Lyw9rswIUPXDdL2rZkiGLw=;
        b=gIy7MqOZtyYHlLMmamud1ZUzIVNU31zkiHd+TcrT7SEEyci1bbvkb5O56KywSCMB2+
         uRx0QZlFtV0hNs56E0/SNDg6HyKWwUR8ksHV1By1QlopL1JofzQZ0KRMUgDZCBd1w/aM
         gNG1PVaqA4aTVBjwbR7nZ+2YPFalxAsH2hYU0jtlhjt4iXyQtgTxt8OEx/etx5RP5SEX
         W6y6HAPr61TR2h0t0ARqS64kuP47HnjfG1rcQV3CwCekwjPUs4Kc9GnOX+y1Ye9woARt
         +Nhq/EHComdtZKi8bOy+vPH6uno4hxFKDfkeqbPtFFgsIClbGykS5OEo9xZcOZZYXpUw
         oxhA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUnIUIPvET7mV6SrmglOXwLD6D7YWsJ/v7upJThxu4k9mcRaY8783vJWlVw5A7457o8x1aQkQ==@lfdr.de
X-Gm-Message-State: AOJu0YxXChp6mr0N8ulKDe0L3NyKq5fUSm2trbIj9w5vC/giMSsK1ZFo
	iCThAH296Z8U0ZCEgmGQexwmIjhwFRhQHzGj6H/3QorlBhHZ+e2CnWZwsgK/GAk=
X-Google-Smtp-Source: AGHT+IH3EfCnCtUMP172Gt4sLKNH23Q8lCEK8lqNOSMqx2zTmvSd/3fDso72/uxvc4HYYwUtw/Osxw==
X-Received: by 2002:a05:622a:1488:b0:467:6092:841c with SMTP id d75a77b69052e-46c70f76185mr155476201cf.0.1736894046360;
        Tue, 14 Jan 2025 14:34:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:510d:b0:466:9e59:9807 with SMTP id
 d75a77b69052e-46c7ab568f8ls89017081cf.1.-pod-prod-05-us; Tue, 14 Jan 2025
 14:34:06 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUissBxwWNEMET98iTQzdllMdWJj+IgEIaYLC0EcjEEqGPOzBZ4qwURPKdJCO5WCjZBCkbglqnbge0SLg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:2697:b0:7b1:5763:4ba2 with SMTP id af79cd13be357-7bcd9761f18mr4770364085a.40.1736894045871;
        Tue, 14 Jan 2025 14:34:05 -0800 (PST)
Received: by 2002:a05:620a:3944:b0:7b6:67a8:4fcd with SMTP id af79cd13be357-7bce9dbb048ms85a;
        Tue, 14 Jan 2025 12:05:53 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWl0ReZy2Nlu9GkEmw1P7x1PPdih2X8WhFkMKG+VRjUFZEiB4FHgR4YBFfBVxS2TvmAi5/q34t2MVlqMw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:1e29:b0:434:e892:1033 with SMTP id 5b1f17b1804b1-437c6b7b184mr2132425e9.2.1736885152178;
        Tue, 14 Jan 2025 12:05:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736885152; cv=none;
        d=google.com; s=arc-20240605;
        b=T6oob7fGuBoe3ai1wkg4mOZxevT1ZP7Fi5+DRmkFWRtsqB2qFZc1OJKzPFcIyJRC7L
         MZU0YF0WUmqPcQUn8nt47mAkjOA+uCBoBSC3Mw3D9eHamxWM70qCSQ56CJAXVWq8SPc6
         /mJwZOQ9AfQRSY+2oRE0zwiIwRfZGLRIPgg3dMiZAwyl/+wTyY+SF5dHIB9g4BHGfdH2
         P2MaiCSGzCYmUmrkbZL00HL3gfRqNswUSsV7R9aHMa0874FzGHW8gzsytlrszw370Ex/
         qNQ/ARw6iDMPPp/6mTuX9eFy/vBnTIWstSrF0ZMbGvEi5jkvJ6DLStbR8bDm72QPQcdi
         r5+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:dkim-signature;
        bh=lUd9pE4ibsdIBdg8Wzjk/goShzuEiiFqbneq+H7LmXk=;
        fh=fDYXkSFNB6oeyXna7DL07YayNu/9U9kIpmaTHwSNNVk=;
        b=arzvqKLOqbqOMMY7Zmft6InQz3GVpzE6QzpENKcjdFImZMabkRQCWS9U6bniWbtMq4
         HXvi5Qu7aB/kr1qci7OKbSZY2+MQD8+mp1D7HGle06vJgcyAKSwnKox5HiEXyB45h75w
         M2tpYFTAtpjIoGI4o2r8V3JqWrZxhRlr78cESPSQF+sCur+c8HvGvhEf7X0iL3DG76Q4
         zTLGbHIy+pWTVvQmZJEOEEOjnkXucDgWKnFcElQhp16Le9uOV3EL77MA0y4pOXRPbyUg
         DIy1jSVxxe5+NCgebC8eHt6ArcmowLoIGRafHm44Dn6sNS/BaVvuVZUJBHMViqM7IhoG
         0WiA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=VOcYskqk;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 5b1f17b1804b1-436e99b5019sor21961375e9.2.2025.01.14.12.05.52
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 14 Jan 2025 12:05:52 -0800 (PST)
Received-SPF: pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVZ77I5eZ7ZUMZgQnHxvOt+IisGflXsADU+329VYql1PZekLLmQ6ZFcvKzAVDSPJxW5j7WUhB2ZAifAaQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGnct7Y9mTVt2LmhpFbLAIbkz0QT+42/iz38w4QySlvffQwOdqfn6RniNHC/zRLyn
	C6dELosCIY+v865TfXMQWesxUmmTT6zYVhnBee+Speu2giXH61Zx/MHUwsDU5ZveIV9RyNDApwE
	eu42ehIVGnFVPNNfIqwDRFNUUTmmolJpdafd1xS3HAnWjqVJl1rE0eC+qPHdirtZ7JaPrg10x3D
	+pGzgqBq+Qf6ziZyuQ1L/TEIvagicytdpXS/NaZotF6ywhMOzDaT3Snp6K+jh2Qpw+OA/+2
X-Received: by 2002:a05:600c:4e52:b0:434:a339:ec67 with SMTP id 5b1f17b1804b1-436eba35780mr83014555e9.3.1736885151629;
        Tue, 14 Jan 2025 12:05:51 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e9dc8802sm184622025e9.10.2025.01.14.12.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 12:05:50 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 14 Jan 2025 21:05:36 +0100
Subject: [usb-storage] [PATCH 3/6] USB: typec: Use str_enable_disable-like helpers
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Message-Id: <20250114-str-enable-disable-usb-v1-3-c8405df47c19@linaro.org>
References: <20250114-str-enable-disable-usb-v1-0-c8405df47c19@linaro.org>
In-Reply-To: <20250114-str-enable-disable-usb-v1-0-c8405df47c19@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Mathias Nyman <mathias.nyman@intel.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, Daniel Mack <daniel@zonque.org>, 
 Haojian Zhuang <haojian.zhuang@gmail.com>, 
 Robert Jarzmik <robert.jarzmik@free.fr>, Peter Chen <peter.chen@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 usb-storage@lists.one-eyed-alien.net, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=10285;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=op/DCt6ROIee0t+eYACLLqRtmspLz0pZPqJlNXnqaN4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnhsOT5omtXZe4pNX5FucIXi5M/SLvLnE6Fx0dg
 5RFTZwpizSJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ4bDkwAKCRDBN2bmhouD
 1wniEACTnxh/J9HADUSXH/B4PxpTjFV+HrzcRy0yJFO5nAqDf8CUvzoxy5LiOSJDsxsv27LeepD
 N5ehvpyz+w2gWupb8eKYhihGTkZ1w0IyNmJj6Ohn4aBEU9WxRZyebFGmFgq+U+5Yq3MgEfoEDl9
 KLU9ATXXCmI42YpRmlk8329azwR3r8wRSmREHw9PbPr1Q997cij4f6FSC5kDaf7XqNFkq3Biy7r
 sEKxzqtAq+1zMUbuRJqVoc5bDq1zmjPaX5XF9BSD1luW+oTxpU5XewskSF2zy4llNlDkvOBhpUf
 brYhgStgG0YmQovvVmwGF13nw6GRW3xN/8/O7VG1jmMJMg8U3XDEHcRJFG1uyfxZelW5vyKCFr0
 yNMHm1IfLNSSd0BhcGE/R4kUyI6N/XkeZJzVba/Kc5KZA7HVTb+CSpIBtIJuKtpm39WM+W60PHx
 qSoLgrOPGXZ7fArYjAsMCi2yWV/ZbGsWzpCAblo9RjEYJnvrxUhNTJ181Oy/dCLY58C86yX2j5H
 noV1BpUMujRYSzzVCK93IgHmRlnfKI9vkAa0hJPXjsbXDcJjMtDlNEFGlcCnRGzSSGK2ASCSXY0
 nDWJOYR13ka9BCCBi+4IFPoETK1PdZLOY0+MSfRDgq+ikD5D/uZlMz7v8y0W7VtlqdLvOeEVUr+
 DK2pcX225G0ItrA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Original-Sender: krzysztof.kozlowski@linaro.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=VOcYskqk;       spf=pass
 (google.com: domain of krzysztof.kozlowski@linaro.org designates
 209.85.220.41 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org;
       dara=pass header.i=@lists.one-eyed-alien.net
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

Replace ternary (condition ? "enable" : "disable") syntax with helpers
from string_choices.h because:
1. Simple function call with one argument is easier to read.  Ternary
   operator has three arguments and with wrapping might lead to quite
   long code.
2. Is slightly shorter thus also easier to read.
3. It brings uniformity in the text - same string.
4. Allows deduping by the linker, which results in a smaller binary
   file.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/usb/typec/class.c                          |  7 ++++---
 drivers/usb/typec/tcpm/fusb302.c                   | 24 +++++++++++-----------
 .../usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c    |  3 ++-
 .../typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c   |  3 ++-
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c |  4 +++-
 drivers/usb/typec/tcpm/tcpm.c                      |  7 ++++---
 6 files changed, 27 insertions(+), 21 deletions(-)

diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
index d9d019cff01908eaa8dcb484a87147f3d9992bf3..9c76c3d0c6cff9c9b94ef35fb0cb4be0e395aad6 100644
--- a/drivers/usb/typec/class.c
+++ b/drivers/usb/typec/class.c
@@ -10,6 +10,7 @@
 #include <linux/mutex.h>
 #include <linux/property.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/usb/pd_vdo.h>
 #include <linux/usb/typec_mux.h>
 #include <linux/usb/typec_retimer.h>
@@ -361,7 +362,7 @@ active_show(struct device *dev, struct device_attribute *attr, char *buf)
 {
 	struct typec_altmode *alt = to_typec_altmode(dev);
 
-	return sprintf(buf, "%s\n", alt->active ? "yes" : "no");
+	return sprintf(buf, "%s\n", str_yes_no(alt->active));
 }
 
 static ssize_t active_store(struct device *dev, struct device_attribute *attr,
@@ -707,7 +708,7 @@ static ssize_t supports_usb_power_delivery_show(struct device *dev,
 {
 	struct typec_partner *p = to_typec_partner(dev);
 
-	return sprintf(buf, "%s\n", p->usb_pd ? "yes" : "no");
+	return sprintf(buf, "%s\n", str_yes_no(p->usb_pd));
 }
 static DEVICE_ATTR_RO(supports_usb_power_delivery);
 
@@ -1855,7 +1856,7 @@ static ssize_t vconn_source_show(struct device *dev,
 	struct typec_port *port = to_typec_port(dev);
 
 	return sprintf(buf, "%s\n",
-		       port->vconn_role == TYPEC_SOURCE ? "yes" : "no");
+		       str_yes_no(port->vconn_role == TYPEC_SOURCE));
 }
 static DEVICE_ATTR_RW(vconn_source);
 
diff --git a/drivers/usb/typec/tcpm/fusb302.c b/drivers/usb/typec/tcpm/fusb302.c
index e2fe479e16ada018930ea0dbbf58ee37ce9a1990..f15c63d3a8f441569ec98302f5b241430d8e4547 100644
--- a/drivers/usb/typec/tcpm/fusb302.c
+++ b/drivers/usb/typec/tcpm/fusb302.c
@@ -24,6 +24,7 @@
 #include <linux/slab.h>
 #include <linux/spinlock.h>
 #include <linux/string.h>
+#include <linux/string_choices.h>
 #include <linux/types.h>
 #include <linux/usb.h>
 #include <linux/usb/typec.h>
@@ -733,7 +734,7 @@ static int tcpm_set_vconn(struct tcpc_dev *dev, bool on)
 
 	mutex_lock(&chip->lock);
 	if (chip->vconn_on == on) {
-		fusb302_log(chip, "vconn is already %s", on ? "On" : "Off");
+		fusb302_log(chip, "vconn is already %s", str_on_off(on));
 		goto done;
 	}
 	if (on) {
@@ -746,7 +747,7 @@ static int tcpm_set_vconn(struct tcpc_dev *dev, bool on)
 	if (ret < 0)
 		goto done;
 	chip->vconn_on = on;
-	fusb302_log(chip, "vconn := %s", on ? "On" : "Off");
+	fusb302_log(chip, "vconn := %s", str_on_off(on));
 done:
 	mutex_unlock(&chip->lock);
 
@@ -761,7 +762,7 @@ static int tcpm_set_vbus(struct tcpc_dev *dev, bool on, bool charge)
 
 	mutex_lock(&chip->lock);
 	if (chip->vbus_on == on) {
-		fusb302_log(chip, "vbus is already %s", on ? "On" : "Off");
+		fusb302_log(chip, "vbus is already %s", str_on_off(on));
 	} else {
 		if (on)
 			ret = regulator_enable(chip->vbus);
@@ -769,15 +770,14 @@ static int tcpm_set_vbus(struct tcpc_dev *dev, bool on, bool charge)
 			ret = regulator_disable(chip->vbus);
 		if (ret < 0) {
 			fusb302_log(chip, "cannot %s vbus regulator, ret=%d",
-				    on ? "enable" : "disable", ret);
+				    str_enable_disable(on), ret);
 			goto done;
 		}
 		chip->vbus_on = on;
-		fusb302_log(chip, "vbus := %s", on ? "On" : "Off");
+		fusb302_log(chip, "vbus := %s", str_on_off(on));
 	}
 	if (chip->charge_on == charge)
-		fusb302_log(chip, "charge is already %s",
-			    charge ? "On" : "Off");
+		fusb302_log(chip, "charge is already %s", str_on_off(charge));
 	else
 		chip->charge_on = charge;
 
@@ -854,16 +854,16 @@ static int tcpm_set_pd_rx(struct tcpc_dev *dev, bool on)
 	ret = fusb302_pd_set_auto_goodcrc(chip, on);
 	if (ret < 0) {
 		fusb302_log(chip, "cannot turn %s auto GCRC, ret=%d",
-			    on ? "on" : "off", ret);
+			    str_on_off(on), ret);
 		goto done;
 	}
 	ret = fusb302_pd_set_interrupts(chip, on);
 	if (ret < 0) {
 		fusb302_log(chip, "cannot turn %s pd interrupts, ret=%d",
-			    on ? "on" : "off", ret);
+			    str_on_off(on), ret);
 		goto done;
 	}
-	fusb302_log(chip, "pd := %s", on ? "on" : "off");
+	fusb302_log(chip, "pd := %s", str_on_off(on));
 done:
 	mutex_unlock(&chip->lock);
 
@@ -1531,7 +1531,7 @@ static void fusb302_irq_work(struct work_struct *work)
 	if (interrupt & FUSB_REG_INTERRUPT_VBUSOK) {
 		vbus_present = !!(status0 & FUSB_REG_STATUS0_VBUSOK);
 		fusb302_log(chip, "IRQ: VBUS_OK, vbus=%s",
-			    vbus_present ? "On" : "Off");
+			    str_on_off(vbus_present));
 		if (vbus_present != chip->vbus_present) {
 			chip->vbus_present = vbus_present;
 			tcpm_vbus_change(chip->tcpm_port);
@@ -1562,7 +1562,7 @@ static void fusb302_irq_work(struct work_struct *work)
 	if ((interrupt & FUSB_REG_INTERRUPT_COMP_CHNG) && intr_comp_chng) {
 		comp_result = !!(status0 & FUSB_REG_STATUS0_COMP);
 		fusb302_log(chip, "IRQ: COMP_CHNG, comp=%s",
-			    comp_result ? "true" : "false");
+			    str_true_false(comp_result));
 		if (comp_result) {
 			/* cc level > Rd_threshold, detach */
 			chip->cc1 = TYPEC_CC_OPEN;
diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
index 726423684bae0a690bd20547313704b7d2f4cfdc..18303b34594bbf6f43d1138177c4ab58f0dec395 100644
--- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
+++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
@@ -12,6 +12,7 @@
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/usb/pd.h>
 #include <linux/usb/tcpm.h>
 #include "qcom_pmic_typec.h"
@@ -418,7 +419,7 @@ static int qcom_pmic_typec_pdphy_set_pd_rx(struct tcpc_dev *tcpc, bool on)
 
 	spin_unlock_irqrestore(&pmic_typec_pdphy->lock, flags);
 
-	dev_dbg(pmic_typec_pdphy->dev, "set_pd_rx: %s\n", on ? "on" : "off");
+	dev_dbg(pmic_typec_pdphy->dev, "set_pd_rx: %s\n", str_on_off(on));
 
 	return ret;
 }
diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c
index df79059cda6755d4de35b7239fadc2dff2e699b1..8fac171778daf471fe4d03de8cc4f9c7ce1f323b 100644
--- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c
+++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c
@@ -12,6 +12,7 @@
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/usb/pd.h>
 #include <linux/usb/tcpm.h>
 #include "qcom_pmic_typec.h"
@@ -38,7 +39,7 @@ static int qcom_pmic_typec_pdphy_stub_set_pd_rx(struct tcpc_dev *tcpc, bool on)
 	struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
 	struct device *dev = tcpm->dev;
 
-	dev_dbg(dev, "set_pd_rx: %s\n", on ? "on" : "off");
+	dev_dbg(dev, "set_pd_rx: %s\n", str_on_off(on));
 
 	return 0;
 }
diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c
index c37dede62e12cd8a105da108838b5ca4f5e632d7..4fc83dcfae643e7a8b8e89ac6e6f5a9aaba3f65b 100644
--- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c
+++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c
@@ -13,6 +13,7 @@
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/usb/tcpm.h>
 #include <linux/usb/typec_mux.h>
 #include <linux/workqueue.h>
@@ -562,7 +563,8 @@ static int qcom_pmic_typec_port_set_vconn(struct tcpc_dev *tcpc, bool on)
 	spin_unlock_irqrestore(&pmic_typec_port->lock, flags);
 
 	dev_dbg(dev, "set_vconn: orientation %d control 0x%08x state %s cc %s vconn %s\n",
-		orientation, value, on ? "on" : "off", misc_to_vconn(misc), misc_to_cc(misc));
+		orientation, value, str_on_off(on), misc_to_vconn(misc),
+		misc_to_cc(misc));
 
 	return ret;
 }
diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
index fcf2d7902352c447651f30610d59fef2471f3124..ef2cec386d965512c64e8b7e640199e10bb7bc94 100644
--- a/drivers/usb/typec/tcpm/tcpm.c
+++ b/drivers/usb/typec/tcpm/tcpm.c
@@ -21,6 +21,7 @@
 #include <linux/seq_file.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
+#include <linux/string_choices.h>
 #include <linux/usb.h>
 #include <linux/usb/pd.h>
 #include <linux/usb/pd_ado.h>
@@ -892,8 +893,8 @@ static int tcpm_enable_auto_vbus_discharge(struct tcpm_port *port, bool enable)
 
 	if (port->tcpc->enable_auto_vbus_discharge) {
 		ret = port->tcpc->enable_auto_vbus_discharge(port->tcpc, enable);
-		tcpm_log_force(port, "%s vbus discharge ret:%d", enable ? "enable" : "disable",
-			       ret);
+		tcpm_log_force(port, "%s vbus discharge ret:%d",
+			       str_enable_disable(enable), ret);
 		if (!ret)
 			port->auto_vbus_discharge_enabled = enable;
 	}
@@ -4439,7 +4440,7 @@ static void tcpm_unregister_altmodes(struct tcpm_port *port)
 
 static void tcpm_set_partner_usb_comm_capable(struct tcpm_port *port, bool capable)
 {
-	tcpm_log(port, "Setting usb_comm capable %s", capable ? "true" : "false");
+	tcpm_log(port, "Setting usb_comm capable %s", str_true_false(capable));
 
 	if (port->tcpc->set_partner_usb_comm_capable)
 		port->tcpc->set_partner_usb_comm_capable(port->tcpc, capable);

-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250114-str-enable-disable-usb-v1-3-c8405df47c19%40linaro.org.
