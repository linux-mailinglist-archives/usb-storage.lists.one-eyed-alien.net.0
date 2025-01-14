Return-Path: <usb-storage+bncBCB6X76TWIIRBZGMTO6AMGQEQVFFGNQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 84164A1142D
	for <lists+usb-storage@lfdr.de>; Tue, 14 Jan 2025 23:34:13 +0100 (CET)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-467a4f0b53bsf188664891cf.3
        for <lists+usb-storage@lfdr.de>; Tue, 14 Jan 2025 14:34:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736894052; cv=pass;
        d=google.com; s=arc-20240605;
        b=aJtn2qyUL3w5ZfNwhF3vmNwsAz3vZZAYDEmvINfwk518Uiv2l8GNvZJcdSqTqjPaus
         97FaId1FSAprUfS54MeOiPXJQxkDcivAYCwTz0dQAXjIFixNblJd12+Iw1jh0rztTfRt
         pSWFMrUQ16kXJrWZ85V8rIyStypiq/wJhB0AU+tVoAbThjBvM8yBBv/8g6BL54Mv7LVv
         ML6LArIrBM/QFfb0qnNWPU8qGS9puuvDk7ul5IB+isY2sZUVmxJsgkQ2U5N7KSaXiCy6
         AiST+dUqibOIBHz4aZuWRGw2yt5izDoCoO0kMeEMmzjIGKta4IxZnV8zYzc8foCD8geQ
         VRsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references
         :message-id:mime-version:subject:date:from:sender:dkim-signature;
        bh=KzRAlvNM90q1Q2zqDK4inhUVLJWtM8SEXUIlW/EO4to=;
        fh=AN80XXgelPOCE7rP6UOVo6rrz/9ZkBsF8X6fSUi3yPI=;
        b=YJnigBVQ1z69PKKvIIf0/rpbHrpRyQoWbnhnj2iqD6+v3vBleEQ+7F1fGfti85gsbV
         CMXWVMYh3ftk7Ei+Uy2qP9EwWTLP58XhLKTGGKMyNZMeSV70JNTSEG13hPVZnozIxS4r
         FBzl7nD506EoLu0kEaL6lTANudqBocG9Ta+o6ORhNsEOJRXt41MVxrvKo/0V4/gsWQi+
         7p1T/G0+KfM5pdxCvKRC+1GWGoMN1zlMZziRSS6KZygcQk7GLQ0qMS3mnuVVyJApPoU1
         9qozxpvFdf9CU5Kkg8ac/RMbHMGnyISNn/yuQ9el5pgvxqgDMUOQAJy72x8dc3bsZMWB
         JQwg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YLAPt3ki;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736894052; x=1737498852; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:in-reply-to:references:message-id
         :mime-version:subject:date:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KzRAlvNM90q1Q2zqDK4inhUVLJWtM8SEXUIlW/EO4to=;
        b=aj91ETV1ADQmzZyzbwIp1tnE5CAEZOyMwyrhaJ7ZZhxWeO2yLZQlxMxtM0toEhQfW4
         UJ+x+YDv8DUXFBJ773+eChzQq4IBYkuBSsO36TppyrBeJKRPnWIu9DB59Cv4PLMZUY4D
         bAeudwo3IzZhdXTXnZYI6YJk1siaa6JuXkKBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736894052; x=1737498852;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:in-reply-to:references:message-id
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=KzRAlvNM90q1Q2zqDK4inhUVLJWtM8SEXUIlW/EO4to=;
        b=BJIJGhv5SrUZtx9Vl0Eb2CWR3nf7S7DfHNICVKZzeadh9xfKEhcerQkOZphFa9tnji
         pcX1lWb6XHXmlw2Z8V4RM7YsEyQcgG4yQfBv1yjM3PNmkcaxTDAXa7VnkuVcmnLv3Gbz
         9p6ziJt0r+7ud4BnkDO5OYzN4EKfvyCuee0z/ymmUL6delGMx6W/0T+mUNUr04m5KS8r
         Zxluz7PNCUeWHP11+kjeAIvjPiUFL1a8FfEiUq668GOGENpsK9K7KlfCk7161/97h/Kj
         yfhnv6iv9yYrNw6ye4Z+MwkP2XnHq/ryEq3eLYzIHghC1K6XcRgRKHijblwwDCjJ1Sfh
         yfLA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVhA1KuAuri7hE0p+ugkR8pdintn2I/w/qM3HNRL4WzM7rExnOVgkn4xD16zeNGEICa7KRu3Q==@lfdr.de
