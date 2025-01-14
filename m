Return-Path: <usb-storage+bncBCB6X76TWIIRBZGMTO6AMGQEQVFFGNQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CB9A1142E
	for <lists+usb-storage@lfdr.de>; Tue, 14 Jan 2025 23:34:13 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id d75a77b69052e-467b0b0aed4sf126519001cf.2
        for <lists+usb-storage@lfdr.de>; Tue, 14 Jan 2025 14:34:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736894052; cv=pass;
        d=google.com; s=arc-20240605;
        b=Rc+lr+wsjcUVWIg523mcWRqe0cmxwP3R8KPB7AHwBaEkWQY96CMrFDTjcv4qXeqUxk
         gatIGwSRFJshxLmbr9unXu53q0n9g1VQZIciETQTv3Lln8aF5nPQRQvaHgza0YELQ1dX
         JC7sv1iamiQ8ky2+SizV4kz13dsshs1TDpeQE3fNrqZWQFlKVs/tUlis8WXOnzCF856B
         QLZNhROrt/5qfV+NKn8QgaqOhyYeWxDAg6sYkeGrOovj7QLCXU4jre3rwYhhO1RTA6nb
         ZL+ukC/5dHZGYVhX1kZNaHz5V3jMDvrqDHNJrjp3y4p2pnQEWR96CpGWGXqg14M9O6q4
         KWFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references
         :message-id:mime-version:subject:date:from:sender:dkim-signature;
        bh=2Ju7IxKDiSBaW3PHZKJjWp1hb3b/bl0uUoLS9XfaI5E=;
        fh=adrDdF3laevDm/BQjr4C9rIeSXKalx0p7DzTfxcl1W4=;
        b=G3Y0kvAWHK/r2AKtYkZRiw+6oAItTKW1NlD9GewbbdBrTLbx4Qe5DYvDz8EF9EWFqS
         ly0Fdp/HkY7WRrCehcXmWlF/6rv+AauJhLEylpIGQvFtMvgVGdjB7sZCeNIyWu164xPN
         SXtKMt33L4JUMF/XEKBjwHaj1rDFpHGWUEdOvJMgGEYtItCWXZ/MA5BU3z+WHK/KYy4K
         tGEzylM2Gij0Q5JNmf9erYldc48r4tCLSlf2Zq7iCmC6gwzlMMEF9qSHs0hetXasFrZ9
         q4Xo+GDYv8HpZf+VftFr8wahkE1aeapavb4qAVfLS0N+Nii1Kk9nB2lKK2ztQpubBeRI
         UZ6A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=BnR3uB25;
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
        bh=2Ju7IxKDiSBaW3PHZKJjWp1hb3b/bl0uUoLS9XfaI5E=;
        b=PJGFK6JCvR65khpltfSchhZgutvSgg3y3++IPSOeKvTbZE+lEIpLa3ceknwywdkOBv
         5bl3IlkHWNltm/h8at53yx1R8bmr/irvRtmEgJPYZQswlD/cV8BAwv8J0IYT5JyR1TOc
         8V1THvuupXYmoHW1xebY4n+rPXVcXRCqhdiV8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736894052; x=1737498852;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:in-reply-to:references:message-id
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=2Ju7IxKDiSBaW3PHZKJjWp1hb3b/bl0uUoLS9XfaI5E=;
        b=crusr5a4XmFmbaW7oE6AW4n5I793fA33HL6r1JY8y4ixi3uvvyBgaTjfuA5MR/uBB9
         uwc8x93lVPZI6QFORTOLLSVfrpIC5MR2e4P82VFh5/0MW38l/fZc3jBuXK4XEzA0qrjf
         sZwAjzfuiaAE+jaFmrtzLp4KRD94wLLl/asYc4Aw5Liv+AgYKP9G/DiiPeZVaNrKDmki
         TO7BY5nDPwVsWE6ukyCEdnAdBAxih1uejKLP0uP+dlig5/UZub9a18Bya3JuA6VU+nNh
         Q8ZPtut2WF6YRCd55HUWFamGL42FEqXBsPHiOZ6mfbII0I721WUYaSwsLPJcZnXl9/3i
         Wz+Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVKFb2rZgFovavhKExYDmeVlttza99HctMleWE7asLWNixYYFSaIATnxg3j1mZzwDElB9PcNw==@lfdr.de
