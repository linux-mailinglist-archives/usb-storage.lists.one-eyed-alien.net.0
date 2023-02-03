Return-Path: <usb-storage+bncBAABBE7Q6WPAMGQEWMPUEKY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id 8128568A447
	for <lists+usb-storage@lfdr.de>; Fri,  3 Feb 2023 22:09:40 +0100 (CET)
Received: by mail-qk1-x748.google.com with SMTP id v7-20020a05620a0f0700b006faffce43b2sf4008423qkl.9
        for <lists+usb-storage@lfdr.de>; Fri, 03 Feb 2023 13:09:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675458579; cv=pass;
        d=google.com; s=arc-20160816;
        b=ykpV2Wxqmb15jyu/ueBNDq3auSi3RIalWcDsblhAUWXlH1KPWFOpa4guqAOk7yFosm
         mVSPqf8waUfF5ulQmjD0bEtto3RjXgHGFQYn88j58XWX/ng5oM0ez+UScMfLN7EuTYoE
         OCUfO7IfXy3X17DRkEkYBe2nqZ0rzErTOVN8TzCZ3YXyDXC5Fk/jhHfodDOg6iG/R5f/
         Y8bDWrqIPCNSf6jZPlXC03htKSJOE/PQ348YYu+RPSCk2yV1V/ad8ljrl4lf1wgqvVQx
         d6LwHWeoRruR+EUqKGfrGX+W/xQCNDvBCSzuItgTzNOOwFxBbvKNKoWch/XVVAvh33sv
         SSdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=0Bq5qhMM9fLJI8ygzz10VKU+38eU/NBuFHDgosIU36U=;
        b=0B5bwvtw01jjoz90A7PVu3b/9leFWEzcskSJcl8my3rgaL5jC1iNn/VOSg5HUgmdHv
         1AgSu+kAwiEiwGSHgqKxBHgHBG7Xg613WlRonJc3BxDL1Uyq0b7TF/2DifihcQXtg6Nf
         T0x9RxLWKCVh7LYyjojWFBNkO2FL4mi/kKXC8200tiMerjQoHXzE7On9pJ+Dj+V5RBsJ
         s7zExMhbaNei7DBD6whZ0GZrTlmkvvFSvXrPfb8enRzHAeEtGu2uX7ZXsTlcbMGXB26a
         MXIbL5+VDmTwHZXo8yEQz0VXBykAXDN5hVJ49DRdT70KjfG2lWiIwbvJLv9zN/5g6nwS
         zk9g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of k.yankevich@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=k.yankevich@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=0Bq5qhMM9fLJI8ygzz10VKU+38eU/NBuFHDgosIU36U=;
        b=YQflUiWjt8wSKC0M8fmlxE3MjwuEfzBOtHDNRvKxfruTLl+We/Nc8CHF89NN0cQvMF
         IKg57nlVgXUYeKUTGH6eWWKRDGyGegVzkCvuLjuAdMN/Us4OZcp+ytord2TXgpnhFWfZ
         PSZ0Dzmh0B/+KQZQpHxaFJwu1CxOysdOBWh5M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0Bq5qhMM9fLJI8ygzz10VKU+38eU/NBuFHDgosIU36U=;
        b=6atTaaSzEctsWqKCi7SWmOKSGr3c1p93LBo9UV6i24dHRlyxXJiLVThmhz0bt9utEJ
         8/aMIR8eMdNVzu6XvwxHEp+7p4eIHe+glzMTueno3IbCKJf2JqnbQn/Kg/KjdNEXdQK/
         ZYsLLKt3uG+bCHO8/a3w69q+Adi2jtGztwQ2LgckcpL6Tzj2/LIQgF2lizH7j77/2ohx
         +9/SFe+ruYsMHGox8MroDhkjmY3uDB6OPTXsZB7nQNztDa/WujKt83Y5+E7HIH1oq8xp
         TetvF6OAvdUBmcZpslJetuM1b/hYGr0QVK4Rm10XoGzxYsUEFBJBXNzIbgpWJf8K7lLN
         fxvw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKXmkVhM3npNOmHGoBxOxtgnn9PT791P80CbRJlNXtxpyiCepIb9
	BtmN3rPyH1eaZ0echDuAYSLxVw==
X-Google-Smtp-Source: AK7set8QrlhZkfrjKeQA1G0LublvyttTwAxP26WsF9lof5qgKUp5tlHXqpnB/tyhK7p0fC01IacMDg==
X-Received: by 2002:a0c:f706:0:b0:537:646c:857e with SMTP id w6-20020a0cf706000000b00537646c857emr682246qvn.76.1675458579418;
        Fri, 03 Feb 2023 13:09:39 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:a17:b0:3b1:7ae:61e4 with SMTP id
 bv23-20020a05622a0a1700b003b107ae61e4ls6506207qtb.0.-pod-prod-gmail; Fri, 03
 Feb 2023 13:09:39 -0800 (PST)
X-Received: by 2002:a05:622a:1447:b0:3b9:bfac:8327 with SMTP id v7-20020a05622a144700b003b9bfac8327mr920785qtx.315.1675458578872;
        Fri, 03 Feb 2023 13:09:38 -0800 (PST)
Received: by 2002:a05:620a:2487:b0:71f:ff:11bb with SMTP id af79cd13be357-72e6fc75902ms85a;
        Fri, 3 Feb 2023 12:19:42 -0800 (PST)