X-Gm-Message-State: AOJu0Yx4hI+PyJUDQwrrBLwxEX+uU9YpCv3TYyTMPSRgKmKw4OgZjZ/f
	ov6jve2Y53f4nQGgZReD6vAihJgoPld7Wiia+gjZUcpLL2OXNRnbAYTjS9spbu8=
X-Google-Smtp-Source: AGHT+IHP8ERh02gjUbiV/d4BTlygtIHK9hio06sM498Kb4vI0rcOJpjpD/adGhgFCmcP0vFUONs0Xw==
X-Received: by 2002:a05:622a:1a0d:b0:467:7cda:9388 with SMTP id d75a77b69052e-46c7102ff29mr470590141cf.31.1736894052396;
        Tue, 14 Jan 2025 14:34:12 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:53c4:b0:6d9:188d:1886 with SMTP id
 6a1803df08f44-6dfa37d6130ls74344206d6.2.-pod-prod-04-us; Tue, 14 Jan 2025
 14:34:11 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUYj1Tg7VhGHA8CMEEpCndq7B5l2GKz2M1YFKIl+A5yg8uTDJexgNmF14mPdpXv5JB0n6NPOYghhx1o8w==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:1aa7:b0:7b6:e20d:2b55 with SMTP id af79cd13be357-7bcd97b1aa0mr4332148185a.41.1736894051796;
        Tue, 14 Jan 2025 14:34:11 -0800 (PST)
Received: by 2002:a05:620a:3944:b0:7b6:67a8:4fcd with SMTP id af79cd13be357-7bce9dbb048ms85a;
        Tue, 14 Jan 2025 12:05:58 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWaYSbKRK5J0CRt4SG+v1T5h8mH8qhY1WksTycua+pUwytyCq8ibwML1PJNlVl3r+cuQGh6TF0+E4TNQw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:468a:b0:434:a968:89a3 with SMTP id 5b1f17b1804b1-436e26a78a5mr200148235e9.9.1736885156455;
        Tue, 14 Jan 2025 12:05:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736885156; cv=none;
        d=google.com; s=arc-20240605;
        b=LbtuiXVV2ykfw8h1bdcJb7aQ8fAVsrCVSwTQ7YbbpJfsyeK4N+xNFmmy7mdsZnkVFA
         6b0SRxQpCdDqujBAwbHul/DgiwK015ipmeEVGI4/ixAn16EadIsRTvhsbsHJsAl7zL84
         /NVd2e4/7es9RSm/auvq28d1YJ3k0NtBtZ0OmHPK4LWX8xeUIz8npn9Bu67IniVuN3qF
         sa3V0h45JOOIum5DbziQKVnGQBbUWLcpVJpLhqV9LEGcmCc3xkITjDW6GLaWkIpgcz22
         uwk5Zq7PKH6ZAH0m9p0lIY0mzjd/JKQeZ4rcFpfQjG6AuFx9ofCzARzN1IcHk5jhgosY
         lP4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:dkim-signature;
        bh=TTD6x1Lk041c+VoW0XQVNqPy/PU8FV8OyNgCvVmY2nI=;
        fh=XvuzlD5tak1tPzt45wZzPtCmMm50NBoxmrHjNaBjyu0=;
        b=MUvbAMxQOLIl00gtfjeWmjzEnV+m8DLAxrkzl3zreTzZ8NfPzecvIvFaqxGv2Aa4/F
         heRcJFGBqoo45vvC+Sl2zdks2c58u/xITp9sX1YlxDcskrVCEmTW7jiB4yYK71logUAj
         401J5zMPQwp9TGkg7iPgcs9DDliTnarU2tzvK8I4egeirZnG4Df97sCAf+2twJfcVqQj
         BiP/3Z6f6zPqH05FvtZ+EsRBP7fv9F4ULPmSwueWm0vJfsD1i2Ohrw9/TNt8HZkeJKAl
         vh9fFFmTiyrKEyxtFo3eMrGI7tmRY/jx9c7aZjhIDo74+oyfPeCi7z4EhfdOkbMFmw4j
         Rd2A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YLAPt3ki;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id ffacd0b85a97d-38a8e391718sor1639517f8f.0.2025.01.14.12.05.56
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 14 Jan 2025 12:05:56 -0800 (PST)
Received-SPF: pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXrC5BvkJ8oSeNIMdIchR09v5hHXunNVPGwDSlvWhfsvfTgmJauhw/ZwnJOD8ongqROYTNGOZL9hl0siw==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncvsCTroduzmkQolsNLiNUZR+GCadP6JVUGnMaldRl3h4p9JFyxhyalUJ+AxT8m
	3fkIhB+UgHMR6groCvSADjVzzc7poMoDi96TSM+GjWDhaCQ76GIfhPyjTRq2VFH6G3jZ19wwGPm
	ed2Yp77xwFTFLmd+A0CPYXRcnUtc7q1aU1lgJ6V9DRBm99Vez2vxOMwhhKPL1OTSgkzIwGhXHwR
	U8ck1rrcsQcn9jYttrjxsboYUNmZIDOnJtqxdUFMAjKykZlcJPl6N1U108n0l5N4pjpDVG3