X-Gm-Message-State: AOJu0Yxw1VtPoFBD69RPth+FpPOjPB6LDGQsW2FuPOM4tCvWn7jDRavK
	028U3fswCOMs+feIIGxihrgcvjHtOFhkQXCVwbE5hD1v9jrZTfPy/oWCTK5Rdpk=
X-Google-Smtp-Source: AGHT+IGoZr6hBOmAYX7rGl/WvIjPXsa6VFfdxIiPG/D9GHQ/kmwsKoK/WJuaSfMVAzF9wl8aDEupnw==
X-Received: by 2002:a05:622a:11d1:b0:468:f722:d44c with SMTP id d75a77b69052e-46c70ff77eemr423804261cf.21.1736894052600;
        Tue, 14 Jan 2025 14:34:12 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:1b20:b0:466:98fc:1e40 with SMTP id
 d75a77b69052e-46c7ab5d336ls16695491cf.1.-pod-prod-03-us; Tue, 14 Jan 2025
 14:34:12 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVBLIHMmU1VIAROa5KpCN+n8NJFq3No1IEVprd+Qmf8i9pytl6Avz6f/6G79FqDLhyobnnVK8/VATl/EQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:2896:b0:7bc:df55:2cbf with SMTP id af79cd13be357-7bcdf5530b4mr2743859985a.2.1736894051969;
        Tue, 14 Jan 2025 14:34:11 -0800 (PST)
Received: by 2002:a05:620a:5649:b0:7b6:d314:a4e5 with SMTP id af79cd13be357-7bce9daadaams85a;
        Tue, 14 Jan 2025 12:06:00 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVscXcCJtcN/51rI6EZ0moTNBx89KDwtP8JcO+xd3a8ZYnwxIXff0LHVZKjO6i2u79vHoEGXyIfsT2a8g==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:1ca9:b0:435:136:75f6 with SMTP id 5b1f17b1804b1-436e2551d7bmr259258175e9.0.1736885158392;
        Tue, 14 Jan 2025 12:05:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736885158; cv=none;
        d=google.com; s=arc-20240605;
        b=CbKJlKjLRMGaAF5JE1dTn18FCAvVYhgY1ASLDB8NoWATaUr29NdtNSBIr8z1DM1kfp
         eU25JspHbhijK8GBTcLdsdiEqwSS4iOcCOwELBcPZOt20+iBP8ArcVRaUpkwiZa1NbHe
         77mcBTR91iIN0ecJ5l2Ff1iomgX9rc8OGH0EpAXU8IL6mAD8you3ASKvGzv06T7lxyeH
         LdjjJlAm9plwsujwfjEt+6GlIJXiIssZ628eFL12beWE/mL3Hgz8Wr09ZMf8R6fIz4ba
         sXw5tZGGdRlIP2FOQhYdHm4DTqs7THhW7OjjPfYREszzU1KjiWtljR+l+RQALBFkLnXm
         wHmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:dkim-signature;
        bh=jCj4MiQdDJTjdmm2UQHbDgKs2hpOoyxOgKsd7sNfwWo=;
        fh=c9NSwpKUE9z6JfV/By/73vGSmf1Q5GIN0W4SFHzrQAI=;
        b=VHJifD/LZBOKJQJrU6WqPkAIVg9vWG0ng1ugM3LfjgUkCgna+xh8UOUeEzDbW7fP9L
         P7tFmeYPS8pecaMyLVUarX0sIXQBvRvYwHLEUxVxyRAVOmw2eh8Mljz0xud6cwf9niXL
         gV+pfwb3olX3jHhy55C0DuibVkVi+ahPSftBU3yML6hSMNA37RuGz390bt/BpqKCLtIk
         hjVQUJWF0KLcXw8AsacOLefw/VkLbylycEZjkvHR5Q1g6nhcs7oyu8xtbVmMjyUamvpa
         I8CSJlBP59qKcj6QR/08N0Zk58AJH++qYMuMPKEg8Svfo5WujzAkjuA9LUMBP2rifVuy
         +9hA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=BnR3uB25;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 5b1f17b1804b1-436e99a569bsor20759675e9.2.2025.01.14.12.05.58
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 14 Jan 2025 12:05:58 -0800 (PST)
Received-SPF: pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXiAZNx/klWJxrgce8bnt7acvE+6+pbVrCEELgSFKUxGIzdRkx5TDkTU7sN4TEJtJN8AMDNXwyjunKZ8g==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGnctoR27wnTu6qELw08QJ3CKXb72L9/7KB2rIwaiTpppo7Fl9ocYsUkFROEiNYEA
	Rt/OcYLo/1TRxEVf7eLq/l/kxf2jQgVkG1/fEs0InkV29Jrm97aA8PmcR73epI6HsA5JgpWq4mD
	tf4gdzefZHZYPOSP6wDEU45dq6qDCqNTppaEXErqpZt1DYjoGFjn9A105dkPtDX3+jc+BZemjYU
	XbSoP4Z5WNGof+WHH2mr+4Raa9iSTXuwpIa8gEOYlxd1CUseUPME5X4FyEOeBGyJGa3RaBP
