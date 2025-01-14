Return-Path: <usb-storage+bncBCB6X76TWIIRBXWMTO6AMGQE7FRIXPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EE6A1142B
	for <lists+usb-storage@lfdr.de>; Tue, 14 Jan 2025 23:34:07 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-4678f97242fsf160681191cf.0
        for <lists+usb-storage@lfdr.de>; Tue, 14 Jan 2025 14:34:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736894046; cv=pass;
        d=google.com; s=arc-20240605;
        b=ZYtwJCcTvbXOTEHttODKq9NOPF5W+xSRn0YyD5fnwnYWZ4OrpFSG52BkCBeq3CwDJc
         71tJNpm45SJFtV9UDkRtXKSC/gCIqu7VqaqZk8W5VMNRgYgCBa4ow96BIOrlQbGoFzJo
         gv2FOilrf0TEu0hf0u1HetEktvr3XaHnJ36nLXHjCaX2DTBa2tBby6hr2mpt+eyhc23A
         8DYExgsgqSzvvLuisipX0y5df8pxFxCd9eHE7cldb91uWjJoyKwV0BYNtsBgh0O3mf67
         RguaYTA2HEENeZ8v3oQxHQ9yCEnVK04IbFb5eV7rVDuHaxn5Dp6cOsDW1FyolHNHa6nO
         Vulg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references
         :message-id:mime-version:subject:date:from:sender:dkim-signature;
        bh=PbG71TXHRF88dfZss74n4gQhxZCmbYb6X4Jh1k2K2Bk=;
        fh=NRZ7Nw+0iACz8FdnxaJoxNZIexDaZZ32FS4WA3kdkZo=;
        b=bbjE2Cfgodlj4KYEb1k8mYc+ApbMw6IQ5tf5XIhfC5Rz+Y7bexFgdrFGHm9ib8mgp2
         VMBkpum8DCYyELl1czlePx+OhJaSY5BHd3E8MPjB0tVTHLEOWkJmHqJG65eSBLOIB8wJ
         Zi0qPi5JsMKWHTf3t+2JWSvBL3PICTPj6IDyYgPkEfls4ILb59kYCEuyrb5FAH87aGJC
         I+Hnxg40OWFV1wFUcs06iida4COaOw4XbkjPTSBj//etJsBCJ1eujMEbaIUrjbBOJDb3
         dUwv6NbtmzSG9I+j441tOk46R5755NFsJkyeMDCZVgaFENWAo/Jt/HAtEgrokED56QRa
         d6wg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="QKM9+3m/";
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
        bh=PbG71TXHRF88dfZss74n4gQhxZCmbYb6X4Jh1k2K2Bk=;
        b=Ym6irZraK4YF9o7WE1442ujmtL4SHyAZl6wxaj4PJxAjZ42nQJeka+CjPiWyAE8I8h
         OSvI8p2PL7sGL6aB6GM5DUUOCcJuN/kY1njNi1DrQGZ3HdBcSkC8YId0ztPUQnYkswn2
         hIa5SswOZ6+nl/+RWU+Yhlmkj2JeDxssfeKBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736894046; x=1737498846;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:in-reply-to:references:message-id
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=PbG71TXHRF88dfZss74n4gQhxZCmbYb6X4Jh1k2K2Bk=;
        b=XE7LuagvxXf8zQsfdzv1EJBKapDv9gJm/8TgMbgn8uN7nlXSNPWYJqEMu5z16fIbKf
         5FqLO1L7Nc6LPfY2piFig7wGLrgJXlK4SYhpTJk2kchdEotz0hy5oY1sf1vnAigZj/ha
         YPI2oY7DVFIlxr9atLEpAU/39hUVkFI6Qtscef4Xxog1AvWxdAXsnpQZQhs2ozJ0CTML
         P6Ozpp1SMMF1e4R8bvGUOQklpg1mNcJoQHsYiMvGn0ZvRMFhT6j/axqIbWqGmBpluw5f
         Iq75fxpJPE1H4Owwf3XiQ2DX+sqXMwFboyO5FOBGPIl3gr+/rq2rMtIj/UJrpH2tGYjQ
         0emQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWnBmg12wt6VHudpTeM5ey1MJp2Fb9rGOQK8t+weI6XbFRzahQOQbuVURD+Uhd/1+LwVZC0AA==@lfdr.de
X-Gm-Message-State: AOJu0Yxems2RTylh7AI6vw1lu45j47zcDTienR6ZYWM9xOZ+rB4Ts71t
	YH40FTUMxVxUhPLhM9RiUrH/0uS2RFIEOj1buVZZpkZSYybV37j8HKD9IYWM3SU=