X-Received: by 2002:adf:9ccd:0:b0:38a:5557:7677 with SMTP id ffacd0b85a97d-38a872e161dmr7612204f8f.5.1736885155913;
        Tue, 14 Jan 2025 12:05:55 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e9dc8802sm184622025e9.10.2025.01.14.12.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 12:05:55 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 14 Jan 2025 21:05:38 +0100
Subject: [usb-storage] [PATCH 5/6] USB: gadget: Use str_enable_disable-like helpers
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Message-Id: <20250114-str-enable-disable-usb-v1-5-c8405df47c19@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=10986;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=ChnARzU8vkZ4N8/sOQo0Ix2BDfajX6xlMScKMcecQCo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnhsOUr4DH74j1XH0iJ+MUvhAzl6rXxBkoviRuh
 xhBDndCrD2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ4bDlAAKCRDBN2bmhouD
 1xigD/9uO2A+K9X0l9z0fBURd0QHpksk5JEq9mdkT/Eotp4sPG9oTB1mL4QvKsIkKwHjHHZ7PT2
 hujen0zuhWUDLbnwOAmDlS9Qlr5j5RdUOTW5ua36V1fFyCs11eeBegKf8jfe8jS1H7BFgMBm7B0
 9qmpzfRTnjW6PpuD0gz0WmFKrxGUsDPkJWVOP+96+hdW4rPz5FEnbdXlbKmULDqp03Pq8OSGbOJ
 eOiVtSmqR1CZthgT47JRgufY5LIG/ZekfqD1eGToTeWX7J3HuNTQdUtATiG8g8v8djikaZxS4nv
 02bigHcvqTpRO1HCmY9/rpz9tonb/mryOTFnWuloA/e6LDuBAJ/DR4phr9F+P2170GYxO3aDkPJ
 3JUbFlnsfdg4LRXyqteXvGlN/jg1IKR/Dm5vvWRqZ91ke5odvDAGhRrVplUFXfACEXO0WX54eEh
 lGzup+iWi6CmWs1ZJSE7NCilxzF2Jb0UEpi/b6OeRZwaHoCfTzsmGa3GQEkmmLXbfohrc6TiTqf
 CJ1lKguZ8PeHU7y2OwlE7IVeVhlhTC5c4AtONfmHnk9Gkv1hoIW0/1TK15Y4skTAE7ZfV7lV1XR
 E63O5dIXpabPWDRxosZnAwVYEtlHxp4ysuLa1XPj0dFl6lkPP8DHnLsqIPZ53dhseGezkL3rp49
 VpAd+QxCNWc+iPA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Original-Sender: krzysztof.kozlowski@linaro.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=YLAPt3ki;       spf=pass
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
 drivers/usb/gadget/function/f_ecm.c         |  4 ++--
 drivers/usb/gadget/function/f_ncm.c         |  3 ++-
 drivers/usb/gadget/function/u_serial.c      |  3 ++-
 drivers/usb/gadget/legacy/inode.c           |  3 ++-
 drivers/usb/gadget/udc/aspeed-vhub/hub.c    |  3 ++-
 drivers/usb/gadget/udc/at91_udc.c           |  3 ++-
 drivers/usb/gadget/udc/cdns2/cdns2-gadget.c | 13 +++++++------
 drivers/usb/gadget/udc/dummy_hcd.c          |  3 ++-
 drivers/usb/gadget/udc/fsl_udc_core.c       |  3 ++-
 drivers/usb/gadget/udc/omap_udc.c           |  3 ++-
 drivers/usb/gadget/udc/pxa27x_udc.c         |  3 ++-
 11 files changed, 27 insertions(+), 17 deletions(-)