X-Received: by 2002:a05:600c:a09:b0:434:f1d5:144a with SMTP id 5b1f17b1804b1-436e2557087mr97123485e9.0.1736885157846;
        Tue, 14 Jan 2025 12:05:57 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e9dc8802sm184622025e9.10.2025.01.14.12.05.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 12:05:57 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 14 Jan 2025 21:05:39 +0100
Subject: [usb-storage] [PATCH 6/6] USB: Use str_enable_disable-like helpers
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Message-Id: <20250114-str-enable-disable-usb-v1-6-c8405df47c19@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=15462;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=Dn7AExi9kOpb4kbvZsYQzaTe1/K3uWL4UVL+vFuGLtQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnhsOVm6R2JV4lMLh0HO2WSwbkBxxWF0im5GEM3
 s2zrHwToKqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ4bDlQAKCRDBN2bmhouD
 18u4D/99tu1qrTUAznVyLt0LA2L7BicoL8heL+g2pjM0KHhMN+Ir9q7job/YtO0c7Rc9fwccR77
 Q4uUn7KPSNP1lypzr9mc9VVgmRgy8eruB4qZBKXMcfoyll1z1YYvkxIwefjMBq7frPDSIyNSgcM
 +rPcFKvKdP7muu1rW6cGm2pETvb1mVRSCBkngzSmhwlc/HCTw92U3Ri3afb8hKi7wn3RVDfcy4p
 ZaYec757+oN5flqHgM7nLzlEmOFaEhkUgOqKwGnV9baasNHZPYSJxBeN9KhC1YlgjYvFaLQ79jx
 o1y2agQ+Iok322rs3RBvs1VOFgzC2FP4LIc+Rqfq0E31c6vQy2J6VtNW6LWGV4iOm09WjFDi0Me
 Zq3W6a8eQLr+b1AHW36uuMbsjYdxSAZsgXv7LeV80BLU+I8hgy2mrJaPrW/0EhZoZrkZ1ztzvsy
 ub6+Mxos9aD/KXpZzcu4HvebKTOD3Ika+JOsvuTpgStn2abxypEw0o/KZZifEx50veT5fcO6GMt
 CqhEQXT2u8EBapZkrXBx8TClLPOCmyK3BHLU+4kG5oWbMsa8H4xsFmdtnr/TrJ9r//qA/eGHHa4
 J9Asc9fRTHGfjz7LchxYl60yCKY9bc0MOiQOFVRrbuxbzKjA6TBpHJ+pvXBdwZoRrdTwcUmkX5a
 AUfyqFvJHCcjRvA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Original-Sender: krzysztof.kozlowski@linaro.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=BnR3uB25;       spf=pass
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
 drivers/usb/cdns3/cdnsp-gadget.c    | 13 +++++++------
 drivers/usb/chipidea/host.c         |  3 ++-
 drivers/usb/common/usb-conn-gpio.c  |  3 ++-
 drivers/usb/core/hub.c              | 10 +++++-----
 drivers/usb/core/port.c             |  3 ++-
 drivers/usb/fotg210/fotg210-core.c  |  5 +++--
 drivers/usb/mtu3/mtu3_debugfs.c     |  3 ++-
 drivers/usb/mtu3/mtu3_dr.c          |  3 ++-
 drivers/usb/mtu3/mtu3_gadget.c      |  3 ++-
 drivers/usb/musb/da8xx.c            |  3 ++-
 drivers/usb/musb/musb_core.c        |  3 ++-
 drivers/usb/musb/musb_dsps.c        |  3 ++-
 drivers/usb/musb/musb_gadget.c      |  3 ++-
 drivers/usb/musb/musb_host.c        |  3 ++-
 drivers/usb/storage/shuttle_usbat.c |  4 ++--
 drivers/usb/usbip/vhci_hcd.c        |  3 ++-
 16 files changed, 41 insertions(+), 27 deletions(-)

