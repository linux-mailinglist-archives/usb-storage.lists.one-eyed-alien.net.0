Return-Path: <usb-storage+bncBD54J6VTZUORB7VG6KPQMGQEQ63L37Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x148.google.com (mail-lf1-x148.google.com [IPv6:2a00:1450:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id D84B76A408B
	for <lists+usb-storage@lfdr.de>; Mon, 27 Feb 2023 12:26:55 +0100 (CET)
Received: by mail-lf1-x148.google.com with SMTP id o29-20020a198c1d000000b004d584f37a04sf1718534lfd.21
        for <lists+usb-storage@lfdr.de>; Mon, 27 Feb 2023 03:26:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1677497215; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ms+7ArmgvYwgJtTstQ1l0QSVnJ/1zE8WhbxUABWXnMc/R0oGrI+SEXjBiVnPvfYxL7
         5UOn3YwS1pCMvOyd1Bv2RlQaObqyycuws1hSWrR8qUmWu6egmXoCyE+Dt0MjJw4olSsq
         cXPTFEWvClgM1HLwqnhdy4aXf4evn+ntrcdMKkp61tkuTgt3wIMy33DAznnKFU5QRRNN
         Sb7RNaeci/FAxQ3CSt56RRoc95Gnljk8j2RTp/h4Fpsbscpp4LJ9iWWzck+FKrlus29D
         SyyzeX8kaPo5Z8jLWBAlOvzh2JqWbfk2Pffvrs/1JFuqmlTz0pXvaPylsapOaf317fz0
         ipiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PoGENHZuxucKr3HhpLL2WqxmL0ufySOhlnj2KWQI6ts=;
        b=ZH+wkGR86B2vW7lp4Tzc/LwWOXXIlB0t3TU8klMSA98xA9tqwL6MMQGB7fTyzknnvF
         RCJWIr6grfhm+23DDGfg6uRRjFocd6Qkn50z35Ijknq1NoMN9ioJaahkDp6UjF6OT6WJ
         39hfHNtFZ1aKujIRR5YIiBd0aJWABYBQEaQRsQhxsuEI5547TDTpHNJZy8UVCM7/9aSr
         +jmknEullRFjW7ObO5p1VKRNWimKJBgcu1CvVZtc68eX5g/oLhfLHM9tPkv8oiuMbA9m
         gRDpEedv17e4qAFmbZ7EWHlKFz3rCWuvfmf2A2XyXaVRpq2eh8p8y4/uvUx0SOD2PtVd
         caIg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of k.yankevich@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=k.yankevich@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PoGENHZuxucKr3HhpLL2WqxmL0ufySOhlnj2KWQI6ts=;
        b=X56xKYcKDQph9p2Bja1A0/4Ps2UdOXgim2p3ePP+Mm/x8O8DuAxQUTyQdK18nl6nE/
         34fRL/oaz+FXI6g5DOVWXYfjpgD80JT/kmgYWZB2s0fGLkEnaUz3Uow5vkTNk+8d8VJS
         bDGFp8n0G6VPJoqV4XygdDq2j5J/TF71Ja+nQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PoGENHZuxucKr3HhpLL2WqxmL0ufySOhlnj2KWQI6ts=;
        b=akjhlxEVd0Wrg5/lloM+cs6/fOqhh1pfOBXAn4TsgTRVmtE60ehuz2cSZNtanXoMw1
         7+jE2dMfx9FgKeYTn6BiAe30DYfQa+jfROo9c1lFOqUb6qib3eBP5/OpHF32yytaaQ45
         l2kZyZqdGbjcC6N4M/Y6hnSdSJkt/2nKl2XUKT5vB20PZYZULirqAnhEPYtjYMRhnHkx
         mciNB9o9Vj29O6fJBLjL8+lHrK5YK8eQbyTmTqV5nQGiubVH5GX24i8mOptqBYR2yzHt
         gOEl0hytR812x4HVoUQBY5TUczee32dFQDMKysl/RaS6LsEQHF7mMgLRgVG7Z2fA/6sL
         hytA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKX4lXr5HpDlaTOGaWVR5JzVjRsCcQDxA9tvkBMvLNjskdO4pxOj
	iWyM8Mkkf1bKfTq+aYFsnMo4Hg==
X-Google-Smtp-Source: AK7set+QnseQLtFQh69kvkBgQD09ezK7o3CBV8D5zFbxCBRGYyxhSU6EPWiFFDSmn5oJBePDe5CsAA==
X-Received: by 2002:a2e:597:0:b0:295:acc0:3017 with SMTP id 145-20020a2e0597000000b00295acc03017mr2003269ljf.4.1677497215072;
        Mon, 27 Feb 2023 03:26:55 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6512:3e26:b0:4db:3331:2b29 with SMTP id
 i38-20020a0565123e2600b004db33312b29ls4316651lfv.0.-pod-prod-gmail; Mon, 27
 Feb 2023 03:26:53 -0800 (PST)
X-Received: by 2002:ac2:4c25:0:b0:4dd:a355:24ba with SMTP id u5-20020ac24c25000000b004dda35524bamr4814339lfq.7.1677497213268;
        Mon, 27 Feb 2023 03:26:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1677497213; cv=none;
        d=google.com; s=arc-20160816;
        b=FPhOiIV+EY8GfAac+n7Yfd8UUqK5dmW8diTapdMPM5wRAIpvs34rRxy2LBQZrJ+Ahf
         jnVNtBHnRHWwophU52iqRbydV4/H0Y+XMLwMuZ5lmcSENszve2FDl25R8j+3sERbWQlO
         fm0/sZB02mO18n9iHJULJr5IvllUo0l99YNCcJCH/0tkSeCaW3xGua7ta2d+A7gBw+WY
         SFYBvhv00h1Q3MxGCj0cEc1VAySXLWWxbSFtBfG4sczbdPlBMRZ2S3LrDbzEbVgRi/ys
         cteZUVtnIFp5IOc19wsbWDCTDDyDnc4iDAEe8laUchUWDGkR8oHKgPafJGdQmW5stgkh
         krlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=npkZ4S3tJPwIKiPTNAyIgxhzCuBQVfEItFbQipX+ld4=;
        b=EP889QMvlJ//ar0KGkVFYxD+DTg8cz5yBQG3KLWwgwxk8SzhHEYQkG8i1f1ZKhIdtH
         KrCgmk0WdYIseB3LfOe4PQWznpMOQDS3UoeweoRDvThqPW8J5OAn2ex2kcpX89g93azc
         rND7AVkgAdq9sWT/4zaF4O8u+mC4UJ7/sUn3GhL5m2Ve084arvso4wT+tJFhG4jjxJpd
         Z0bQif5nwdAjnSFgpRfMEIUCDbweG9VYRajRRv6zCEvjrwQxncLQdxm4FjSReKa0Knl/
         Wc53owAX2w9B41E5DY50lYno/4mlCV9z+rfhH5I15COxgdsA4PpdSk2MVw8AF4YvmGZk
         GSfA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of k.yankevich@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=k.yankevich@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id a9-20020ac25209000000b00492c70bed4bsi3906141lfl.479.2023.02.27.03.26.53
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2023 03:26:53 -0800 (PST)
Received-SPF: pass (google.com: domain of k.yankevich@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from uxi.kar (171.25.167.209) by msexch01.omp.ru (10.188.4.12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.986.14; Mon, 27 Feb
 2023 14:26:46 +0300
From: Karina Yankevich <k.yankevich@omp.ru>
To: Alan Stern <stern@rowland.harvard.edu>
CC: Karina Yankevich <k.yankevich@omp.ru>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>, <linux-kernel@vger.kernel.org>,
	<lvc-project@linuxtesting.org>
Subject: [usb-storage] [PATCH v2] usb: storage: sddr55: clean up variable type
Date: Mon, 27 Feb 2023 14:25:41 +0300
Message-ID: <20230227112541.14849-1-k.yankevich@omp.ru>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <53bc0584-51eb-8bb7-de48-ca07fccafc19@gmail.com>
References: 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [171.25.167.209]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 5.9.59, Database issued on: 02/27/2023 11:01:50
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 59
X-KSE-AntiSpam-Info: Lua profiles 175726 [Feb 27 2023]
X-KSE-AntiSpam-Info: Version: 5.9.59.0
X-KSE-AntiSpam-Info: Envelope from: k.yankevich@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 504 504 dc137e1f9c062eb6c0671e7d509ab442ae395562
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
X-KSE-Antiphishing-Bases: 02/27/2023 11:05:00
X-KSE-AttachmentFiltering-Interceptor-Info: protection disabled
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 2/27/2023 8:42:00 AM
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit
X-Original-Sender: k.yankevich@omp.ru
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of k.yankevich@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=k.yankevich@omp.ru
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
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

SVACE static analyzer complains that we're possibly
losing information by shifting an 'unsigned int pba'
variables in sddr55_{read,write}_data().
It is a false positive, because of the card's total capacity
is no larger than 128 MB. But 'unsigned int' is more
suitable in this case.

Found by OMP on behalf of Linux Verification Center
(linuxtesting.org) with SVACE.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Karina Yankevich <k.yankevich@omp.ru>
---
 drivers/usb/storage/sddr55.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
index 15dc25801cdc..0aa079405d23 100644
--- a/drivers/usb/storage/sddr55.c
+++ b/drivers/usb/storage/sddr55.c
@@ -196,7 +196,7 @@ static int sddr55_read_data(struct us_data *us,
 	unsigned char *buffer;
 
 	unsigned int pba;
-	unsigned long address;
+	unsigned int address;
 
 	unsigned short pages;
 	unsigned int len, offset;
@@ -316,7 +316,7 @@ static int sddr55_write_data(struct us_data *us,
 
 	unsigned int pba;
 	unsigned int new_pba;
-	unsigned long address;
+	unsigned int address;
 
 	unsigned short pages;
 	int i;
-- 
2.39.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230227112541.14849-1-k.yankevich%40omp.ru.
