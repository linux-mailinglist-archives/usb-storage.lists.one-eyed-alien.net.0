Return-Path: <usb-storage+bncBAABB366ZCOAMGQEYJSYILY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x46.google.com (mail-oa1-x46.google.com [IPv6:2001:4860:4864:20::46])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EBB6475B2
	for <lists+usb-storage@lfdr.de>; Thu,  8 Dec 2022 19:39:45 +0100 (CET)
Received: by mail-oa1-x46.google.com with SMTP id 586e51a60fabf-144da30bb39sf994997fac.10
        for <lists+usb-storage@lfdr.de>; Thu, 08 Dec 2022 10:39:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670524784; cv=pass;
        d=google.com; s=arc-20160816;
        b=vYYQFLz5hzS6H6ecw7ZUbAWD5Zp/md/dbK/fvqNOnbO+IfP9o2ch0gHtcsYFX6MUys
         STPPVG7hJcrDoLQ0laYkUbz+SLcJJnB/XQwKm5y82nJ3p7i7U1q+zJZvMTCcQo85Ypud
         fu4EYAujpdaaGCbpHQZbuVphSAoVSGpGnRpIAXNXWTmT4ewVwSSBGBvbztGfZRiylKMu
         cWrBQmVfQGmFspZ9d7Zgx5qEqBeY8RncW2jo+t3aEln6/UV6hVp7KjcHnuP82MAMsOFN
         UYmTkBohDD4ljgqbeSbu8GLD7mIieVk4AXRsXmUTAzqO7RPAKqwJegzyFWwbcWjZH0nc
         9fwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=612VctvUoZr4wN1UKL6enTN7VngOXBOqm3/RCzhqdlQ=;
        b=b6uOearkb2mWP5v2M5pFbcyIm/gjXPhaKLyDNXo3h32Hl4i/zcG7osOR6HkIjDl/rV
         eGwcIMcbNpFP/Yf4loFu1St9er57byxD2JJlWqrK/PmgwMGtB2Y1dG0CktwPqxvLkIlK
         T4HoED2z1LQrvbW2udK/jemiuvdT9sSWAY/aFgew5QKi2Mv6d8jRmJuenq9R0yGVTdqz
         XOiA4rWE/NK/FzrK17s3QN+fGQdXmeqie5sCZivoBKlWEEh1DYBP/CO+N7TnPRZrSJTO
         xcnjlLOkBcbhrE29PeTjJ79VOVl6bHXsP5+GAFjae+pfwGplPiBm0+nuTCWLFcybocJL
         3PJA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jiasheng@iscas.ac.cn designates 159.226.251.23 as permitted sender) smtp.mailfrom=jiasheng@iscas.ac.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=612VctvUoZr4wN1UKL6enTN7VngOXBOqm3/RCzhqdlQ=;
        b=R8NpJZ9RJuOMUqSn4OgfwzZIZKBc2azTkAJgI1IbE3lU7LIlEAR/fkwpS1RlZae2a7
         bHGDgiOB3kMMX2NLBprXcNShfpUDn95kfvJM3trMd/4qwI6fOVnL5bFcIJp5zod82U9n
         2TVMPfhCyhwklD1YUFhXuxrhWvysnsROzYV10=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=612VctvUoZr4wN1UKL6enTN7VngOXBOqm3/RCzhqdlQ=;
        b=O9gJ4j5HtbPMqbFov/VNdGk12St9xejXzEGKeSRXBXG+ff0h9xwlxzh9grYS2+UC85
         5d6CFMqfGqYWRe3DAqhVciJUjnpa9HZIKPRqE3KOhpLpERgwAOHE2acyJLm6dC277uzN
         rzGcdX51BdRnHzypABRe3TsDMIWwzPqge1QLjarfKGqnnV5vNb1el52dXX8rO8I2gGD0
         Lt9eAoYMPg4pGFp6Zo56/C6CYyAJBYWTigiqi0w1Q5mQEBrGyKEysPrPlN0zP8QE9N6u
         qK4JkWvzLtIm3MgR8f+Cv9zyn/A9+3ZJhcWQByw4852NK6yKo5GAJYEJli/B5s2NO2a/
         +ryA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ANoB5pkwMRgfc06tXIeuqlayDkW8EHUsQfpx97vVUHnytqG4P1mt0zk+
	+DSzSfKV14bQTlrgc/DASU9V9g==
X-Google-Smtp-Source: AA0mqf4v0dMWCvjbSG+7Vh43biVu0kuqSxP8Q3Cys/vBQA76EhcR+ZICd/Jat1+LKkwfymx9vy1U3g==
X-Received: by 2002:a9d:6442:0:b0:66c:5685:5415 with SMTP id m2-20020a9d6442000000b0066c56855415mr47796361otl.125.1670524783814;
        Thu, 08 Dec 2022 10:39:43 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a54:4e02:0:b0:35a:6687:ef26 with SMTP id a2-20020a544e02000000b0035a6687ef26ls1719560oiy.4.-pod-prod-gmail;
 Thu, 08 Dec 2022 10:39:43 -0800 (PST)
X-Received: by 2002:a05:6808:1a9d:b0:35c:4e7c:2eff with SMTP id bm29-20020a0568081a9d00b0035c4e7c2effmr7200379oib.94.1670524783202;
        Thu, 08 Dec 2022 10:39:43 -0800 (PST)
Received: by 2002:aca:b8c4:0:b0:35e:1421:fde0 with SMTP id 5614622812f47-35e2fdaa648msb6e;
        Thu, 8 Dec 2022 03:01:34 -0800 (PST)