X-Google-Smtp-Source: AGHT+IGHSUAw9FW2NMG+LDFAr5ItcNGIrdAWwNBa/XiLO6JMMb03PuHMYtQNINyXSy/h7pIu2pPDtg==
X-Received: by 2002:ac8:7d12:0:b0:46a:1932:b07f with SMTP id d75a77b69052e-46c7107ebeemr423771671cf.39.1736894046189;
        Tue, 14 Jan 2025 14:34:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:5814:b0:46b:2e03:7b85 with SMTP id
 d75a77b69052e-46c7ab7e487ls74067791cf.2.-pod-prod-04-us; Tue, 14 Jan 2025
 14:34:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWOodzCLPLfu2sCJC9SK0B2hhhvfPJzRB9ubrAY8ftWOMN/3PR3TcGgu49vhmPcTa/Lzkr0CxXpQ1+UeA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:178b:b0:7b6:7a87:744a with SMTP id af79cd13be357-7bcd9729f9cmr4369975085a.5.1736894045716;
        Tue, 14 Jan 2025 14:34:05 -0800 (PST)
Received: by 2002:a05:620a:5649:b0:7b6:d314:a4e5 with SMTP id af79cd13be357-7bce9daadaams85a;
        Tue, 14 Jan 2025 12:05:51 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUdwTCJGxClW5iWvQmOist7V6kDzbskjL0apBn5PgN1FPUXI3FO5/WnQT/e+lhOf8BSzKbNxXgdPr6D+w==@lists.one-eyed-alien.net
X-Received: by 2002:a5d:598b:0:b0:38a:5ce8:df6d with SMTP id ffacd0b85a97d-38a872fb0eemr22369776f8f.1.1736885149375;
        Tue, 14 Jan 2025 12:05:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736885149; cv=none;
        d=google.com; s=arc-20240605;
        b=lJE1dYTM9GobiP4TC1ZMXb4ewUZICZ07QgGfIBsFavJWkmmJwHvgXtb3XVeBsHE++D
         GTvJRUSO8kof4kBlE1cGCW7GS4uN4ecoBR/QiuH0Z3WJ5F9oeNg/JGeDRtfMMfX8/dKD
         dHzcbd1W9yS1C9RO7po5LAPsOwkNdxu9HxpJXVZYQYploNTbqC6S7UReGlK+AOCO7gdo
         gDCfQ3c4Xs/L0QeJTO9LFxoCQ5Uv5WMDoFUR7xt3zzIENKQcYE0rXIlB0Tip95FsOFaN
         KCcZY32TZHZKeuZwKnDI+EseE9sZAU5B/2S26yGZ/+eh6CnwYJFjrXQoJwoKgAFkQqwk
         6vTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:dkim-signature;
        bh=3qM/tcI7j/OfvD0CcvoyLKgC3FnLS8o6FdfzDJsqGic=;
        fh=Y+bpRj2btr3G9ZjJaOOg0xUOdJdf5nnFR3rk3coz6Mc=;
        b=HqJQRyL+Aqi6cVQh76qWMq5xIAIsDZtitMksmfSfcRw4PGtoUH0JxuaiGeljnKTjnU
         Grw6dVnmIth85AwwtAcomhYlKb2TmH5aefyU9NOruF4d5vywkEaNIhzz7AKnz2fLc9rz
         dNzcV5qrqkx3q88N0jR8MHnLNq6vI81AIvjUaL9xV/HpvI1nlKQSVhXBhqsWadcGSV97
         sLuUYRoKES9UwDEw62cXefwEwUliR7t1SWdC+CdOHXlJ5YC5izMKVsBOCGOSvD+dWkLV
         W/c84Ly088nUnAAXZTYDO+UF4TQPB/mqFFUJlzuxSAjUM8n0D4u5Slv7VVJAKcEgS09n
         Y1Pg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="QKM9+3m/";
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 5b1f17b1804b1-436ed45ac40sor19163895e9.2.2025.01.14.12.05.49
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 14 Jan 2025 12:05:49 -0800 (PST)
Received-SPF: pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCU06HJJsrOOLPMdEN51pvB+QK6U1Slx3rKI+7Jv9Fu5KBeo+weVupEg98K5QvKFxQZ3wH5bR3ZEIpM9GQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncuf5b8v20i16Vlk+usWCj6gi8tiAWXODz1ol5ORqxwzjWG9OKX5Xjh0l3KGd+Q
	xqpB7Y3BhQKxMChEOuPeOGsjiwO+8PTALfp5IvnkkLH1N5V4fjoKDu6+4HP1zKjJnrPywO7pp+n
	+GcBusTqLK4EgbbS7Jblx7f0ljGMtuCQ9pzdEDYn4uhGahk82ZOqlG69ZhLTJx0VhZFcUJEsIWD
	IjasFwOEmENjdCy3G14bZ4OFUtiDnos1jGpX0Pfv8mB2p7wppaGunJIiwCmeBnP2gWDHDBd