diff --git a/drivers/usb/gadget/function/f_ecm.c b/drivers/usb/gadget/function/f_ecm.c
index 6cb7771e8a692dbf555d65f4b3699b2a62c85cec..80841de845b09129564cb6d1b7710f8b76174292 100644
--- a/drivers/usb/gadget/function/f_ecm.c
+++ b/drivers/usb/gadget/function/f_ecm.c
@@ -13,6 +13,7 @@
 #include <linux/module.h>
 #include <linux/device.h>
 #include <linux/etherdevice.h>
+#include <linux/string_choices.h>
 
 #include "u_ether.h"
 #include "u_ether_configfs.h"
@@ -387,8 +388,7 @@ static void ecm_do_notify(struct f_ecm *ecm)
 		event->wLength = 0;
 		req->length = sizeof *event;
 
-		DBG(cdev, "notify connect %s\n",
-				ecm->is_open ? "true" : "false");
+		DBG(cdev, "notify connect %s\n", str_true_false(ecm->is_open));
 		ecm->notify_state = ECM_NOTIFY_SPEED;
 		break;
 
diff --git a/drivers/usb/gadget/function/f_ncm.c b/drivers/usb/gadget/function/f_ncm.c
index 8e761249d672c7b079f2c9ec13cbe9644251ec94..f60576a65ca67e84d8d4d568171bea2e6b4fcfe7 100644
--- a/drivers/usb/gadget/function/f_ncm.c
+++ b/drivers/usb/gadget/function/f_ncm.c
@@ -17,6 +17,7 @@
 #include <linux/device.h>
 #include <linux/etherdevice.h>
 #include <linux/crc32.h>
+#include <linux/string_choices.h>
 
 #include <linux/usb/cdc.h>
 
@@ -558,7 +559,7 @@ static void ncm_do_notify(struct f_ncm *ncm)
 		req->length = sizeof *event;
 
 		DBG(cdev, "notify connect %s\n",
-				ncm->is_open ? "true" : "false");
+				str_true_false(ncm->is_open));
 		ncm->notify_state = NCM_NOTIFY_NONE;
 		break;
 
diff --git a/drivers/usb/gadget/function/u_serial.c b/drivers/usb/gadget/function/u_serial.c
index bc143a86c2ddf07cba0d3ab6ada41387bc0d4bec..5413882b149812a141cc641be99e216d0b11006a 100644
--- a/drivers/usb/gadget/function/u_serial.c
+++ b/drivers/usb/gadget/function/u_serial.c
@@ -21,6 +21,7 @@
 #include <linux/tty.h>
 #include <linux/tty_flip.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/export.h>
 #include <linux/module.h>
 #include <linux/console.h>
@@ -1545,7 +1546,7 @@ static int __init userial_init(void)
 
 	pr_debug("%s: registered %d ttyGS* device%s\n", __func__,
 			MAX_U_SERIAL_PORTS,
-			(MAX_U_SERIAL_PORTS == 1) ? "" : "s");
+			str_plural(MAX_U_SERIAL_PORTS));
 
 	return status;
 fail:
diff --git a/drivers/usb/gadget/legacy/inode.c b/drivers/usb/gadget/legacy/inode.c
index 9c7381661016daa3a1a61d0509e57210d5f5e682..b6a30d88a800347de9d8e274923bd24b58018b53 100644
--- a/drivers/usb/gadget/legacy/inode.c
+++ b/drivers/usb/gadget/legacy/inode.c
@@ -20,6 +20,7 @@
 #include <linux/uaccess.h>
 #include <linux/sched.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/poll.h>
 #include <linux/kthread.h>
 #include <linux/aio.h>
@@ -1182,7 +1183,7 @@ ep0_fasync (int f, struct file *fd, int on)
 {
 	struct dev_data		*dev = fd->private_data;
 	// caller must F_SETOWN before signal delivery happens
-	VDEBUG (dev, "%s %s\n", __func__, on ? "on" : "off");
+	VDEBUG(dev, "%s %s\n", __func__, str_on_off(on));
 	return fasync_helper (f, fd, on, &dev->fasync);
 }
 