diff --git a/drivers/usb/cdns3/cdnsp-gadget.c b/drivers/usb/cdns3/cdnsp-gadget.c
index 4a3f0f95825698f0524cace5c06bfcf27f763149..97edf767ecee9067e3db66c2373d4b1a7a2e29de 100644
--- a/drivers/usb/cdns3/cdnsp-gadget.c
+++ b/drivers/usb/cdns3/cdnsp-gadget.c
@@ -15,6 +15,7 @@
 #include <linux/delay.h>
 #include <linux/log2.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/pci.h>
 #include <linux/irq.h>
 #include <linux/dmi.h>
@@ -1671,12 +1672,12 @@ static int cdnsp_gadget_init_endpoints(struct cdnsp_device *pdev)
 			"CTRL: %s, INT: %s, BULK: %s, ISOC %s, "
 			"SupDir IN: %s, OUT: %s\n",
 			pep->name, 1024,
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
 	}
diff --git a/drivers/usb/chipidea/host.c b/drivers/usb/chipidea/host.c
index 442d79e32a65b59d551e274dc3464febead3820b..ced6076a8248427e2aaafd28fd7a6f5aaa1cbc05 100644
--- a/drivers/usb/chipidea/host.c
+++ b/drivers/usb/chipidea/host.c
@@ -13,6 +13,7 @@
 #include <linux/usb/hcd.h>
 #include <linux/usb/chipidea.h>
 #include <linux/regulator/consumer.h>
+#include <linux/string_choices.h>
 #include <linux/pinctrl/consumer.h>
 
 #include "../host/ehci.h"
@@ -56,7 +57,7 @@ static int ehci_ci_portpower(struct usb_hcd *hcd, int portnum, bool enable)
 		if (ret) {
 			dev_err(dev,
 				"Failed to %s vbus regulator, ret=%d\n",
-				enable ? "enable" : "disable", ret);
+				str_enable_disable(enable), ret);
 			return ret;
 		}
 		priv->enabled = enable;
diff --git a/drivers/usb/common/usb-conn-gpio.c b/drivers/usb/common/usb-conn-gpio.c
index c84b4a70008460f4607050b517a22fba4dc0ffec..aa710b50791b0282be0a6a26cffdd981b794acaa 100644
--- a/drivers/usb/common/usb-conn-gpio.c
+++ b/drivers/usb/common/usb-conn-gpio.c
@@ -19,6 +19,7 @@
 #include <linux/platform_device.h>
 #include <linux/power_supply.h>
 #include <linux/regulator/consumer.h>