X-Received: by 2002:a05:600c:3b08:b0:42c:c0d8:bf49 with SMTP id 5b1f17b1804b1-436e2560720mr96739485e9.0.1736885148916;
        Tue, 14 Jan 2025 12:05:48 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e9dc8802sm184622025e9.10.2025.01.14.12.05.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 12:05:48 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 14 Jan 2025 21:05:35 +0100
Subject: [usb-storage] [PATCH 2/6] USB: host: Use str_enable_disable-like helpers
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Message-Id: <20250114-str-enable-disable-usb-v1-2-c8405df47c19@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5423;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=6gsuWbH88x9KgXoI5TgmCdvl5bUYE9XYTxx1EDNabmI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnhsOStoOcTYIheQheuxTvcNt6qNGqwgv4Mrucb
 HQfcC8AoGiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ4bDkgAKCRDBN2bmhouD
 116uD/4pUHkYVwXjtXupkx4piF1QjTdJqIeQMmpgViZX1SSVvola2wMqHd7L0mTS4axfqr/Rwj/
 WI+LNzEX+tbz1FbtSpXuk5xAy9hn1u536wKGFprj/qinJIqZ6UykfwOE5xhpFjft8Bv8B116enk
 KsmoVSqZhtX9JJak44+tbXuPRRJAfBME/2p7hDNhoJ+gxeh8VNHcGo4Mf1cGg+5b17gStjlogF0
 yz56HV6XS4C+UIdtu6nlwUyoCJfqJRmJd90J1zCgX8LdigNU9lA4DYnfHg1mVQQBV7mO7TTD5qv
 RxZN40B7NtpGvXpXZgOOE3dpeupV9KmSPnVaCiErynSUpwojakhIpYJsCs9Wwihu+gmSvPiCT10
 p8ycLvxfEtXiGbWF+fM8lQQlELVofXa3wmI37ipCMZTc5t4XXzFYeQJI+glL+S1gOE06OMVpuFC
 N5WMZjELYyp3W3/O0KLYMqJ0MogG/eF6wa3bY/9l0Z7qh8A+iX90PZJ28INhPhwo1QFW9K3rriR
 0RlJBemWOA+xMFxBHOqZKcY9H9Z0M2GrDjqH6nzMnst7hrJFdzwhb2EJWzd+3APBWLENlXhY6ZA
 z8VxayvKVWQmB+J5Q0BjIEYorPzk1EEMJvgO9X36XpRXQHG7YmpYtluPO6QnQfP6wr8QRgWa5Ol
 TxWH79PhGdn8YTg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Original-Sender: krzysztof.kozlowski@linaro.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="QKM9+3m/";       spf=pass
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
 drivers/usb/host/oxu210hp-hcd.c | 3 ++-
 drivers/usb/host/sl811-hcd.c    | 3 ++-
 drivers/usb/host/xhci-ring.c    | 5 +++--
 drivers/usb/host/xhci-tegra.c   | 5 +++--
 drivers/usb/host/xhci.c         | 3 ++-
 5 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/host/oxu210hp-hcd.c b/drivers/usb/host/oxu210hp-hcd.c
index a6c20facf9450153121001d36547eee68d6c9ca9..fce800ba4c614ca0ccf23b5af0c0b13423e2a95d 100644
--- a/drivers/usb/host/oxu210hp-hcd.c
+++ b/drivers/usb/host/oxu210hp-hcd.c
@@ -15,6 +15,7 @@
 #include <linux/ioport.h>
 #include <linux/sched.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/errno.h>
 #include <linux/timer.h>
 #include <linux/list.h>
@@ -2756,7 +2757,7 @@ static void ehci_port_power(struct oxu_hcd *oxu, int is_on)
 	if (!HCS_PPC(oxu->hcs_params))
 		return;
 
