Return-Path: <usb-storage+bncBAABBAVH3OMAMGQEJTA6ZWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x48.google.com (mail-oa1-x48.google.com [IPv6:2001:4860:4864:20::48])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAA65ADEAA
	for <lists+usb-storage@lfdr.de>; Tue,  6 Sep 2022 06:58:44 +0200 (CEST)
Received: by mail-oa1-x48.google.com with SMTP id 586e51a60fabf-11c68f9ddd4sf5597519fac.22
        for <lists+usb-storage@lfdr.de>; Mon, 05 Sep 2022 21:58:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662440323; cv=pass;
        d=google.com; s=arc-20160816;
        b=SMfuBPZ8OCxEG2QXeOkk31d1UfxYXquyo18V3R46tfd9xHq/Y03zvUmFyAr/wRi7wl
         umtdKIoIz2sryOyWEImOTM1C3E/O8AjaBEzsy/FPRwP0uMYD7h26/ZYdYit47VaUtPjd
         crh7CHBFFJZHhtLsWjG806cwc17bbLYD7F4UQIN7MA3gSxeGuoziZQ4GNtJlPkq1KlwU
         +EENJ0vyimEw8kOrChOV8qieCofsTy21gcSDaQ2EukWFcUs+A+2/VegudbfBI5BhXSrC
         YGmjzI4G3uz/cuZChicFr5jUMm5mA0xgZiqqnI3JnPBsWDUNlYUMdCECoCq0s2yHaOev
         8EWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=3yhIoWBgD9Esy43cDJwbc3PQCpuMLgYFiA2pOtug9Pk=;
        b=fml6s2QV7arHSyHXppK/3TBOC5X9Gz7p7zXGpuyXN6bKIdbLlorttKTHiA0hwc/2Ad
         9iU0h1o3Ruz4k5U32PLS9i/4V8LRJA9KNFft8uhx01CzidwBe+nfYrmU6Tf9+DmVkZ4B
         w8Fh3wvs5L+SHWRrcL0yO9ESRMtbyx2ZH1BL2Kbcg/H9zk+RZS6St0vpLxn3Elwkz7zJ
         jaaGGTMEuFtndQBYgY8WWxJTywrPlf80O9qNgcDg8WNwM1sVUa37EvjZkcMmT8CQte3j
         8SoG090I6s5D3T7cNm+CvM3xuepdJY0YBn9cZ3aljtXVpgTzb/UnqCHrAaGAWENKVz0n
         J7Ig==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=3yhIoWBgD9Esy43cDJwbc3PQCpuMLgYFiA2pOtug9Pk=;
        b=V/gkEaBbHYI72WFYX20gsJsOsIGzI8Rrtna7K7FL6i/FCfZEnCvPcRILI64NAdWUkY
         w3Ts8SSA9Ucadd0xWT/fVNQ3qEWh4AW4dow83Mn5bueQ0RSMMFySRB0sW/0LuH2sIsKa
         tzTOVeBerZungBTkzbbbNXaZRvLft08JwLsJU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date;
        bh=3yhIoWBgD9Esy43cDJwbc3PQCpuMLgYFiA2pOtug9Pk=;
        b=DzpOETK83h0pAczzzy9OjJa8S05vtA7UL+Q3+QdGMrPtpj4xs5CpLHJBgWpzchlm6u
         baWMSwA5PJmBQjrn4NN9fbMqXrJ1r0SnwISnlQeYBBjFm3bnImnykjSOqxdW4/4DA6wG
         lt7v0q+dE77G0w167/1zw+x2g4b7VnhXIBvP+SxZ1Xr1XNukwtlcPuEmtIMRyG5xFpK5
         xqiuENoSFScszytYCwRfFPezBtlqV2TeBO5VFZDZS1MQF08ZqoJ2y5AAVGPYy5i0PW2c
         axoKgux0Y0qJR76xhu//3frJuVhEi1GkhN0BaNvfKlPtxv1isD8+m/xyMDVL5Zyc3MLo
         cGzQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2F44aJk3/I/VHg8tqCTriO5Q77ZVxCFO2IVHfYIKmKzO6n77hj
	+rKvVKGLL867cE5ws2DIe66CXA==
X-Google-Smtp-Source: AA6agR4l87YMtZT1LPc0z7YoGJHhuBBPwtyiNWofOACeuvL0oDCwF9KVfLqY4ksJseOptm2JQIlvNw==
X-Received: by 2002:a05:6870:46a1:b0:127:b4fc:9f04 with SMTP id a33-20020a05687046a100b00127b4fc9f04mr952735oap.212.1662440323053;
        Mon, 05 Sep 2022 21:58:43 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:d8a5:b0:127:2be3:37fc with SMTP id
 dv37-20020a056870d8a500b001272be337fcls1941954oab.10.-pod-prod-gmail; Mon, 05
 Sep 2022 21:58:42 -0700 (PDT)
