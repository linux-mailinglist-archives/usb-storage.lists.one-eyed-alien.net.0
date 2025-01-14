Return-Path: <usb-storage+bncBCB6X76TWIIRBXWMTO6AMGQE7FRIXPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 76ECEA11429
	for <lists+usb-storage@lfdr.de>; Tue, 14 Jan 2025 23:34:07 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id d75a77b69052e-46792701b64sf115299051cf.3
        for <lists+usb-storage@lfdr.de>; Tue, 14 Jan 2025 14:34:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736894046; cv=pass;
        d=google.com; s=arc-20240605;
        b=Kev62xjshXncO/R/6aIAuFPuLhzwKdQTFSFyKGcglTu6LRvGfvpGISXUvQNLIsJ9vE
         yYzniIPYaW5Snvcuwq3UAF0ZbBfReqrkHLRLotDTMdduGohMDQMmUo+wiYHTSrX1pr9A
         JCs7vi0UlLEI3gi1Vtqm1ou6kvLmbCMb5RDGdYhvcdwO/jAKTTedUDOi5BMyeWCZXzYb
         UC4vQQBajl5QL2B6PGw+tqQ3JTUXaUZbjGnLgCh465ULpaffp4judaVGRK15eEAKOjUc
         ebM205sEM9xTFOgt5gR9TDdkWNGOUQ3Ovvj5I4VXtbXK9meyLnLBG6rQRqDIpbPhEMuP
         +DYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references
         :message-id:mime-version:subject:date:from:sender:dkim-signature;
        bh=j4R5fxWHTkbF5HLcXcYyXaBgDeGEV85rCHQCX4vT/JY=;
        fh=cYw83pt2FVwLPg3T1NZt3DlpBEkkmf/bpIA98Ch+vjA=;
        b=HTqDyaRDCZ0Na85MeTZRKl5ptOc9q5mHmzVJNg9TSxDJmo8l/XsMqCrzBn1fXgzWrf
         aJSQVstc7Jpu/hp+1m+0LMljD/PTsndMOAw+1VGG6xHkHKoMKPthJpORA/4V8Z33+ANQ
         XftSjrgg7blaQRrAGEPbEDxqOiUN8Vohlk3SmyPSgSz8uBfISzM83ak4JI7AIVpEGfRp
         qQbfGHGIi5e8g2cF8xFSmH/yN8WLly2pViy+i7Begay81ZtDhcUf07UTVW62UfR0cCgS
         a4CWDZ39DGsBEmou2nm8FcxgHkFfeBjAdxPwYdJCQEnROud2oZZaw/gC2qshcKTgtM7G
         RWUw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=n8CM89kS;
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
        bh=j4R5fxWHTkbF5HLcXcYyXaBgDeGEV85rCHQCX4vT/JY=;
        b=Ym752NMipnrUTwPCodyizhuOZ6kjcWtV07J3yHRzNXan7YvzfZZxAHS2OjUfkvJlP8
         YgJruG0ci8Qu325fu09VUiD4E65oFJ8ZjyvJjxU0aLRoIBx7FkgqRC0GN2qCPlkMRSpB
         fBwPHtopj1r6FymT6K1lNsr6AAe2Ew76C1eKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736894046; x=1737498846;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:in-reply-to:references:message-id
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=j4R5fxWHTkbF5HLcXcYyXaBgDeGEV85rCHQCX4vT/JY=;
        b=WrQy/uExb9cJKUwid0OmoxVZ3ZjUF9CXL7i+B8P3DZksEjZHcKPEGHZ25hk/G6kVqt
         0Wn4iqxcquYmtgeebIbdD1CSo5mILD62HRhXaYEqwAEodc2wvkgA0ciTPMSrKISh4EBC
         iEN1zyalj+pgn+RNpwRWzave+WBDXS/epFf1YDx4HUNDYtAzS1sM341+AoYhjuvtcmyw
         kPqGvrtv8XDjbth1+OPtRtQekhvDJsBxoUn5OzUovohkilcMXUZdR+ZPKGjK6S5jRYpk
         aaPhT00GIRjvUKTRsZ7qSYc0e4Zuo64X4StOW1CPrqOkOwxiXkC/g6sUmbf2AGLufunR
         TmCA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWaJ4xJIzbObFa23r2IG4qr3F5riUSZzY9ux7O8F7f8LP4+7B/UHAWOrMcL+ioHoDlvb+CLwg==@lfdr.de
