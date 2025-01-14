Return-Path: <usb-storage+bncBCB6X76TWIIRBXWMTO6AMGQE7FRIXPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D872A11428
	for <lists+usb-storage@lfdr.de>; Tue, 14 Jan 2025 23:34:07 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-6d8f0b1023bsf64374556d6.0
        for <lists+usb-storage@lfdr.de>; Tue, 14 Jan 2025 14:34:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736894046; cv=pass;
        d=google.com; s=arc-20240605;
        b=P0WOi21ZYsU3QwcRpi7cti7GyPRDuDd5ButwbABtEiSuAabpWwAkAlGWNxj0u0Dz2a
         3YEZzbhw1V7MoXGyEp44MQz6oyv1JES362cyiQA82QaArvq9lqrIjqAteM8AKyHmlrau
         fy1CGUPmqR/42GYGZ6hTP0am9ZYjd2yxiF6eBI7jTDdRXWZKdbwW/cyOqwjS0xQybuCV
         dkPM7gRPSka03NrS6c72XhFtkkQsUz9t/hYXC/b3wlBHTe1qS6Io8HpXngUhun/4+RCp
         3XU/ni69rb1d7ppndK7DY7etzJcfPpjbp25AO6/J3IT/+u/P9e258IQYwhVNeTl0k7Yi
         2xhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references
         :message-id:mime-version:subject:date:from:sender:dkim-signature;
        bh=184v7aqV/RJFohODo0Qe2s29VyofThohYjDohkZ2jws=;
        fh=0n8NZrPpqcsYhV4RSVagtyC5zt3OF3eOWKeEgERD6Fk=;
        b=PTL5vJYfC33H1wTwClzZBel+/N4kzhVO7Y8CxC8/3ba+KRWZKt5NN/NqKY1c+T+l4Y
         ucxKSKXxvXfnmcXS8LG0pic1li6VsCLHkwJPpcw2nYCLLZt5NLP/FzBBUh117l9cBw8g
         E4K2diPpDwZzC9sr8P3roECv0+xbuVWePa5geyt7ybogpo2SaDeSgQMw6mbN8+IL/GHl
         nNGiXGb+HUISMJbofJu0Sg7ia1fGp67zxIIF+dxoUCVKtH8EMvV78g9Ibkp2Xl9IsyD2
         fw1t+HIrYfT/LGCOCRoVmMBhH++v+R1EPj+83G4KviCRdtd1XbzrIGgXTVmEhBWr6fKv
         1wkw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XlnvPQf9;
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
        bh=184v7aqV/RJFohODo0Qe2s29VyofThohYjDohkZ2jws=;
        b=Hg+FtiCKe4kkqYl+OcPJ+Bw4Yd+IUuBfNmaLfeb7T+WuBAKYLT79v+W4gEl7ySqSFF
         VvljmR4toUr00AmnhCjX2hM7dGF2Tkm+MJv9YtM04z2+VtqCTEtBFLA4iZ/seTwpr8qa
         oT5uZN4aZvBEws9lLsGpAlBv2Hh1EdKnzA97A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736894046; x=1737498846;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:in-reply-to:references:message-id
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=184v7aqV/RJFohODo0Qe2s29VyofThohYjDohkZ2jws=;
        b=SnVhC2O3tZrfmFB2Rp42mTcBcH088yCY2G7EacNvpXsiQSotFzq2lsbxwtEh1GZGgV
         0yfApeilyyeTHl4HCoNc5dyLp/9fwCyPhqWokeqXSIPygaICljM20J3PYInym9v7w3ut
         s2/j8e3snIDnN4kqQrTlBgM2BuUTTssgQBOiSzg/OIJcJ3XbXuu87jNtLv67tQ4A5qJw
         xznBtn4k0ueVwBNmqbC1Ufh1CdnA/JY2AKN3HCicvPKLl1lutHCledeWdY1UXBl9UQlm
         Eov3qbyyynxRkrWbl/r4alllE1Q+Ji9I0ssRSr9oWHeK927zkEy05Ljx2NJ0KK+6Yi+Z
         rZGw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXhmPLPAq2DdWPMK843w0l6OKIGBQ3XO0XqICuX56N0/d/ttk1rL+rTuRfW8UOpCVKk44NxdQ==@lfdr.de