X-Received: by 2002:a19:6759:0:b0:4d1:d8b8:84bc with SMTP id e25-20020a196759000000b004d1d8b884bcmr2942604lfj.10.1675455581835;
        Fri, 03 Feb 2023 12:19:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675455581; cv=none;
        d=google.com; s=arc-20160816;
        b=v1zTZeobeaYSsk/+aldaqdLNWvLyV4USuIV+bbCFMpC4rXd5/wGWY3960BwNdey1Vh
         l7rMdmSQV1ZgdhcugdEcfQSOqTOgdHNDmzaCDBWhaG7l+GxoIWjP2Dypu2ePdEX1R2Vn
         IaKwDyz5EkGyjhfOfEoQXRXJjJ3IXaKBsb1x6aqdu/xJRxccqLPxqXsWquGqCOGJEVIc
         XM/C62mWoOkF852rjNG54qF1+rJ5goeggEtbyJZ/phW6Ww/CsgTMWZ+9WwyVkDgFp1PK
         kzoTF9I/wzXsA364RU+Xs/QxceJtWZ5YE3S1e/F3eURBaA13vBhXAgHQEEunmQGSrmMp
         JmjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Mk29tEkqcVGz9+u+Je0PVYhStkNXkrdtT3Ov5XJv/vY=;
        b=xpr5tERUcnptmj6bnUatl8tGoblgJJ3/GKfJCrJvv30PRBXcLjzdN0/P4hMBJYE/l3
         easjeJ7X6oBQ5rEonIySxYQkcv+jbmIiHEjTFocyY+bernTgOvLrxklq5D7X1p1zMpMI
         Y1QMD4J4VeKR+978gr/AkrJui6ntrA0Nmidsn0Gg2EJVw0f0c3srHGEQ8ni8jJBT/hHj
         zEV51JYOQOk9iXDrn5nUCssc7dt7JNZ0nGRGJbb09fmsBPrmjl7f7dw2C9eyJPPj7IeM
         8IXMjh/xmBpTZUEbAE64GEBPhUJhhuvv0iR/qbpioJxmnW/+ZRW/vf5abiWP23mHRYbs
         ZFEA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of k.yankevich@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=k.yankevich@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id u28-20020ac248bc000000b004a20e1ebb6asi1707016lfg.558.2023.02.03.12.19.41
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Feb 2023 12:19:41 -0800 (PST)
Received-SPF: pass (google.com: domain of k.yankevich@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from uxi.kar (171.25.167.209) by msexch01.omp.ru (10.188.4.12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.986.14; Fri, 3 Feb 2023
 23:19:35 +0300
From: Karina Yankevich <k.yankevich@omp.ru>
To: Alan Stern <stern@rowland.harvard.edu>
CC: Karina Yankevich <k.yankevich@omp.ru>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>, <linux-kernel@vger.kernel.org>,
	<lvc-project@linuxtesting.org>
Subject: [usb-storage] [PATCH] usb: storage: sddr55: avoid integer overflow
Date: Fri, 3 Feb 2023 23:18:21 +0300
Message-ID: <20230203201821.483477-1-k.yankevich@omp.ru>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [171.25.167.209]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 5.9.59, Database issued on: 02/03/2023 19:59:06
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 59
X-KSE-AntiSpam-Info: Lua profiles 175255 [Feb 03 2023]
X-KSE-AntiSpam-Info: Version: 5.9.59.0
X-KSE-AntiSpam-Info: Envelope from: k.yankevich@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 502 502 69dee8ef46717dd3cb3eeb129cb7cc8dab9e30f6
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: {relay has no DNS name}
X-KSE-AntiSpam-Info: {SMTP from is not routable}
X-KSE-AntiSpam-Info: 127.0.0.199:7.1.2;omp.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1
X-KSE-AntiSpam-Info: ApMailHostAddress: 171.25.167.209
X-KSE-AntiSpam-Info: {DNS response errors}
X-KSE-AntiSpam-Info: Rate: 59
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 02/03/2023 20:01:00
X-KSE-AttachmentFiltering-Interceptor-Info: protection disabled
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 2/3/2023 3:58:00 PM
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit
X-Original-Sender: k.yankevich@omp.ru
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of k.yankevich@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=k.yankevich@omp.ru
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

We're possibly losing information by shifting an int.
Fix it by adding the necessary cast.

Found by OMP on behalf of Linux Verification Center
(linuxtesting.org) with SVACE.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Karina Yankevich <k.yankevich@omp.ru>
---
 drivers/usb/storage/sddr55.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
index 15dc25801cdc..4aeff73de147 100644
--- a/drivers/usb/storage/sddr55.c
+++ b/drivers/usb/storage/sddr55.c
@@ -236,7 +236,7 @@ static int sddr55_read_data(struct us_data *us,
 			memset (buffer, 0, len);
 		} else {
 
-			address = (pba << info->blockshift) + page;
+			address = ((unsigned long)pba << info->blockshift) + page;
 
 			command[0] = 0;
 			command[1] = LSB_of(address>>16);
@@ -411,7 +411,7 @@ static int sddr55_write_data(struct us_data *us,
 			command[4] = 0x40;
 		}
 
-		address = (pba << info->blockshift) + page;
+		address = ((unsigned long)pba << info->blockshift) + page;
 
 		command[1] = LSB_of(address>>16);
 		command[2] = LSB_of(address>>8); 
-- 
2.39.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230203201821.483477-1-k.yankevich%40omp.ru.
