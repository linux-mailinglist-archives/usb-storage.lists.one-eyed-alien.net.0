Return-Path: <usb-storage+bncBCB6X76TWIIRBXWMTO6AMGQE7FRIXPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC8BA1142A
	for <lists+usb-storage@lfdr.de>; Tue, 14 Jan 2025 23:34:07 +0100 (CET)
Received: by mail-qv1-xf47.google.com with SMTP id 6a1803df08f44-6d8f51b49e5sf108206456d6.1
        for <lists+usb-storage@lfdr.de>; Tue, 14 Jan 2025 14:34:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736894046; cv=pass;
        d=google.com; s=arc-20240605;
        b=OPkRQj0Eu12aT+O/N3+FZtJWBeLvel0JumWdH+pogIt0EyONDjteloMeaf63/ULjNv
         ND+1Dq0VzwNhJvnTJ8e3Gxy1j+xU52c0Q8q0Z+hr9pW161OGbuNY6P/Iw92Euzy/564x
         33tDF4AZKo0wAJhUoVvZTdakLUmJtkN+PJcCDGmHKkK7U8tmyAcvf8+i+iOMUqXkNs3x
         rkzRO7H8XagSPyvr7MRQxAGv0al8pBNV9Jxeqg+PDLbNA//BTqGE982KY6d8jmPi6UEW
         gV0z1fZqs/ZQ4MQaq86QkaViRuIAUUmq/Bv3SZCb2Hy8nXHAN7029ZxxIYOWz3KMGOLb
         204A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:mime-version:message-id:date
         :subject:from:sender:dkim-signature;
        bh=pzD1MW+0ZhEAXF4CpzUA+E7VliYvnOkQq8NriIFtG5g=;
        fh=i6sYP/OU4PwYKwUH+NDS9rIgjtJK52mvhb85kpc7hwk=;
        b=f5lVphkhq6MRD6yC/+Cu1WbVtC9q2qInD+6ECPjg1fgFR1BJl9eEExssV2DuBH1ceq
         GQ5OUxKL4priftUDUUJYOq4rchQHH5idQRZFxzzxHvPdeyQ4j0YLjXuj8JvFZQhIfw74
         +ME31k4oi8Zrk9dlWF8woHSC1KIJVIGrMCnS5yygfxcMbrfgwP2hTdMTOI/keKVaxv0s
         qxoGLdGRdBY0to0C2MTld6R9hvr84c4oAYLsZtQSMsLfvOokozj8owiDcMb98jItCQqV
         7ku9ZppKr34TP+SOTWuHIMM1jwOKRjsh924knFhZ3L5oztGGLfPuEF/DVoJ0VK28o8CO
         iRqg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=hRBBdPSl;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736894046; x=1737498846; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:mime-version:message-id:date:subject:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=pzD1MW+0ZhEAXF4CpzUA+E7VliYvnOkQq8NriIFtG5g=;
        b=VJ43uN1KOo1jpNuYmIL+EFWU1UeJLXqSgEuZiZkufMnmvum8HPBducwZtajGcyA4yt
         +Pyn9rNZOVL4qUZeNIKsMlVEtwi6GyRlLuSrDqQtXDOHgVlLJf/PMi0uZpakBRKhBbiR
         KoOCvpUfX/bDDGQNW3JvVwM65o7AGmoyTgrEU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736894046; x=1737498846;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:mime-version:message-id:date:subject:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pzD1MW+0ZhEAXF4CpzUA+E7VliYvnOkQq8NriIFtG5g=;
        b=oabYF6WUESFaDC9APHIGgVwajHOu2wl9iIVes4UjAhxrSy0PBzfrbayyxoSgKBi43n
         A5+Z5NQli2mX3YvGY/lFPjXRzJW1BwkYuYxOtHNTn9D6gvQydF6k+EsNTBCJzQ/HR/PC
         vMiWUiBFvohnfiSI4EKSCUAu3qLqKK+W0MALRjL/h08BsXxkDRP9DguEXvncr76yahON
         Xb5XqN+NYYoGi3YVxCIZV7V3l3PKdmbGJDBN88WZLC9ZF0sQp4tRMGeeDHj59b/yVb3P
         STtSJtdPfd/SHBBgYcu65yfoRkIEEhJ9YCfI4IDdCGAjuncWwyd8kwuBULMvMNakNONs
         4zKg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV3LrVv/doSwBPSoueeE/gxbr9bHeyEjo3u17m2mdxdMqHf8ENjQXkzRwlGkoNWKNOgugSCGA==@lfdr.de