X-Gm-Message-State: AOJu0YyMcs8q4ySagXViMNOZVFoxfRT7jweDXayYMYw4qLv5kjNcUUQa
	E2iPGF6xybQcToAt7yxmXTYfHLG+GV/MkP8EkjDEECeTva61tbUv9SKaLMXzMiY=
X-Google-Smtp-Source: AGHT+IEglk7+IRm0F3TXl+nSO0YsEv7/oVRg6VlX+JkYTZaBENKX/6K+VYO2D7Yw+P43lsLGcEZt1Q==
X-Received: by 2002:ac8:5a16:0:b0:467:67db:ef7a with SMTP id d75a77b69052e-46c71083cddmr397456331cf.44.1736894046257;
        Tue, 14 Jan 2025 14:34:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:6d13:0:b0:467:769b:e63f with SMTP id d75a77b69052e-46c7a9fa075ls60490571cf.0.-pod-prod-07-us;
 Tue, 14 Jan 2025 14:34:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWUz2IOIhqVz93ItG5nZwOWQhs9mGnJkxQqCqGl8Y2bqW8liUp59nZWKI/lvyn2LS9gJNrjo13xrgnRIg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:4155:b0:7ac:9e4d:8060 with SMTP id af79cd13be357-7bcd97ebcfdmr3633752585a.58.1736894045712;
        Tue, 14 Jan 2025 14:34:05 -0800 (PST)
Received: by 2002:a05:620a:b92:b0:7b6:dcc4:6708 with SMTP id af79cd13be357-7bce27c44ecms85a;
        Tue, 14 Jan 2025 12:05:48 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXtgFgooQcAwtwzwVKbEvChnf5JJ7ecgjnEU8r2Of6CeWmEIb+MHNvYY2za/WqPzv+Hdp0bDgfnsm1x5A==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:808:b0:436:488f:4f3 with SMTP id 5b1f17b1804b1-436e26a1b3dmr256389415e9.17.1736885146506;
        Tue, 14 Jan 2025 12:05:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736885146; cv=none;
        d=google.com; s=arc-20240605;
        b=AEUFawyORgWeW3BWKA8RJKgFM0avVAR2WtRXa9rcLj57ZR1UIvWkHCLVLiJdHXe7Dj
         CGarwPkQXYApZP+dPz4Bp3PRXRBZIO0HtL0AlVLlid7ynf4f69UvhN/+5xfdOuzS688u
         G3GjLyI7D3kS+6NzA2HJz+7cZDUSnAfTFa4Pzj7cBiV61Zboy3EeakvY8OLjcVtyMm7V
         Y34d+I/Xpd4M9WC2BeU7heWKs6veytDm0kqmn5aAZfYJoYrNogTbUVXH0eyQeddHQzBW
         aVTYZm2Jc3NGioMVXeJcXYw/O2jYseMiDyAvM2TeADlLyiZ+FAW9A4w/Nb71lIM5BTrZ
         +/IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:dkim-signature;
        bh=ix4BWT9qwOiJ6xVGoiI7oaTduq2Ilx63FNUEN2N3zfk=;
        fh=nzJHIqHGSB6vhEkpzhLuElCFuv27su6D66gF9XG+b14=;
        b=lNeK+8p9k9WUClRU13fRG5VFNaAhoTR6W8/2meY78XjMvGkcdF9d/JdqccIuIcSTNC
         FLAAfYSgRlWrJs5cM4/fBadobXENmrIRbX4oKa9dEgxlE+5B1VqBv2TKsImxnvVOs/IE
         D/h//a/oi91brlh/OFm1CObiA7PT8dmw5Q0wM+W/sPn07sOEpUJLJ7IIEmph3tQ91Nrd
         ICX0m22HdrheBYzHMc2mBgBOygxu5FIL3S6DchJD4fFN39m47VYsz8D1++jIuV4WYeXt
         YnbGFgotkt9Jh8pwFHkxXEW96uJUzSJw1DS8ErVvugYrcQx269rftaf5yJcBmOIOQbt2
         fGvQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=n8CM89kS;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 5b1f17b1804b1-436e98caab5sor20802625e9.0.2025.01.14.12.05.46
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 14 Jan 2025 12:05:46 -0800 (PST)
Received-SPF: pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUoXVHafLCuq0NEvJrZe8vVfNMqhtKPqZPsa9buoWIsvYbLkRx7vC/ZqehnTcj7XCvvq9+ic6GCz43uww==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncsaoJBDiNY7UevrqaslZDvSisycYS0JR2GQNUkp2BNpyuiwcRs2T5hRRzKrL+p
	jXRrTFTJOmM+JVLXhWVtWXTNdZ273Xeg8+eysAJ9F3zzKWFyEYioNEO1yMs6D/Ik3ZH9M2f5ldu
	1GvFF0o2FBsms0cPHRMAKBoANZFaZkTA6lSzSu6sMrMKnhNJrWa83pGaGFHg4XbvhRq2mza2khE
	oFg9Mp6oMlFqJb3+VkJYqySJ4kneUqecmakjU0npt/4UWv4zaPhIiRqr8MkAi9mu6CgPXR/