diff --git a/drivers/usb/gadget/udc/aspeed-vhub/hub.c b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
index a63e4af60a56a9a0b00c2828c4de14f31b13e033..02fe1a08d5757e9e3e21e874766d3cee1305e555 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/hub.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
@@ -22,6 +22,7 @@
 #include <linux/usb/gadget.h>
 #include <linux/of.h>
 #include <linux/regmap.h>
+#include <linux/string_choices.h>
 #include <linux/dma-mapping.h>
 #include <linux/bcd.h>
 #include <linux/version.h>
@@ -219,7 +220,7 @@ static int ast_vhub_hub_dev_feature(struct ast_vhub_ep *ep,
 	if (wValue == USB_DEVICE_REMOTE_WAKEUP) {
 		ep->vhub->wakeup_en = is_set;
 		EPDBG(ep, "Hub remote wakeup %s\n",
-		      is_set ? "enabled" : "disabled");
+		      str_enabled_disabled(is_set));
 		return std_req_complete;
 	}
 
diff --git a/drivers/usb/gadget/udc/at91_udc.c b/drivers/usb/gadget/udc/at91_udc.c
index e3af4ec3794e2ef871bc252948b6121921623704..aa4c61094dc6fa379de04f08f3b771dcafe942b3 100644
--- a/drivers/usb/gadget/udc/at91_udc.c
+++ b/drivers/usb/gadget/udc/at91_udc.c
@@ -16,6 +16,7 @@
 #include <linux/delay.h>
 #include <linux/ioport.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/errno.h>
 #include <linux/list.h>
 #include <linux/interrupt.h>
@@ -131,7 +132,7 @@ static void proc_ep_show(struct seq_file *s, struct at91_ep *ep)
 	seq_printf(s, "csr %08x rxbytes=%d %s %s %s" EIGHTBITS "\n",
 		csr,
 		(csr & 0x07ff0000) >> 16,
-		(csr & (1 << 15)) ? "enabled" : "disabled",
+		str_enabled_disabled(csr & (1 << 15)),
 		(csr & (1 << 11)) ? "DATA1" : "DATA0",
 		types[(csr & 0x700) >> 8],
 
diff --git a/drivers/usb/gadget/udc/cdns2/cdns2-gadget.c b/drivers/usb/gadget/udc/cdns2/cdns2-gadget.c
index 62fce42ef2dabd18643e3d933426025a17cdb9f1..7e69944ef18a91ab51f4f8abefae7149e93eb92c 100644
--- a/drivers/usb/gadget/udc/cdns2/cdns2-gadget.c
+++ b/drivers/usb/gadget/udc/cdns2/cdns2-gadget.c
@@ -29,6 +29,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/interrupt.h>
 #include <linux/property.h>
+#include <linux/string_choices.h>
 #include <linux/dmapool.h>
 #include <linux/iopoll.h>
 
@@ -2233,12 +2234,12 @@ static int cdns2_init_eps(struct cdns2_device *pdev)
 		dev_dbg(pdev->dev, "Init %s, SupType: CTRL: %s, INT: %s, "
 			"BULK: %s, ISOC %s, SupDir IN: %s, OUT: %s\n",
 			pep->name,
-			(pep->endpoint.caps.type_control) ? "yes" : "no",
-			(pep->endpoint.caps.type_int) ? "yes" : "no",
-			(pep->endpoint.caps.type_bulk) ? "yes" : "no",
-			(pep->endpoint.caps.type_iso) ? "yes" : "no",
-			(pep->endpoint.caps.dir_in) ? "yes" : "no",
-			(pep->endpoint.caps.dir_out) ? "yes" : "no");
+			str_yes_no(pep->endpoint.caps.type_control),
+			str_yes_no(pep->endpoint.caps.type_int),
+			str_yes_no(pep->endpoint.caps.type_bulk),
+			str_yes_no(pep->endpoint.caps.type_iso),
+			str_yes_no(pep->endpoint.caps.dir_in),
+			str_yes_no(pep->endpoint.caps.dir_out));
 
 		INIT_LIST_HEAD(&pep->pending_list);
 		INIT_LIST_HEAD(&pep->deferred_list);
diff --git a/drivers/usb/gadget/udc/dummy_hcd.c b/drivers/usb/gadget/udc/dummy_hcd.c
index a7e8fa45776b5c16220bc5181eb6a91c45adf019..bda08c5ba7c01457aee61f86f828c12cc1ce8d01 100644
--- a/drivers/usb/gadget/udc/dummy_hcd.c
+++ b/drivers/usb/gadget/udc/dummy_hcd.c
@@ -28,6 +28,7 @@
 #include <linux/delay.h>
 #include <linux/ioport.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/errno.h>
 #include <linux/init.h>
 #include <linux/hrtimer.h>