-	oxu_dbg(oxu, "...power%s ports...\n", is_on ? "up" : "down");
+	oxu_dbg(oxu, "...power%s ports...\n", str_up_down(is_on));
 	for (port = HCS_N_PORTS(oxu->hcs_params); port > 0; ) {
 		if (is_on)
 			oxu_hub_control(oxu_to_hcd(oxu), SetPortFeature,
diff --git a/drivers/usb/host/sl811-hcd.c b/drivers/usb/host/sl811-hcd.c
index 036f5fd6d159feee18f3be187c6bc9d5ea59dc4f..fa2e4badd288c0d355b121f27e9d9b5460fa4e7c 100644
--- a/drivers/usb/host/sl811-hcd.c
+++ b/drivers/usb/host/sl811-hcd.c
@@ -48,6 +48,7 @@
 #include <linux/usb/hcd.h>
 #include <linux/platform_device.h>
 #include <linux/prefetch.h>
+#include <linux/string_choices.h>
 #include <linux/debugfs.h>
 #include <linux/seq_file.h>
 
@@ -98,7 +99,7 @@ static void port_power(struct sl811 *sl811, int is_on)
 	if (sl811->board && sl811->board->port_power) {
 		/* switch VBUS, at 500mA unless hub power budget gets set */
 		dev_dbg(hcd->self.controller, "power %s\n",
-			is_on ? "on" : "off");
+			str_on_off(is_on));
 		sl811->board->port_power(hcd->self.controller, is_on);
 	}
 
diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index 3d66ed240dc375af3d51a7c6bcb1970efc7ecd49..965bffce301e24502310fd4a848ede01e1348530 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -55,6 +55,7 @@
 #include <linux/jiffies.h>
 #include <linux/scatterlist.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/dma-mapping.h>
 #include "xhci.h"
 #include "xhci-trace.h"
@@ -3441,8 +3442,8 @@ static void check_interval(struct urb *urb, struct xhci_ep_ctx *ep_ctx)
 	if (xhci_interval != ep_interval) {
 		dev_dbg_ratelimited(&urb->dev->dev,
 				"Driver uses different interval (%d microframe%s) than xHCI (%d microframe%s)\n",
-				ep_interval, ep_interval == 1 ? "" : "s",
-				xhci_interval, xhci_interval == 1 ? "" : "s");
+				ep_interval, str_plural(ep_interval),
+				xhci_interval, str_plural(xhci_interval));
 		urb->interval = xhci_interval;
 		/* Convert back to frames for LS/FS devices */
 		if (urb->dev->speed == USB_SPEED_LOW ||
diff --git a/drivers/usb/host/xhci-tegra.c b/drivers/usb/host/xhci-tegra.c
index 06ae193ec87407f13487556862c9caf03f51b786..a51ce71a6a77eb7ce5308669624c7b8bb735e382 100644
--- a/drivers/usb/host/xhci-tegra.c
+++ b/drivers/usb/host/xhci-tegra.c
@@ -26,6 +26,7 @@
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/usb/otg.h>
 #include <linux/usb/phy.h>
 #include <linux/usb/role.h>
@@ -724,7 +725,7 @@ static void tegra_xusb_mbox_handle(struct tegra_xusb *tegra,
 		if (err < 0) {
 			dev_err(dev,
 				"failed to %s LFPS detection on USB3#%u: %d\n",
-				enable ? "enable" : "disable", port, err);
+				str_enable_disable(enable), port, err);
 			rsp.cmd = MBOX_CMD_NAK;
 		} else {
 			rsp.cmd = MBOX_CMD_ACK;
@@ -1349,7 +1350,7 @@ static void tegra_xhci_id_work(struct work_struct *work)
 	u32 status;
 	int ret;
 
-	dev_dbg(tegra->dev, "host mode %s\n", tegra->host_mode ? "on" : "off");
+	dev_dbg(tegra->dev, "host mode %s\n", str_on_off(tegra->host_mode));
 
 	mutex_lock(&tegra->lock);
 
diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index 5ebde8cae4fc44cdb997b0f61314e309bda56c0d..45653114ccd7fcc4a1c6872e749c660d4cab705f 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -17,6 +17,7 @@
 #include <linux/module.h>
 #include <linux/moduleparam.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/dmi.h>
 #include <linux/dma-mapping.h>
 
@@ -4523,7 +4524,7 @@ static int xhci_set_usb2_hardware_lpm(struct usb_hcd *hcd,
 	hlpm_addr = ports[port_num]->addr + PORTHLPMC;
 
 	xhci_dbg(xhci, "%s port %d USB2 hardware LPM\n",
-			enable ? "enable" : "disable", port_num + 1);
+		 str_enable_disable(enable), port_num + 1);
 
 	if (enable) {
 		/* Host supports BESL timeout instead of HIRD */

-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250114-str-enable-disable-usb-v1-2-c8405df47c19%40linaro.org.