X-Received: by 2002:a05:600c:3b11:b0:42c:bb35:b6d0 with SMTP id 5b1f17b1804b1-436e267f21bmr104196145e9.1.1736885146061;
        Tue, 14 Jan 2025 12:05:46 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e9dc8802sm184622025e9.10.2025.01.14.12.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 12:05:45 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 14 Jan 2025 21:05:34 +0100
Subject: [usb-storage] [PATCH 1/6] USB: Replace own str_plural with common one
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Message-Id: <20250114-str-enable-disable-usb-v1-1-c8405df47c19@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4557;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=oBRrldCGEtQDH9TkaLDR4/zC/3PP573MIhVqsz9gJTw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnhsORQpZSPRfkKaL3N8KwomBIhzaY4ZZ1/V+EP
 p3YB7iKfC2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ4bDkQAKCRDBN2bmhouD
 1/ihD/4zYcA+M7tRdqi7/4Eu0P6oiHwpIW+zgjjC8mO4dKq/fzdsBl6GN0MPubf3R+62Dn9SnlZ
 gBkxcpdPfMPzibVeDxdAxqS/QFZCYYfiYHTOUfNvFX4yjYDZ/F+e34/1VyxC/CsP4NiGivuM1qy
 zhYf6dMBMFG2cvEw2a1kyx/HYLvdjFakU6qqy8zckY9c+NkUVSzs7hcIfn8b8XLf6VJk3CCsbFC
 eFAvoZoXKQdleAAlT1D0Pj5QXP+piUPJYY1zpD7AatwpaCgQS3tAaO2qTKebXHVAQlcYgrnWjNO
 U/JAwvdS2ckWppCHDH9hPb0M0WbFxji74szMZm/F6faWFlHxLVs+NDFB+umXtlluIAM4lLH0fxt
 g7V7Ma5GLHOJjzXMOk0Nx/MKFiDPnDeHOEEdn/zazix7cPwagALIFuZIRHyS+2Hb6E7Jim4VQPy
 EjG0PB4bNJw7WoOzXhMBUuem1SAaRPOw7M1CPetC6vw1w7l7PoyevPZLHy6Qc5xW1YZOKrGR5kh
 qI/1IOST1DLVe+KRGyTwfCBs/ZdurCWpWaseYe6pmkR46WH9pJj+50nK91+HRsuj/cAoU/2jFs0
 59Ytog3gzGwCenTSUtSlN7SsMs7uDj8jCE/rC4cMXVQj4nqZXGsiWEkXD8mSi/5aADZGy32Pm1i
 6OczTp8+0UGp3Jg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Original-Sender: krzysztof.kozlowski@linaro.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=n8CM89kS;       spf=pass
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

Use existing str_plural() helper from string_choices.h to reduce amount
of duplicated code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/usb/core/config.c  | 19 +++++++------------
 drivers/usb/core/generic.c | 12 ++++--------
 2 files changed, 11 insertions(+), 20 deletions(-)

diff --git a/drivers/usb/core/config.c b/drivers/usb/core/config.c
index 25a00f974934fb5a562caf3f5f259ba23031e457..f7bf8d1de3adeb16a540ec5236726fc7b03517df 100644
--- a/drivers/usb/core/config.c
+++ b/drivers/usb/core/config.c
@@ -9,6 +9,7 @@
 #include <linux/usb/quirks.h>
 #include <linux/module.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/device.h>
 #include <asm/byteorder.h>
 #include "usb.h"
@@ -18,12 +19,6 @@
 
 #define USB_MAXCONFIG			8	/* Arbitrary limit */
 