+#include <linux/string_choices.h>
 #include <linux/usb/role.h>
 
 #define USB_GPIO_DEB_MS		20	/* ms */
@@ -111,7 +112,7 @@ static void usb_conn_detect_cable(struct work_struct *work)
 
 	if (info->vbus)
 		dev_dbg(info->dev, "vbus regulator is %s\n",
-			regulator_is_enabled(info->vbus) ? "enabled" : "disabled");
+			str_enabled_disabled(regulator_is_enabled(info->vbus)));
 
 	power_supply_changed(info->charger);
 }
diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 21ac9b464696f561c87b56eab4b4dce7c5e64533..c3f839637cb5a6222754ae7cd2ea137e8086768e 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -18,6 +18,7 @@
 #include <linux/sched/mm.h>
 #include <linux/list.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/kcov.h>
 #include <linux/ioctl.h>
 #include <linux/usb.h>
@@ -1496,7 +1497,7 @@ static int hub_configure(struct usb_hub *hub,
 
 	maxchild = hub->descriptor->bNbrPorts;
 	dev_info(hub_dev, "%d port%s detected\n", maxchild,
-			(maxchild == 1) ? "" : "s");
+			str_plural(maxchild));
 
 	hub->ports = kcalloc(maxchild, sizeof(struct usb_port *), GFP_KERNEL);
 	if (!hub->ports) {
@@ -4139,14 +4140,14 @@ static int usb_set_device_initiated_lpm(struct usb_device *udev,
 		break;
 	default:
 		dev_warn(&udev->dev, "%s: Can't %s non-U1 or U2 state.\n",
-				__func__, enable ? "enable" : "disable");
+				__func__, str_enable_disable(enable));
 		return -EINVAL;
 	}
 
 	if (udev->state != USB_STATE_CONFIGURED) {
 		dev_dbg(&udev->dev, "%s: Can't %s %s state "
 				"for unconfigured device.\n",
-				__func__, enable ? "enable" : "disable",
+				__func__, str_enable_disable(enable),
 				usb3_lpm_names[state]);
 		return 0;
 	}
@@ -4172,8 +4173,7 @@ static int usb_set_device_initiated_lpm(struct usb_device *udev,
 	}
 	if (ret < 0) {
 		dev_warn(&udev->dev, "%s of device-initiated %s failed.\n",
-				enable ? "Enable" : "Disable",
-				usb3_lpm_names[state]);
+			 str_enable_disable(enable), usb3_lpm_names[state]);
 		return -EBUSY;
 	}
 	return 0;
diff --git a/drivers/usb/core/port.c b/drivers/usb/core/port.c
index e857e532b35a4687bb8113610cb76d0386fa26b5..f54198171b6a3fb49c5f74f4a8a303b422d099eb 100644
--- a/drivers/usb/core/port.c
+++ b/drivers/usb/core/port.c
@@ -9,6 +9,7 @@
 
 #include <linux/kstrtox.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/sysfs.h>
 #include <linux/pm_qos.h>
 #include <linux/component.h>