@@ -625,7 +626,7 @@ static int dummy_enable(struct usb_ep *_ep,
 		desc->bEndpointAddress & 0x0f,
 		(desc->bEndpointAddress & USB_DIR_IN) ? "in" : "out",
 		usb_ep_type_string(usb_endpoint_type(desc)),
-		max, ep->stream_en ? "enabled" : "disabled");
+		max, str_enabled_disabled(ep->stream_en));
 
 	/* at this point real hardware should be NAKing transfers
 	 * to that endpoint, until a buffer is queued to it.
diff --git a/drivers/usb/gadget/udc/fsl_udc_core.c b/drivers/usb/gadget/udc/fsl_udc_core.c
index 8b7f7f96177459f6d295f5740b5ab23c0eab838f..4dea8bc30cf6d64663889ad0694bd34513321b54 100644
--- a/drivers/usb/gadget/udc/fsl_udc_core.c
+++ b/drivers/usb/gadget/udc/fsl_udc_core.c
@@ -22,6 +22,7 @@
 #include <linux/errno.h>
 #include <linux/err.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/init.h>
 #include <linux/list.h>
 #include <linux/interrupt.h>
@@ -1181,7 +1182,7 @@ static int fsl_vbus_session(struct usb_gadget *gadget, int is_active)
 
 	udc = container_of(gadget, struct fsl_udc, gadget);
 	spin_lock_irqsave(&udc->lock, flags);
-	dev_vdbg(&gadget->dev, "VBUS %s\n", is_active ? "on" : "off");
+	dev_vdbg(&gadget->dev, "VBUS %s\n", str_on_off(is_active));
 	udc->vbus_active = (is_active != 0);
 	if (can_pullup(udc))
 		fsl_writel((fsl_readl(&dr_regs->usbcmd) | USB_CMD_RUN_STOP),
diff --git a/drivers/usb/gadget/udc/omap_udc.c b/drivers/usb/gadget/udc/omap_udc.c
index 698463bf697b29aaf15f05297b8beac9f2bfdab3..8902abe3ca7659f4248cc857c53f53920a011d67 100644
--- a/drivers/usb/gadget/udc/omap_udc.c
+++ b/drivers/usb/gadget/udc/omap_udc.c
@@ -18,6 +18,7 @@
 #include <linux/errno.h>
 #include <linux/delay.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/timer.h>
 #include <linux/list.h>
 #include <linux/interrupt.h>
@@ -1252,7 +1253,7 @@ static int omap_vbus_session(struct usb_gadget *gadget, int is_active)
 
 	udc = container_of(gadget, struct omap_udc, gadget);
 	spin_lock_irqsave(&udc->lock, flags);
-	VDBG("VBUS %s\n", is_active ? "on" : "off");
+	VDBG("VBUS %s\n", str_on_off(is_active));
 	udc->vbus_active = (is_active != 0);
 	if (cpu_is_omap15xx()) {
 		/* "software" detect, ignored if !VBUS_MODE_1510 */
diff --git a/drivers/usb/gadget/udc/pxa27x_udc.c b/drivers/usb/gadget/udc/pxa27x_udc.c
index f9a55d4f189f4396230afcef85241c858fe40c41..897f53601b5b208955a29bca2b0743cce4155843 100644
--- a/drivers/usb/gadget/udc/pxa27x_udc.c
+++ b/drivers/usb/gadget/udc/pxa27x_udc.c
@@ -20,6 +20,7 @@
 #include <linux/gpio.h>
 #include <linux/gpio/consumer.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/prefetch.h>
 #include <linux/byteorder/generic.h>
 #include <linux/platform_data/pxa2xx_udc.h>
@@ -1083,7 +1084,7 @@ static int pxa_ep_queue(struct usb_ep *_ep, struct usb_request *_req,
 
 	is_first_req = list_empty(&ep->queue);
 	ep_dbg(ep, "queue req %p(first=%s), len %d buf %p\n",
-			_req, is_first_req ? "yes" : "no",
+			_req, str_yes_no(is_first_req),
 			_req->length, _req->buf);
 
 	if (!ep->enabled) {

-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250114-str-enable-disable-usb-v1-5-c8405df47c19%40linaro.org.