-
-static inline const char *plural(int n)
-{
-	return (n == 1 ? "" : "s");
-}
-
 static int find_next_descriptor(unsigned char *buffer, int size,
     int dt1, int dt2, int *num_skipped)
 {
@@ -484,7 +479,7 @@ static int usb_parse_endpoint(struct device *ddev, int cfgno,
 	retval = buffer - buffer0 + i;
 	if (n > 0)
 		dev_dbg(ddev, "skipped %d descriptor%s after %s\n",
-		    n, plural(n), "endpoint");
+		    n, str_plural(n), "endpoint");
 	return retval;
 
 skip_to_next_endpoint_or_interface_descriptor:
@@ -563,7 +558,7 @@ static int usb_parse_interface(struct device *ddev, int cfgno,
 	alt->extralen = i;
 	if (n > 0)
 		dev_dbg(ddev, "skipped %d descriptor%s after %s\n",
-		    n, plural(n), "interface");
+		    n, str_plural(n), "interface");
 	buffer += i;
 	size -= i;
 
@@ -605,7 +600,7 @@ static int usb_parse_interface(struct device *ddev, int cfgno,
 		dev_notice(ddev, "config %d interface %d altsetting %d has %d "
 		    "endpoint descriptor%s, different from the interface "
 		    "descriptor's value: %d\n",
-		    cfgno, inum, asnum, n, plural(n), num_ep_orig);
+		    cfgno, inum, asnum, n, str_plural(n), num_ep_orig);
 	return buffer - buffer0;
 
 skip_to_next_interface_descriptor:
@@ -664,7 +659,7 @@ static int usb_parse_configuration(struct usb_device *dev, int cfgidx,
 		if (size2 < sizeof(struct usb_descriptor_header)) {
 			dev_notice(ddev, "config %d descriptor has %d excess "
 			    "byte%s, ignoring\n",
-			    cfgno, size2, plural(size2));
+			    cfgno, size2, str_plural(size2));
 			break;
 		}
 
@@ -754,7 +749,7 @@ static int usb_parse_configuration(struct usb_device *dev, int cfgidx,
 	if (n != nintf)
 		dev_notice(ddev, "config %d has %d interface%s, different from "
 		    "the descriptor's value: %d\n",
-		    cfgno, n, plural(n), nintf_orig);
+		    cfgno, n, str_plural(n), nintf_orig);
 	else if (n == 0)
 		dev_notice(ddev, "config %d has no interfaces?\n", cfgno);
 	config->desc.bNumInterfaces = nintf = n;
@@ -798,7 +793,7 @@ static int usb_parse_configuration(struct usb_device *dev, int cfgidx,
 	config->extralen = i;
 	if (n > 0)
 		dev_dbg(ddev, "skipped %d descriptor%s after %s\n",
-		    n, plural(n), "configuration");
+		    n, str_plural(n), "configuration");
 	buffer += i;
 	size -= i;
 
diff --git a/drivers/usb/core/generic.c b/drivers/usb/core/generic.c
index b134bff5c3fe3e86215bdcd14a2591a521f5ba3c..9c6ae5e1198bb2043d27e2f309a46f8ce512225f 100644
--- a/drivers/usb/core/generic.c
+++ b/drivers/usb/core/generic.c
@@ -21,14 +21,10 @@
 
 #include <linux/usb.h>
 #include <linux/usb/hcd.h>
+#include <linux/string_choices.h>
 #include <uapi/linux/usb/audio.h>
 #include "usb.h"
 
-static inline const char *plural(int n)
-{
-	return (n == 1 ? "" : "s");
-}
-
 static int is_rndis(struct usb_interface_descriptor *desc)
 {
 	return desc->bInterfaceClass == USB_CLASS_COMM
@@ -194,18 +190,18 @@ int usb_choose_configuration(struct usb_device *udev)
 	if (insufficient_power > 0)
 		dev_info(&udev->dev, "rejected %d configuration%s "
 			"due to insufficient available bus power\n",
-			insufficient_power, plural(insufficient_power));
+			insufficient_power, str_plural(insufficient_power));
 
 	if (best) {
 		i = best->desc.bConfigurationValue;
 		dev_dbg(&udev->dev,
 			"configuration #%d chosen from %d choice%s\n",
-			i, num_configs, plural(num_configs));
+			i, num_configs, str_plural(num_configs));
 	} else {
 		i = -1;
 		dev_warn(&udev->dev,
 			"no configuration chosen from %d choice%s\n",
-			num_configs, plural(num_configs));
+			num_configs, str_plural(num_configs));
 	}
 	return i;
 }

-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250114-str-enable-disable-usb-v1-1-c8405df47c19%40linaro.org.