X-Gm-Message-State: AOJu0Yw5m/Uly6fsCChtvcE1ie6KMsU67kdNcTyp12CnPDHafs+vccC5
	bTU2539A3spk/ceazVUz34gYHR2nceS1vZ4muO/mKlmBM6+x1NFFa0MZWQc7pJM=
X-Google-Smtp-Source: AGHT+IGDnw5sZkfVFTYz7fzOkqkOISesRAjS2g54ZLPzRz4I+//PXbTphtHYjIxidqg1oyCovQ3Cdg==
X-Received: by 2002:a05:6214:501a:b0:6df:9740:68a3 with SMTP id 6a1803df08f44-6df9b2b3231mr487404526d6.38.1736894046351;
        Tue, 14 Jan 2025 14:34:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:2c0e:b0:6d8:f5b9:2be3 with SMTP id
 6a1803df08f44-6dfa36fb374ls141100266d6.0.-pod-prod-07-us; Tue, 14 Jan 2025
 14:34:06 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUYwcEFoDmOhbPwtklqPJoi8ljgQq+yCUIo3mxIthGg2mZdfk8SnCTDfMOOfhhMGMIX1uvnjiZdNOJDbA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:2588:b0:7b6:d26e:9d89 with SMTP id af79cd13be357-7bcd97ae014mr3818010385a.42.1736894045870;
        Tue, 14 Jan 2025 14:34:05 -0800 (PST)