X-Gm-Message-State: AOJu0YwtN/dkS9Dx7lfuDNAKLLlctDcJ/IwT2f1EV9CO7bYuw3aCl5vS
	3ab9kenJiF627FoZT7phtc4ZIKX5c0ynbka8kpSboCU0q9ovQBpOAzLxBjWDuNk=
X-Google-Smtp-Source: AGHT+IFa57zKwLGZmPhMTzllFbO0NZXD2bMivzxfCSmqYd9B67t2szr+LUJEYPxCljdNB2Re0zUl1w==
X-Received: by 2002:a05:6214:41a1:b0:6d8:b401:44a6 with SMTP id 6a1803df08f44-6df9b2e8241mr373722276d6.43.1736894046191;
        Tue, 14 Jan 2025 14:34:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:2b4a:b0:467:8ca0:7f45 with SMTP id
 d75a77b69052e-46c7ab64bd0ls57561991cf.2.-pod-prod-08-us; Tue, 14 Jan 2025
 14:34:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVBS32F8VZMDPjzNx0oPpEDU3bztLiORzc0Ua+gOjNz7M6ofadI4LnKlGrEvGn2VvcQE1GtzGmkE7/sqA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:6009:b0:7b6:dc74:82ac with SMTP id af79cd13be357-7bcd96e8c00mr4686783385a.1.1736894045710;
        Tue, 14 Jan 2025 14:34:05 -0800 (PST)
Received: by 2002:a05:620a:bcb:b0:7b6:d72a:7c26 with SMTP id af79cd13be357-7bce2953782ms85a;
        Tue, 14 Jan 2025 12:05:56 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXnTt0s6D8qEgZTt8IBLEhPHTVycZyVdItJUgzvhYjgwF3IEEYZwbGBx0/8tfuSgsMEAfzDE4Ii0gNYEA==@lists.one-eyed-alien.net
X-Received: by 2002:a5d:5848:0:b0:386:3dad:8147 with SMTP id ffacd0b85a97d-38a8731c975mr20965656f8f.32.1736885154682;
        Tue, 14 Jan 2025 12:05:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736885154; cv=none;
        d=google.com; s=arc-20240605;
        b=CfjAohdfAH9qR7Y69LPq3YfIqTAyHJEcVB85bZLdYGEz4frZe3clzRBgqN9gn93LOM
         R8DxQ6bjLIfrG2JuqG13jH6p+j0S0DeYDdyy41o0CCP40StMGb5PxDMGghHdzopZfajg
         TfOXIXV4VuZ9gtT+Uk+aZ/AxQBSX8Ib2osrccITIUXSyFJ1A+viRIE3dbxJq4ClyNdF4
         VFqSqUBV5SvrIlvaf/cN5tx1UnL2OI4G3Y8X+LmoKwW3dDsJWrijqB/F3cs5J6ftJbFK
         xyW2jn6eEW8gi6YGudg5hX9/86OvXastJ90jtENEVkycsjTnuqDSZRWRubdxdYqqJJ13
         Mw+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:dkim-signature;
        bh=Nu6/XX3P+UDLqPCZUwHTSPpolsKgeM4I+r25no45AIw=;
        fh=1gBV22kn/esMWpCN2zwDePHcF4OnWQ39Xvx3208ZJpQ=;
        b=X2Kia5nKIsxxzjRHLqSyGRNvn8qHmvIDflLNjGbSCskL5wjhwQR3YlXBqTaf/nvmG4
         P9jXD8v3W3IAIqY4zF87LT+z6SUpzyqj75LLsJIy8U1LbyRlBaVp86979nRwW/G634ro
         ln9qgpUqA39ANht8WCkXssYVMYUq34JDvNKbLe2tQPMpoW+Cppsb+YjMLRB1rNe9MJAJ
         wCSlDfFWKkdM5kzQntW/xgKEesnsktDNstPydMDGGNM676qpIZ3BJRU3U48cSI9lqRGG
         7EA0UyOVx4xVb2EPU1BcF8cVazMhFewoAKlMUtCfF6Ej/Nfq9lFKPEcmRYqLbwEC0OHl
         zzZw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XlnvPQf9;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 5b1f17b1804b1-436e999fc8fsor22303105e9.2.2025.01.14.12.05.54
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 14 Jan 2025 12:05:54 -0800 (PST)
Received-SPF: pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWfMK+NUJdvIa9+kza5HBz5DLiVELzX6VNMLrEP23C9NwMdVpiazgnFw64NRlxSZ4b2FUmuB6zG5Kl7KA==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncuIY89Ln3h77sD+AMDKnEnh5/ENSpE232D7mEslFafkMdwvnDSCPzCNMHmmaWz
	itdegyvATLeY07XA5GASj0N7CWVR2nWPiiZKGF3P+6pHJb3MPFwDGLjHSfYb7NfUsIhxQvH2ias
	cTZaKtywXtDl95rqCvs+JrFLxupYUKnzQyGPQ9sggaXRTNfxlC+XsL4aDqrrUfS/CPJI6iZPapr
	ga+iVYKgYmGa8XFuuLGK5/PbSVh38iVZ1l7Ofa0voxDZRohfq+AxHeAGPeE3+d3DbDPgtCK