@@ -25,7 +26,7 @@ static ssize_t early_stop_show(struct device *dev,
 {
 	struct usb_port *port_dev = to_usb_port(dev);
 
-	return sysfs_emit(buf, "%s\n", port_dev->early_stop ? "yes" : "no");
+	return sysfs_emit(buf, "%s\n", str_yes_no(port_dev->early_stop));
 }
 
 static ssize_t early_stop_store(struct device *dev, struct device_attribute *attr,
diff --git a/drivers/usb/fotg210/fotg210-core.c b/drivers/usb/fotg210/fotg210-core.c
index 49f25a70b32ebdd8bdad672d31342d5f89c4a502..7fb4d4715e9f7f5ca64bc4b40e0260e304791bc9 100644
--- a/drivers/usb/fotg210/fotg210-core.c
+++ b/drivers/usb/fotg210/fotg210-core.c
@@ -13,6 +13,7 @@
 #include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
+#include <linux/string_choices.h>
 #include <linux/usb.h>
 #include <linux/usb/otg.h>
 
@@ -119,8 +120,8 @@ void fotg210_vbus(struct fotg210 *fotg, bool enable)
 	ret = regmap_update_bits(fotg->map, GEMINI_GLOBAL_MISC_CTRL, mask, val);
 	if (ret)
 		dev_err(fotg->dev, "failed to %s VBUS\n",
-			enable ? "enable" : "disable");
-	dev_info(fotg->dev, "%s: %s VBUS\n", __func__, enable ? "enable" : "disable");
+			str_enable_disable(enable));
+	dev_info(fotg->dev, "%s: %s VBUS\n", __func__, str_enable_disable(enable));
 }
 
 static int fotg210_probe(struct platform_device *pdev)
diff --git a/drivers/usb/mtu3/mtu3_debugfs.c b/drivers/usb/mtu3/mtu3_debugfs.c
index f0de9985835313500ebcce6435dbdd5d0357f914..9bd74c505872dd05bf1237f96d1dde878f76b59b 100644
--- a/drivers/usb/mtu3/mtu3_debugfs.c
+++ b/drivers/usb/mtu3/mtu3_debugfs.c
@@ -7,6 +7,7 @@
  * Author: Chunfeng Yun <chunfeng.yun@mediatek.com>
  */
 
+#include <linux/string_choices.h>
 #include <linux/uaccess.h>
 
 #include "mtu3.h"
@@ -479,7 +480,7 @@ static int ssusb_vbus_show(struct seq_file *sf, void *unused)
 	struct otg_switch_mtk *otg_sx = &ssusb->otg_switch;
 
 	seq_printf(sf, "vbus state: %s\n(echo on/off)\n",
-		   regulator_is_enabled(otg_sx->vbus) ? "on" : "off");
+		   str_on_off(regulator_is_enabled(otg_sx->vbus)));
 
 	return 0;
 }
diff --git a/drivers/usb/mtu3/mtu3_dr.c b/drivers/usb/mtu3/mtu3_dr.c
index 8191b7ed3852107a4ddd55b39fc53987eb56fef6..ffa5b9401dad0a79fa8ded2c32d3bb4e49069951 100644
--- a/drivers/usb/mtu3/mtu3_dr.c
+++ b/drivers/usb/mtu3/mtu3_dr.c
@@ -7,6 +7,7 @@
  * Author: Chunfeng Yun <chunfeng.yun@mediatek.com>
  */
 
+#include <linux/string_choices.h>
 #include "mtu3.h"
 #include "mtu3_dr.h"
 #include "mtu3_debug.h"
@@ -109,7 +110,7 @@ int ssusb_set_vbus(struct otg_switch_mtk *otg_sx, int is_on)
 	if (!vbus)
 		return 0;
 
-	dev_dbg(ssusb->dev, "%s: turn %s\n", __func__, is_on ? "on" : "off");
+	dev_dbg(ssusb->dev, "%s: turn %s\n", __func__, str_on_off(is_on));
 
 	if (is_on) {
 		ret = regulator_enable(vbus);
diff --git a/drivers/usb/mtu3/mtu3_gadget.c b/drivers/usb/mtu3/mtu3_gadget.c
index ad0eeac4332d9f69d5237180a8a16cbc0eee35c2..bf73fbc29976ff8d99a3591b33f4f6b90ed9b4c3 100644
--- a/drivers/usb/mtu3/mtu3_gadget.c
+++ b/drivers/usb/mtu3/mtu3_gadget.c
@@ -7,6 +7,7 @@
  * Author: Chunfeng Yun <chunfeng.yun@mediatek.com>
  */
 
+#include <linux/string_choices.h>
 #include "mtu3.h"
 #include "mtu3_trace.h"
 
@@ -490,7 +491,7 @@ static int mtu3_gadget_pullup(struct usb_gadget *gadget, int is_on)
 	unsigned long flags;
 
 	dev_dbg(mtu->dev, "%s (%s) for %sactive device\n", __func__,
-		is_on ? "on" : "off", mtu->is_active ? "" : "in");
+		str_on_off(is_on), mtu->is_active ? "" : "in");
 
 	pm_runtime_get_sync(mtu->dev);
 