X-Received: by 2002:a05:6870:65a3:b0:127:6f4:8b0c with SMTP id fp35-20020a05687065a300b0012706f48b0cmr5843961oab.271.1662440322588;
        Mon, 05 Sep 2022 21:58:42 -0700 (PDT)
Received: by 2002:aca:b882:0:b0:344:8807:3e85 with SMTP id 5614622812f47-3499d4bad01msb6e;
        Mon, 5 Sep 2022 20:28:08 -0700 (PDT)
X-Received: by 2002:a17:903:32d2:b0:172:66e4:ba68 with SMTP id i18-20020a17090332d200b0017266e4ba68mr53567247plr.116.1662434887733;
        Mon, 05 Sep 2022 20:28:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662434887; cv=none;
        d=google.com; s=arc-20160816;
        b=zdVToA1iYfPGjW3+Wvigrl0oQuOHhFaj6lVjsnnXAxDZVa5i0z+lKp/1BwvYdKDSIl
         as9bW913sEtWB08p1L3MeJG/E/i5lNCfPxAIh9tTUergW65THoWKJfpAL12N/Hlc3bgn
         kYl8TEom7nosTd9XqGS+X7SrTSU7Vtvflk4q5mn3rSO+8ShrB5torEdsx3HJLFfORYk1
         zgx6o8rHHvGpS1cGFkIbXUJ/oYm2Lre40U51DCYwKxm4H2SQHCcIYOit7lWaPcL7xexi
         HsNIM02YcGS45E1CZWp7/dLx73qvwmiA4EAqECakgcj2ir+RE4aLz27KQowx0eugU+RH
         cdtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=+EAUqFEsxEzXqK9klU8Fs72no8joEteIps037I1vkm8=;
        b=fJyLqR2WwzMAFWz4DVeaV4Eo5I2Ses9R+DJZhtkILkKndVg/DAxeFgv6yieT1Sm9Dy
         wjVcZpQws43o0YYkp0Zm5pJE9JevbfbrvKeHOQctNJKUEj94JUGKEPdaxnbLcHKKD6nc
         AyeWY6jNGHIIggVz1tIS1ZvcIB7RlZMixoagyPHfVYetTzb+H3TY/zIiBSoLfLxvgJeG
         2PzzjUBJYUkpGWdO4JljscYP8RA+AJlSnM1y7D2fSba8EejWDIDxOP8Q9geGQoCFjHxR
         dFKgcB3MSLwCStvx7CQf2yWFdiP6XVZBDbu7RSVVbytJ7c0D/gjJcFCgiYpu2glz7xJT
         bMEA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id j10-20020a633c0a000000b0042b8b0466d3si13367752pga.375.2022.09.05.20.28.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Sep 2022 20:28:07 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 33c3d717d0db41d79eee4dec42b27327-20220906
X-CPASD-INFO: 257c066856f34e5fbdea0932a0ca9d41@e4Vxg11oZGhhVqh_g6iAoIKVlZFgZVO
	Bo2qDkWeUYFGVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3gXdxg2BkZg==
X-CLOUD-ID: 257c066856f34e5fbdea0932a0ca9d41
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:112.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:-
	5,AUF:13,DUF:4113,ACD:71,DCD:71,SL:0,EISP:0,AG:0,CFC:0.407,CFSR:0.084,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 33c3d717d0db41d79eee4dec42b27327-20220906
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: 33c3d717d0db41d79eee4dec42b27327-20220906
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 16328132; Tue, 06 Sep 2022 11:28:29 +0800
From: zenghongling <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	zenghongling <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH 3/3] uas: ignore UAS for Thinkplus chips
Date: Tue,  6 Sep 2022 11:28:28 +0800
Message-Id: <1662434908-5204-1-git-send-email-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.1.0
X-Original-Sender: zenghongling@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 124.126.103.232 is neither permitted nor denied by domain of
 zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
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

The UAS mode of Thinkplus is reported to fail to work on
several platforms with the following error message:

[   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled
               endpoint or incorrect stream ring
[   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000000
               1b000000 05038000

Falling back to USB mass storage can solve this problem, so ignore UAS
function of this chip.

Signed-off-by: zenghongling <zenghongling@kylinos.cn>
---
 linux-4.9.327/drivers/usb/storage/unusual_uas.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/linux-4.9.327/drivers/usb/storage/unusual_uas.h b/linux-4.9.327/drivers/usb/storage/unusual_uas.h
index bf0bb79..4206385 100644
--- a/linux-4.9.327/drivers/usb/storage/unusual_uas.h
+++ b/linux-4.9.327/drivers/usb/storage/unusual_uas.h
@@ -182,6 +182,12 @@ UNUSUAL_DEV(0x152d, 0x0578, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_BROKEN_FUA),
 
+UNUSUAL_DEV(0x17ef, 0x3899, 0x0000, 0x9999,
+		"Thinkplus",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: Thinh Nguyen <thinhn@synopsys.com> */
 UNUSUAL_DEV(0x154b, 0xf00b, 0x0000, 0x9999,
 		"PNY",
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662434908-5204-1-git-send-email-zenghongling%40kylinos.cn.