X-Received: by 2002:a05:600c:3ca0:b0:436:17f4:9b3b with SMTP id 5b1f17b1804b1-436e270729bmr101202205e9.6.1736885154241;
        Tue, 14 Jan 2025 12:05:54 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e9dc8802sm184622025e9.10.2025.01.14.12.05.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 12:05:52 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 14 Jan 2025 21:05:37 +0100
Subject: [usb-storage] [PATCH 4/6] USB: phy: Use str_enable_disable-like helpers
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Message-Id: <20250114-str-enable-disable-usb-v1-4-c8405df47c19@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3021;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=U9HpxC9pEH0EWD9Q/rURtR7vQ0PaHWPP6MGt75vQgGI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnhsOTPwA/vm8owUe4EJZse5Hr4rjlTRWXCB2aG
 KDucAG0092JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ4bDkwAKCRDBN2bmhouD
 11++EACY8+eR+j3tvSf+ncTv3YQsKVEU2LFwS6tJbJCtwQQAxxSlEHMS38SL3z3TjXBKaWCJhHe
 I7Wvb5qUM66zzBAbOq8HxnfInql3Vuh/7o3+qBSmnjj6JgFZ/1miQRUPjTBxVUniz4H5z5WF2Ur
 p0mIfk1MqxGLV+dZkzanl6GwmamqQsRP5GR2zluh77lUmb0fJ5/Tw7tZ/8WsY463w19lqZYAsrW
 tLWR+TfRKuVvJORSgxABSxAxsOyQehKbiTPVW+VpOwBLfiydGkmRbLqNawdvPeW1KM0YM7eeS1o
 YeW+dujSWP10wXtF7/B4bM8bXByrPxuCgMyRxo3i+3prm7sQ+CBmse57sSPb7pLwwiI8VtSSnzX
 xyA7aQk6X1trGVNnAvFX7UiiPlWQwU4czybDh27fiLvixBADIsU2xvgIuXDU+fuqXzrs25j0YzY
 ZpozRJLPjCAAVQ4zmJmNNDgjsRRw5CJgkXFK+/XiAxmaPOMs7bwnj4WqXEkgDkZ9e1LTL9UL8EQ
 nLugIwjUe9M/Q6inM/mdBXLYQCIqgxBMEyEQiC5DZeC9KvXDrIKDxjq/b9be9+DmL+cj2S2BeG4
 GIzWLaWePDlxjuY18oKvhroo/E9Nm09ltQk+dxiRCzEMz+rSSypXWNGBbna5xt3VfZx8P3Nc23P
 hytQ2OSgUK9arkw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Original-Sender: krzysztof.kozlowski@linaro.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=XlnvPQf9;       spf=pass
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
 drivers/usb/phy/phy-fsl-usb.c | 3 ++-
 drivers/usb/phy/phy-mv-usb.c  | 3 ++-
 drivers/usb/phy/phy-tahvo.c   | 3 ++-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/phy/phy-fsl-usb.c b/drivers/usb/phy/phy-fsl-usb.c