diff --git a/drivers/usb/musb/da8xx.c b/drivers/usb/musb/da8xx.c
index f772aa272bea65eb403655b81a7bec26a1d355e4..26fd71a5f9b2aeef43eea19fc58302e79b4abc4a 100644
--- a/drivers/usb/musb/da8xx.c
+++ b/drivers/usb/musb/da8xx.c
@@ -21,6 +21,7 @@
 #include <linux/of_platform.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/string_choices.h>
 #include <linux/dma-mapping.h>
 #include <linux/usb/usb_phy_generic.h>
 
@@ -306,7 +307,7 @@ static irqreturn_t da8xx_musb_interrupt(int irq, void *hci)
 		}
 
 		dev_dbg(musb->controller, "VBUS %s (%s)%s, devctl %02x\n",
-				drvvbus ? "on" : "off",
+				str_on_off(drvvbus),
 				usb_otg_state_string(musb->xceiv->otg->state),
 				err ? " ERROR" : "",
 				devctl);
diff --git a/drivers/usb/musb/musb_core.c b/drivers/usb/musb/musb_core.c
index 03b1154a6014ab27b8cca916af3a724b58046c53..7f349f5e781df481c44e84a02e8c93cf3279132d 100644
--- a/drivers/usb/musb/musb_core.c
+++ b/drivers/usb/musb/musb_core.c
@@ -72,6 +72,7 @@
 #include <linux/kobject.h>
 #include <linux/prefetch.h>
 #include <linux/platform_device.h>
+#include <linux/string_choices.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
 #include <linux/dma-mapping.h>
@@ -1937,7 +1938,7 @@ vbus_show(struct device *dev, struct device_attribute *attr, char *buf)
 	pm_runtime_put_sync(dev);
 
 	return sprintf(buf, "Vbus %s, timeout %lu msec\n",
-			vbus ? "on" : "off", val);
+			str_on_off(vbus), val);
 }
 static DEVICE_ATTR_RW(vbus);
 
diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
index 2542239ec64eafa2de5bd34f19cb0bb7d68b88ea..f877faf5a930cabad4e2a62289c4d8224b2befa6 100644
--- a/drivers/usb/musb/musb_dsps.c
+++ b/drivers/usb/musb/musb_dsps.c
@@ -24,6 +24,7 @@
 #include <linux/usb/usb_phy_generic.h>
 #include <linux/platform_data/usb-omap.h>
 #include <linux/sizes.h>
+#include <linux/string_choices.h>
 
 #include <linux/of.h>
 #include <linux/of_address.h>
@@ -378,7 +379,7 @@ static irqreturn_t dsps_interrupt(int irq, void *hci)
 
 		/* NOTE: this must complete power-on within 100 ms. */
 		dev_dbg(musb->controller, "VBUS %s (%s)%s, devctl %02x\n",
-				drvvbus ? "on" : "off",
+				str_on_off(drvvbus),
 				usb_otg_state_string(musb->xceiv->otg->state),
 				err ? " ERROR" : "",
 				devctl);
diff --git a/drivers/usb/musb/musb_gadget.c b/drivers/usb/musb/musb_gadget.c
index c6076df0d50cc7aa9b733c2685394cd810c39f4a..6869c58367f2d05b464a0f9a63008425730b94da 100644
--- a/drivers/usb/musb/musb_gadget.c
+++ b/drivers/usb/musb/musb_gadget.c
@@ -14,6 +14,7 @@
 #include <linux/module.h>
 #include <linux/smp.h>
 #include <linux/spinlock.h>