Received: by 2002:a05:620a:5649:b0:7b6:d314:a4e5 with SMTP id af79cd13be357-7bce9daadaams85a;
        Tue, 14 Jan 2025 12:05:47 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVchUyb7n/wq9aH+YTmBKtWG8GrIL7wGnWqB3ZyfPD0F+G0G/vmaDk6SRHLzvhJlx1Z8CZpwYaukOYH/g==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:3c85:b0:434:a1d3:a30f with SMTP id 5b1f17b1804b1-436e267736cmr211273515e9.6.1736885144716;
        Tue, 14 Jan 2025 12:05:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736885144; cv=none;
        d=google.com; s=arc-20240605;
        b=abfp6WnhCL35y7dDeYUzquT4nHE7ngyPuhaKQC+iqCX3QyuWXSrhVAPmyoxeRGgAkl
         MAstLhiQlO2H5IDHwI8l4DPb89NzMo2U+IGnE3i3aucw9yGT4K26vBW+QenH+VADlFwN
         WTlxMcrLi6JXw4djFJ3B9a/MHNBXsYQup6pO60APONXviRoa2proPeKaVj7xUytp7coL
         WmSex4p8kFKUwBnvsy2Nd8wu0AafOAQZkiO32RyW1vVzUK+VPmQupG4+Zh5celChjaud
         5rXlkzqh/gVg4mq9hLa9Q5g0mE+1U9mNx3VDygPFUjmVopYHPT1R4sv1BRSTrONDi+1I
         kfqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:dkim-signature;
        bh=v/k2E/bpxZ+0pCBE5McUXWaXdlpSIskBjR60ldq6c2s=;
        fh=lSPymtJkJ4f4sVDle1y8SOa6cOvLnioYzHQNqcgYpxM=;
        b=RWY/pndYoMyKORg5XJ6U/8mO24YN0aARoacMgGFRVQeTCJkUrSul5UUZT+fbUajTp5
         84L0idsZVLZ1Sw77PhIAvTzpssycTuO/AAMsdKGrYaGv/JKI+2ZZLM68xKDrbZsBTdLf
         M+LuVhIxFicDw1ssB9zQpDEUWGsW5wlw0QuhXVB6CiwsoP6buGuf5QI2rQEd6C5+mEvC
         h2vorDueddh8f5XrWu8dZwWLCs6ZifgzGrW/UDAe1n+7/4Q2wbOuNm6pD3zB6icYSGNq
         yGR5DNSljkT39msUY2FJd8O1DEJmQRfwrN8id1nEYI0SV/F8XcxzWRmocY8vHESpTTuo
         /4qw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=hRBBdPSl;
       spf=pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 5b1f17b1804b1-436e98cd3ebsor22334545e9.0.2025.01.14.12.05.44
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 14 Jan 2025 12:05:44 -0800 (PST)
Received-SPF: pass (google.com: domain of krzysztof.kozlowski@linaro.org designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWC3JaTcsktuBRTM1qsRz6HI99/UZP29KfEqL+CaGEYaoW138NrazpGKJ7zCRaJXXgDwvglMJxjdHVoVA==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncu1jRKtLFIIhhF7yFO6UXMAvCom6gsLN2vg/S9MEgnmoWaQ8u8g8twNz6+GeAq
	aq0keyCrOxdfXQcH2Hw9HpT09EylUDr1sDGtx9Ha8VmKGayQFAT7GnfIIpSiemzBN/B4N+kDHrj
	C3otTvzYXGS2pprhbTVo5jzAWzGdzItLK7G6Ikfz+R6bc5nrDopE52i5G/cWKm2m0PapmLp7o+O
	83rjEXa4/YCIZVSTd4pLXYeVbpMJh+mLpgEA6xGk9iK2GtC2vC4TtrtkpQNbMLc7lgvTwIK
X-Received: by 2002:a05:600c:3b83:b0:434:f586:7535 with SMTP id 5b1f17b1804b1-436e256093dmr93862205e9.0.1736885144276;
        Tue, 14 Jan 2025 12:05:44 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e9dc8802sm184622025e9.10.2025.01.14.12.05.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 12:05:43 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [usb-storage] [PATCH 0/6] USB: Use str_enable_disable-like helpers
Date: Tue, 14 Jan 2025 21:05:33 +0100
Message-Id: <20250114-str-enable-disable-usb-v1-0-c8405df47c19@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-B4-Tracking: v=1; b=H4sIAI7DhmcC/x2MQQqAIBAAvxJ7bkGzQPpKdMjcaiEs3IpA/HvSa
 ZjDTAKhyCTQVwkiPSx8hCK6rmDeprASsi8OjWo6pXWLckWkMLmd0LP8vMWhsdbPzhilrYcSn5E
 Wfv/xMOb8AVcM1WBoAAAA
X-Change-ID: 20250114-str-enable-disable-usb-388dcb33018d
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3465;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=nmJr11UuY4Bfe29oETroChEz/oyxl2OwFdz3Ug4E48g=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnhsOQUrWOP1qt6ZaAtaAURvG8jnYVem92OdTKj
 NPA4ew2kaqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ4bDkAAKCRDBN2bmhouD
 14N9D/9J6AaiLvv8QH+8H2cFh6pdmm/rQfg4Frl5WMv096NwDBf/uAl0OEVqaGylkk8cdPx7rUU
 3hBYhQmcLC5M/2+8Mo1AWu/CHY9Mcs5jm9bNvxAGg3jCJkJutCGxrXXZ0ZNyLT9MaaJvdVQf2JF
 80P4moM43/4fZDeaPo6q/VZes+cT+SpLCwbs9yX5eqgm/h9PPYGzsr/7shMxY7i5hrLDYV2mGUQ
 rpsQa44S7n6O5R4A4Tt+6ymJJzeoK9bEvs843GBlgaayhVTt6EmyzZkn+734u1peR1WDyj7oKNS
 4RgXHZngvusbGWjqueO3MNqy1bONr2+mclpIqnXHDeEuhA1lhbWfK0iiwrgy0jIrAJSm6Nuv/6w
 Bk6m/V4WhIO47l9UUcSoTKPrNbl0EGq+Z4pKF5VBV8gFgMtWMV527L4sdZzzaR+P+Hr22jZAdQm
 Mr82TWOFHJBZmRnieYa03lVXHGE6Te9SNOXK6E3Y4anz9NRJXfJ/fbq34pbmav3FjnXvn67CayC
 xW5JBsFXs92jzLXES7dcmncDS3SkC4ID6Hy2lK+9nYslS2uA0IDkrkP4ngMFPSYPBKd0Lnxf18z
 dQ/EhSJTd+8aBdYz/g0thsoW+VjBDZOXs8pMWAIchZ3Y2p96bHaCaG1k38Dk5g0ttv3jeZlcWHj
 8kEXX7jBl9sCL5A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Original-Sender: krzysztof.kozlowski@linaro.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=hRBBdPSl;       spf=pass
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

Simple refactoring to replace ternary operator for string pairs like
"enable/disable".

Best regards,
Krzysztof

---
Krzysztof Kozlowski (6):
      USB: Replace own str_plural with common one
      USB: host: Use str_enable_disable-like helpers
      USB: typec: Use str_enable_disable-like helpers
      USB: phy: Use str_enable_disable-like helpers
      USB: gadget: Use str_enable_disable-like helpers
      USB: Use str_enable_disable-like helpers

 drivers/usb/cdns3/cdnsp-gadget.c                   | 13 ++++++------
 drivers/usb/chipidea/host.c                        |  3 ++-
 drivers/usb/common/usb-conn-gpio.c                 |  3 ++-
 drivers/usb/core/config.c                          | 19 +++++++----------
 drivers/usb/core/generic.c                         | 12 ++++-------
 drivers/usb/core/hub.c                             | 10 ++++-----
 drivers/usb/core/port.c                            |  3 ++-
 drivers/usb/fotg210/fotg210-core.c                 |  5 +++--
 drivers/usb/gadget/function/f_ecm.c                |  4 ++--
 drivers/usb/gadget/function/f_ncm.c                |  3 ++-
 drivers/usb/gadget/function/u_serial.c             |  3 ++-
 drivers/usb/gadget/legacy/inode.c                  |  3 ++-
 drivers/usb/gadget/udc/aspeed-vhub/hub.c           |  3 ++-
 drivers/usb/gadget/udc/at91_udc.c                  |  3 ++-
 drivers/usb/gadget/udc/cdns2/cdns2-gadget.c        | 13 ++++++------
 drivers/usb/gadget/udc/dummy_hcd.c                 |  3 ++-
 drivers/usb/gadget/udc/fsl_udc_core.c              |  3 ++-
 drivers/usb/gadget/udc/omap_udc.c                  |  3 ++-
 drivers/usb/gadget/udc/pxa27x_udc.c                |  3 ++-
 drivers/usb/host/oxu210hp-hcd.c                    |  3 ++-
 drivers/usb/host/sl811-hcd.c                       |  3 ++-
 drivers/usb/host/xhci-ring.c                       |  5 +++--
 drivers/usb/host/xhci-tegra.c                      |  5 +++--
 drivers/usb/host/xhci.c                            |  3 ++-
 drivers/usb/mtu3/mtu3_debugfs.c                    |  3 ++-
 drivers/usb/mtu3/mtu3_dr.c                         |  3 ++-
 drivers/usb/mtu3/mtu3_gadget.c                     |  3 ++-
 drivers/usb/musb/da8xx.c                           |  3 ++-
 drivers/usb/musb/musb_core.c                       |  3 ++-
 drivers/usb/musb/musb_dsps.c                       |  3 ++-
 drivers/usb/musb/musb_gadget.c                     |  3 ++-
 drivers/usb/musb/musb_host.c                       |  3 ++-
 drivers/usb/phy/phy-fsl-usb.c                      |  3 ++-
 drivers/usb/phy/phy-mv-usb.c                       |  3 ++-
 drivers/usb/phy/phy-tahvo.c                        |  3 ++-
 drivers/usb/storage/shuttle_usbat.c                |  4 ++--
 drivers/usb/typec/class.c                          |  7 ++++---
 drivers/usb/typec/tcpm/fusb302.c                   | 24 +++++++++++-----------
 .../usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c    |  3 ++-
 .../typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c   |  3 ++-
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c |  4 +++-
 drivers/usb/typec/tcpm/tcpm.c                      |  7 ++++---
 drivers/usb/usbip/vhci_hcd.c                       |  3 ++-
 43 files changed, 124 insertions(+), 95 deletions(-)
---
base-commit: 114d4ae3196721b07f1159730665e0c3f032058a
change-id: 20250114-str-enable-disable-usb-388dcb33018d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250114-str-enable-disable-usb-v1-0-c8405df47c19%40linaro.org.