index 42c42e1932326c66c842f03b8060af2909a50aa0..40ac68e52cee73d168960e3588a4a0d87a88e1c1 100644
--- a/drivers/usb/phy/phy-fsl-usb.c
+++ b/drivers/usb/phy/phy-fsl-usb.c
@@ -12,6 +12,7 @@
 #include <linux/kernel.h>
 #include <linux/delay.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/proc_fs.h>
 #include <linux/errno.h>
 #include <linux/interrupt.h>
@@ -529,7 +530,7 @@ int fsl_otg_start_gadget(struct otg_fsm *fsm, int on)
 	if (!otg->gadget || !otg->gadget->dev.parent)
 		return -ENODEV;
 
-	VDBG("gadget %s\n", on ? "on" : "off");
+	VDBG("gadget %s\n", str_on_off(on));
 	dev = otg->gadget->dev.parent;
 
 	if (on) {
diff --git a/drivers/usb/phy/phy-mv-usb.c b/drivers/usb/phy/phy-mv-usb.c
index a7a102f2e163facb7797664a8999207419ae33fd..30d6c8840a5e6af8df05acffa93a806af47047b2 100644
--- a/drivers/usb/phy/phy-mv-usb.c
+++ b/drivers/usb/phy/phy-mv-usb.c
@@ -15,6 +15,7 @@
 #include <linux/clk.h>
 #include <linux/workqueue.h>
 #include <linux/platform_device.h>
+#include <linux/string_choices.h>
 
 #include <linux/usb.h>
 #include <linux/usb/ch9.h>
@@ -217,7 +218,7 @@ static void mv_otg_start_periphrals(struct mv_otg *mvotg, int on)
 	if (!otg->gadget)
 		return;
 
-	dev_info(mvotg->phy.dev, "gadget %s\n", on ? "on" : "off");
+	dev_info(mvotg->phy.dev, "gadget %s\n", str_on_off(on));
 
 	if (on)
 		usb_gadget_vbus_connect(otg->gadget);
diff --git a/drivers/usb/phy/phy-tahvo.c b/drivers/usb/phy/phy-tahvo.c
index ae7bf3ff89ee176d730d2fb1e7377ce4835b7c6f..88607d0edb01485902f611e4e501dec2946d9939 100644
--- a/drivers/usb/phy/phy-tahvo.c
+++ b/drivers/usb/phy/phy-tahvo.c
@@ -18,6 +18,7 @@
 #include <linux/extcon-provider.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/string_choices.h>
 #include <linux/usb/otg.h>
 #include <linux/mfd/retu.h>
 #include <linux/usb/gadget.h>
@@ -63,7 +64,7 @@ static ssize_t vbus_show(struct device *device,
 			       struct device_attribute *attr, char *buf)
 {
 	struct tahvo_usb *tu = dev_get_drvdata(device);
-	return sprintf(buf, "%s\n", tu->vbus_state ? "on" : "off");
+	return sprintf(buf, "%s\n", str_on_off(tu->vbus_state));
 }
 static DEVICE_ATTR_RO(vbus);
 

-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250114-str-enable-disable-usb-v1-4-c8405df47c19%40linaro.org.