+#include <linux/string_choices.h>
 #include <linux/delay.h>
 #include <linux/dma-mapping.h>
 #include <linux/slab.h>
@@ -1606,7 +1607,7 @@ static void musb_pullup(struct musb *musb, int is_on)
 	/* FIXME if on, HdrcStart; if off, HdrcStop */
 
 	musb_dbg(musb, "gadget D+ pullup %s",
-		is_on ? "on" : "off");
+		str_on_off(is_on));
 	musb_writeb(musb->mregs, MUSB_POWER, power);
 }
 
diff --git a/drivers/usb/musb/musb_host.c b/drivers/usb/musb/musb_host.c
index 732ba981e607e750995db0b7cca2bb270e9793e6..6b4481a867c5e8189ce164b3f98cc3576b0b1a81 100644
--- a/drivers/usb/musb/musb_host.c
+++ b/drivers/usb/musb/musb_host.c
@@ -13,6 +13,7 @@
 #include <linux/delay.h>
 #include <linux/sched.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/errno.h>
 #include <linux/list.h>
 #include <linux/dma-mapping.h>
@@ -1028,7 +1029,7 @@ static bool musb_h_ep0_continue(struct musb *musb, u16 len, struct urb *urb)
 					+ urb->actual_length);
 			musb_dbg(musb, "Sending %d byte%s to ep0 fifo %p",
 					fifo_count,
-					(fifo_count == 1) ? "" : "s",
+					str_plural(fifo_count),
 					fifo_dest);
 			musb_write_fifo(hw_ep, fifo_count, fifo_dest);
 
diff --git a/drivers/usb/storage/shuttle_usbat.c b/drivers/usb/storage/shuttle_usbat.c
index 087c706bb315f9d4b921b9d9eb85df752c90337b..c33cbf177e6fcaa80e0d2639594d1314c59f4950 100644
--- a/drivers/usb/storage/shuttle_usbat.c
+++ b/drivers/usb/storage/shuttle_usbat.c
@@ -32,6 +32,7 @@
 #include <linux/errno.h>
 #include <linux/module.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 #include <linux/cdrom.h>
 
 #include <scsi/scsi.h>
@@ -651,8 +652,7 @@ static int usbat_hp8200e_rw_block_test(struct us_data *us,
 				return USB_STOR_TRANSPORT_FAILED;
 
 			usb_stor_dbg(us, "Redoing %s\n",
-				     direction == DMA_TO_DEVICE
-				     ? "write" : "read");
+				     str_write_read(direction == DMA_TO_DEVICE));
 
 		} else if (result != USB_STOR_XFER_GOOD)
 			return USB_STOR_TRANSPORT_ERROR;
diff --git a/drivers/usb/usbip/vhci_hcd.c b/drivers/usb/usbip/vhci_hcd.c
index 2f722849dfc9ff64b8801c56beca3cde49184f31..f4843ea5080c03cade2a77657701731af7dbf8b0 100644
--- a/drivers/usb/usbip/vhci_hcd.c
+++ b/drivers/usb/usbip/vhci_hcd.c
@@ -11,6 +11,7 @@
 #include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
+#include <linux/string_choices.h>
 
 #include "usbip_common.h"
 #include "vhci.h"
@@ -1449,7 +1450,7 @@ static int vhci_hcd_suspend(struct platform_device *pdev, pm_message_t state)
 	if (connected > 0) {
 		dev_info(&pdev->dev,
 			 "We have %d active connection%s. Do not suspend.\n",
-			 connected, (connected == 1 ? "" : "s"));
+			 connected, str_plural(connected));
 		ret =  -EBUSY;
 	} else {
 		dev_info(&pdev->dev, "suspend vhci_hcd");

-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250114-str-enable-disable-usb-v1-6-c8405df47c19%40linaro.org.
