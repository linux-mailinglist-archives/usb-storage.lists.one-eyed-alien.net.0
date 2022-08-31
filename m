Return-Path: <usb-storage+bncBAABBLVTXSMAMGQEASL5IXI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B265A78D7
	for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 10:20:00 +0200 (CEST)
Received: by mail-oo1-xc46.google.com with SMTP id c27-20020a4a9c5b000000b0044df4a6e6f4sf3907541ook.15
        for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 01:19:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661933999; cv=pass;
        d=google.com; s=arc-20160816;
        b=P21ArcSRZwaWejn+pDocLT/xLVUd59WdUomcSB8MKDNYaIwFvRM5WO0NcIM6iD8fzo
         Eo5j5Guddym+S0dtwv3SDhjvpZYqN5kTw/iMRjfAFPXDOVNS/ALbbJB0WIzOTUFGkvNv
         qpJGMSQB6zW8yJ1lBULpVZWQlchITf6te4rVO2JEqBAc+WEUKIfNdQHMCUUQUU5pr/Jb
         5/Bz6o/pUdp3h15UMYuHOyioLkgy1azPNjhq/h2mKdcR9/BtSRelVkJ1nd9BsdJCzD2d
         CN8B3qrTKu+BXe7CXZHz/gKZaWW8yL8jRsyLlweuddQlIUPjNwQGds42Hq+u7sCPrdqR
         8cKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=90ORXaouwwST41VrVkyoci589vrxNsT2KtL4QHpeDdU=;
        b=Y7JuJbORiuEV9QHJH1tGXQGf2aN6DLqt+R7gwck4915aPhrQQ2bbnAPbvNQd9n7Ast
         azrj+GvM48Z0ykQx9yY2wa7dq6U9BdJ1MV5e8i0ajk9ZFhlUNM0mYLHV7iDHLoEfUCJ+
         aQMwrzoaMo1JGmEEM+b+8eKMS08GZh2N6wTZBiwGssayYq0aY2u6Jmd3czl+qG4QTxu4
         y4wrc+kqBirGnI1AYhn3DTHHvMjbjsD1nD0qbVqJLq9vaOWUNaBftbzvJ2S76ZJCw/8k
         KHoonCUIwcjWAGD5G+lZzrmqTh8eXkppZmgNfVoywJnS7nUIU6UNVzvBSUMr3hvfvFWt
         f90A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=BRljOxtn;
       spf=pass (google.com: domain of zhongling0719@126.com designates 123.126.96.5 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc;
        bh=90ORXaouwwST41VrVkyoci589vrxNsT2KtL4QHpeDdU=;
        b=B12ze0aDTLT+XY67QuI1H45xbKxNUKVTZhILW/TRGDuO781zVw/lhcgAtNDh+ESr/x
         JgVQqtyPT0IRSqGkeZqzuafRFLrJ9iLyEDZMVC39k8Kuxd2lCKaqtTOlKFabQl2U1T6I
         RSEA/TajbSeOBC3c/wyw7anwoFx6lOCbu6xuM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :x-gm-message-state:sender:from:to:cc;
        bh=90ORXaouwwST41VrVkyoci589vrxNsT2KtL4QHpeDdU=;
        b=GP8BtrrHKXdbsAL4rYIlou8fywtO8ByAvRR5NN3kPqSl0Jj+wCajzwwiMZuhxRL/S0
         +K7wj7f7JvLEDjBC+Tp8Rja0A9CuspmIvm3P9hzOgITEpqsFjxaBVzLMyl3IdxAbaTpL
         dAqIlKBdzJZUuBbHpAVv2oPC5Ji9X9nDhByxPNeEOnP7TN82VSWvfdRHBQ7RR64DxY20
         hrSAZgXuar+b7CUioxjqJcUYB1a/kdIyhXBy288H158deIlcAD1R3bwNKb+4PPJaqpKd
         lmuX9WOJ3JGmFw3Dxk502tzkKix5vEIy1acMa++F6XHzQP1QO//hUa4kvNhREpdbGvT2
         LZBQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0oMevf/L4UPMTHXCJG66/Jx2F4R14YlXHRuUpoVA2MRuRiw0kB
	24isHJ9YcTFHFJOWDOvXJ/dj4w==
X-Google-Smtp-Source: AA6agR4rtkuEYQ7YljIDei5YdHFCSiLlzNs0VndHZDUjgfT+23nDIQ2jRoHT2OvfYZ4fEKbvoNSLaA==
X-Received: by 2002:a05:6870:a1a5:b0:120:8d35:c8a3 with SMTP id a37-20020a056870a1a500b001208d35c8a3mr826805oaf.237.1661933998758;
        Wed, 31 Aug 2022 01:19:58 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:a896:b0:11c:6b75:3280 with SMTP id
 eb22-20020a056870a89600b0011c6b753280ls29203oab.9.-pod-prod-gmail; Wed, 31
 Aug 2022 01:19:58 -0700 (PDT)
X-Received: by 2002:a05:6871:825:b0:11e:8862:d5f5 with SMTP id q37-20020a056871082500b0011e8862d5f5mr862365oap.183.1661933998457;
        Wed, 31 Aug 2022 01:19:58 -0700 (PDT)
Received: by 2002:aca:d755:0:b0:342:eb60:4210 with SMTP id 5614622812f47-347bf55dd7amsb6e;
        Wed, 31 Aug 2022 00:13:35 -0700 (PDT)
X-Received: by 2002:a17:902:ba8e:b0:172:ddb9:fe45 with SMTP id k14-20020a170902ba8e00b00172ddb9fe45mr23866483pls.86.1661930014592;
        Wed, 31 Aug 2022 00:13:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661930014; cv=none;
        d=google.com; s=arc-20160816;
        b=VL+Wkr4CyInCdfkgl9MC3fgtOOOI3NGU+HGuUM1MnaZiLks5BiawFOMSVvDPaRSmXi
         zrC+pDfC5HTkJYR0tXLs6kCL5oyIwJOwiZXmA3ZiOPG5iWVt5Z59qTbAH899d5mxt2Jo
         v6dKIaeoPIeW0GGb+KuY6DVUPXl1SNZt1MnSHuHHeGSH5zRszKS5hsqo5siAvgUP9AlQ
         ISSeTrHUjC7F+iJKGXYidThefa1lwDC4ZlUKqAwZeNa+5ellX1T9fs0Ma16sHB0QdAZr
         JgeXMr16aZe3Cl4q8vqPidp/6+dlplMM3uMGFyiecYKx+kKg8OBdEBo9EvnwNJTFo+HM
         XCGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=/EzJWlbHt3cXKTs1joP/BBThSk0aPPfVBtSgysIDDCY=;
        b=nWggCONL7BKyjkt57x/9ThHdR5HBmw8TG7S3rUnR2xICoVvBZo5U17FsOfacFFzYer
         XVEjSnfXbZKAGO/Xv34YQj/CDDYG7d28kGI1YiS6TDDSLdUNfNQhTldcT1bM0cZ6mwT3
         Xyrw9FKcIr/mAB9AM6VRoi2lY0twmNprSXNUPKMHwvu7yzzqu5l8IULZemr0I3UWxqK3
         4mSZVGmTQ0yeg0tKgdhF9MitAZNsNOUKvwdfFCZ8Juqx++4g2ID3qkMryXlB3X4iGm3k
         9LEIIfyhqieZzCk2lsxfX9hxs7jYNG/A6f3XObHFeYjBaN0oGtyc+ColvebkuvFc9S/t
         nF5A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=BRljOxtn;
       spf=pass (google.com: domain of zhongling0719@126.com designates 123.126.96.5 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from mail-m965.mail.126.com (mail-m965.mail.126.com. [123.126.96.5])
        by mx.google.com with ESMTP id y6-20020a17090a86c600b001fad91eb15esi1145070pjv.30.2022.08.31.00.13.33
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 31 Aug 2022 00:13:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhongling0719@126.com designates 123.126.96.5 as permitted sender) client-ip=123.126.96.5;
Received: from localhost.localdomain.localdomain (unknown [112.64.161.44])
	by smtp10 (Coremail) with SMTP id NuRpCgDXO+wRCg9juFz+AQ--.16257S2;
	Wed, 31 Aug 2022 15:13:23 +0800 (CST)
From: zenghongling <zhongling0719@126.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com
Subject: [usb-storage] [PATCH] uas: add no-uas quirk for Thinkplus and Hiksemi usb-storage
Date: Wed, 31 Aug 2022 15:13:51 +0800
Message-Id: <1661930031-21908-1-git-send-email-zhongling0719@126.com>
X-Mailer: git-send-email 2.1.0
X-CM-TRANSID: NuRpCgDXO+wRCg9juFz+AQ--.16257S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Zr48JrW7WF17urWfWFyfJFb_yoW8Xw1fpF
	n8ZrZ5C397W3WavrnI9w4UCr93Ja1vkF1kGay7Kw15Zw1rAayUXrnxJr48Kry7Cr43Xr40
	vF4qvFWxKrWUG3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0pi3Ef5UUUUU=
X-Originating-IP: [112.64.161.44]
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/1tbiLRNu0FpD-YSAPwAAsf
X-Original-Sender: zhongling0719@126.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b=BRljOxtn;       spf=pass
 (google.com: domain of zhongling0719@126.com designates 123.126.96.5 as
 permitted sender) smtp.mailfrom=zhongling0719@126.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=126.com
Content-Type: text/plain; charset="UTF-8"
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

The UAS mode of Thinkplus and Hiksemi is reported to fail to work on
several platforms with the following error message:

[   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled endpoint or incorrect stream ring
[   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000000 1b000000 05038000

And when running iozone will disconnect from the USB controller, then after re-connecting the device
will be offlined and not working at all.

Signed-off-by: zenghongling <zhongling0719@126.com>
---
 drivers/usb/storage/unusual_uas.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index cdff7dc..bb0d31d 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -215,6 +215,24 @@ UNUSUAL_DEV(0x4971, 0x1012, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_IGNORE_UAS),
 
+UNUSUAL_DEV(0x17ef, 0x3899, 0x0000, 0x9999,
+		"Thinkplus",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
+UNUSUAL_DEV(0x090c, 0x2000, 0x0000, 0x9999,
+		"Hiksemi",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
+UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
+		"Hiksemi",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: Richard Henderson <rth@redhat.com> */
 UNUSUAL_DEV(0x4971, 0x8017, 0x0000, 0x9999,
 		"SimpleTech",
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1661930031-21908-1-git-send-email-zhongling0719%40126.com.