X-Received: by 2002:a17:902:eb8a:b0:189:cca6:396b with SMTP id q10-20020a170902eb8a00b00189cca6396bmr20803730plg.140.1670497294143;
        Thu, 08 Dec 2022 03:01:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1670497294; cv=none;
        d=google.com; s=arc-20160816;
        b=bJSo4SHFSpkYtm6D7yhs1T+7hh8UtPVME8dh0tuPou+2XekoR6wQDKQMyaTajCwk1g
         KA8ifYxhBIl0HIfOty2Jp02kbpnXm8ErxPiMaA2z0lTRMPMdh7XQcBgDOOvMr/OYLBea
         +Loq8TqmcJG/G3JPg2/NfvgsGxYg6zW6BtV6BAUPVAnHwGfoIyCb2mB93hSoH063Eu1i
         0VSlONPo26tVat+zV7MmRv0fWHT5JdUQ5+1ckOWx3/AXOxFJzIzZlDlyw9J0IQw7VXa2
         NSH0xT5Mx7wp1w7FML0+0lmp+0JRMto0dtsiKkVshU0yECOg7sHCD71ULzSvYTg5dnZi
         HhzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=bQpuNPKp98bS/tPwyxl4YLN70h3RaDA9C9qUc+QsKfk=;
        b=e784tpNO/WnA8EEJtrH9Exi2qXZYiAE2GDC4qft/WQsZqaGHuh6mTYn/pbptcRAPd/
         IsQSt+L5FjMeX38ytm8Kc0ROO81T9Gw9FILsaT1r2yyAyACCkXvlXpAWm3Hyw2ECznWa
         tgmVnhNbFeBLsdlYDgY5wNYAJiBI1OlVvQ78UnKNCXNVLWkt6LL43KTe1Tunz6BGnGrn
         0zOWBCukCLwXMm2BcQ0OLWdJ9nMQ9ELnWtK12TQwZSTGCrU3IK3xO9CwvDlqW+9iy6wu
         J+bjCTPUMv2T3zDB8Tz6eZ/xuozyDDgj8UyOGqm3dDw/L8TDVKnsiPIu/jJjJ9s/+DWA
         P5Jg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jiasheng@iscas.ac.cn designates 159.226.251.23 as permitted sender) smtp.mailfrom=jiasheng@iscas.ac.cn
Received: from cstnet.cn (smtp23.cstnet.cn. [159.226.251.23])
        by mx.google.com with ESMTP id k11-20020a170902760b00b00188fce355c9si21772448pll.42.2022.12.08.03.01.33
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 08 Dec 2022 03:01:34 -0800 (PST)
Received-SPF: pass (google.com: domain of jiasheng@iscas.ac.cn designates 159.226.251.23 as permitted sender) client-ip=159.226.251.23;
Received: from localhost.localdomain (unknown [124.16.138.125])
	by APP-03 (Coremail) with SMTP id rQCowAB3t8zsw5Fj7yF3BQ--.26980S2;
	Thu, 08 Dec 2022 19:01:00 +0800 (CST)
From: Jiasheng Jiang <jiasheng@iscas.ac.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Jiasheng Jiang <jiasheng@iscas.ac.cn>
Subject: [usb-storage] [PATCH] usb: storage: Add check for kcalloc
Date: Thu,  8 Dec 2022 19:00:58 +0800
Message-Id: <20221208110058.12983-1-jiasheng@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: rQCowAB3t8zsw5Fj7yF3BQ--.26980S2
X-Coremail-Antispam: 1UD129KBjvdXoWrtw15uF1kGr43tFy8Jr4xJFb_yoWDtFc_K3
	WUXw1fu34Yka4a9w1DXF1jvrWIya1DZrnYg3WIqa4fJr9rZFWxWF1jv393CrW5GFyUZan7
	Ga93uF1rCr1xAjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUb2AFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2IYs7xG
	6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
	A2z4x0Y4vE2Ix0cI8IcVAFwI0_Jr0_JF4l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Jr0_
	Gr1l84ACjcxK6I8E87Iv67AKxVWxJr0_GcWl84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s
	0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xII
	jxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr0_Gr
	1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7MxkIecxEwVAFwVW8KwCF
	04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r
	18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_JF0_Jw1lIxkGc2Ij64vI
	r41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr
	1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvE
	x4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0JUFeHhUUUUU=
X-Originating-IP: [124.16.138.125]
X-CM-SenderInfo: pmld2xxhqjqxpvfd2hldfou0/
X-Original-Sender: jiasheng@iscas.ac.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jiasheng@iscas.ac.cn designates 159.226.251.23 as permitted sender) smtp.mailfrom=jiasheng@iscas.ac.cn
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

As kcalloc may return NULL pointer, the return value should
be checked and return error if fails as same as the ones in
alauda_read_map.

Fixes: e80b0fade09e ("[PATCH] USB Storage: add alauda support")
Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
---
 drivers/usb/storage/alauda.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 747be69e5e69..5e912dd29b4c 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -438,6 +438,8 @@ static int alauda_init_media(struct us_data *us)
 		+ MEDIA_INFO(us).blockshift + MEDIA_INFO(us).pageshift);
 	MEDIA_INFO(us).pba_to_lba = kcalloc(num_zones, sizeof(u16*), GFP_NOIO);
 	MEDIA_INFO(us).lba_to_pba = kcalloc(num_zones, sizeof(u16*), GFP_NOIO);
+	if (MEDIA_INFO(us).pba_to_lba == NULL || MEDIA_INFO(us).lba_to_pba == NULL)
+		return USB_STOR_TRANSPORT_ERROR;
 
 	if (alauda_reset_media(us) != USB_STOR_XFER_GOOD)
 		return USB_STOR_TRANSPORT_ERROR;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20221208110058.12983-1-jiasheng%40iscas.ac.cn.
