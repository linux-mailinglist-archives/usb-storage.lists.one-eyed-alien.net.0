Return-Path: <usb-storage+bncBAABBTW3Y6KQMGQEXH5LKRQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x248.google.com (mail-oi1-x248.google.com [IPv6:2607:f8b0:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id 3945A55377B
	for <lists+usb-storage@lfdr.de>; Tue, 21 Jun 2022 18:12:02 +0200 (CEST)
Received: by mail-oi1-x248.google.com with SMTP id t10-20020aca5f0a000000b0032edae98904sf7911603oib.22
        for <lists+usb-storage@lfdr.de>; Tue, 21 Jun 2022 09:12:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1655827920; cv=pass;
        d=google.com; s=arc-20160816;
        b=CyGqZLcx93Zk999DA3SlNitpQ4KHnHjve1PaBtyXq+HIdkNAwvUVCorqia67D11CgO
         jVtICPjv6zwABL6jjXHpzctf5cxgXeWMMZ63048U+pv7lZBvbXM6Dxl9kTs9ezq2JMVT
         C6KF/wEAwOOOqzBKKiXczDhsNFaSqlKKwjntlFOBTI2/nuVCq0GJ7fnG/bo5z/tvti72
         UbQpssIstODHvamo8CY6uhTTIAavAvOQ5SAZzJjKuemgLUZemqAp0ONulHik3H+3+w6q
         vV9WFwEJRsU0Ivc/SZhQrdMGO/Hqe6ZN8jorSvh6d3t/u8x8HP1GtI2YlQj2jTER2dD4
         teQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:feedback-id:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=uiRQccESX2fcUz3XJjpf6u1zyW21lGpzORpNCWxYYdw=;
        b=kFgV1pq23s7SZiw72zOqlIoORbGsv8c81DFVWTYShengykE6rJ4el9xkpQUr6NFCJ9
         GPKoOshSDdAZTsjJo0qA7qrDCBm+UkHN6MfbuQHGeHiawezvdMoAgLKIQfZhCbklVJ6k
         U4PvzeEr/zUOHrUp/nYH70mRpASLfFs57Kfe7WGOTpsXVWgPfoFTva37LJ9qnZwFyk/s
         aiWzjbfzWVBe/y3FpP33TWnn1ZPejCVJ9OkBryPowaLuMHj/5ZdfH7rvrjjccmO27WXs
         OWumqCZVnCj8flrSz3pMA998+dNblYCKx0g/yS013LYw9ZPC8r5WSHFg6pL94cnzL7kg
         8Fvg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of wangxiang@cdjrlc.com designates 175.27.65.136 as permitted sender) smtp.mailfrom=wangxiang@cdjrlc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version:feedback-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uiRQccESX2fcUz3XJjpf6u1zyW21lGpzORpNCWxYYdw=;
        b=RmeS4HPiHao9Em1Drs87TJBj1TKS4DfxnSQ7JzmK6RKxQYJC9Lqml3A5l6T8LUaUBm
         BLcnA3ozoMVXVS15vgzjAS3PB8z+eTCidU3kR/K/VyiQ9yGNLfW12lVfPu4VzsJTQloV
         ckGvuteZt5Y8wXKKX2ZHouytGBuHxBZD1xqNA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:feedback-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uiRQccESX2fcUz3XJjpf6u1zyW21lGpzORpNCWxYYdw=;
        b=g5YgYopfnKYnbdkamqpDhiyIF48RbMmG0eqQyAR2X/lKQTyRxqfTWeb5SnmqeIuONW
         sv30eZXW99dsF8qSr6EUqZM1EUUNEpZoFmHDhAoaQHSx9uP8uyaTJLbxO+PprJPixC99
         LgdSyPb7lJTovnWJprLJj1MREQxN+M/YBWGTbLYupxTd31ykf4S83rQELzbzOMUCDJ3d
         AhADJSnzhVj64uWW6LwUS1DqSZHvYxhFJGrGNL/xtNQ+YgLvQ4nyZpcn9FJ5ThxwIsaO
         Vi4VE/d2APVeRuq6caDjLK21+vKHr7Ub0T+Odx5ZVrB6vPYIysnSuRMw0glr2CHpXcoQ
         0jRA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AJIora/NWs8IkpLfoYQ6gfcxecplr58JT4qTMM5ZWz7wMzMVMxG8jD68
	sKcK+AlhSRinxs0obereClYpWw==
X-Google-Smtp-Source: AGRyM1s4dKY3o6Mh2TGeA2qSmMMOImMDA9vCdt7KpJQiBgmrjT+2UngcanrjVTDg9gYyJpugexDiWw==
X-Received: by 2002:a4a:c90d:0:b0:41b:c5d6:ba41 with SMTP id v13-20020a4ac90d000000b0041bc5d6ba41mr11410968ooq.46.1655827918416;
        Tue, 21 Jun 2022 09:11:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6808:1703:b0:322:76c2:8923 with SMTP id
 bc3-20020a056808170300b0032276c28923ls4998287oib.9.gmail; Tue, 21 Jun 2022
 09:11:58 -0700 (PDT)
X-Received: by 2002:a05:6808:1444:b0:32f:1e22:55d9 with SMTP id x4-20020a056808144400b0032f1e2255d9mr14141351oiv.106.1655827917968;
        Tue, 21 Jun 2022 09:11:57 -0700 (PDT)
Received: by 2002:a05:6808:2192:b0:32b:1fa4:362e with SMTP id 5614622812f47-3314cf26739msb6e;
        Mon, 20 Jun 2022 03:45:26 -0700 (PDT)
X-Received: by 2002:a63:1209:0:b0:3fc:818e:861d with SMTP id h9-20020a631209000000b003fc818e861dmr21868703pgl.62.1655721926100;
        Mon, 20 Jun 2022 03:45:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1655721926; cv=none;
        d=google.com; s=arc-20160816;
        b=t6Hder4gnTJeUGjFIe3jVJ+2Kj1qxYnRhxXHEHHNC63FJLFMeYFnRnwybEZLMRHI3R
         wr34sej0YE+jRYmT+QgPKHmslQu4HCEtgjMIsZ8qXB8COGBW5x/czmtoqrU9JNtlXQn5
         SkJ9rl/g0BwU8+lrZFQ7G+wX/p4i9EqSjsH9vIvqupibLAVBSFqowVGYlFJttswZTVyV
         XLUqL/AHEryojOnFTqzi/otAX8XvpYB2xWsBScSS0lI9nCKoh54KYyShn+TCOCnvHYVZ
         X8N+7f2QcSLpKAhQF8fMJrT8dgwPjYWEuXPUye6x/fm/2K7RMCnBRlq5eYna+GV3R68d
         +sGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=feedback-id:content-transfer-encoding:mime-version:message-id:date
         :subject:cc:to:from;
        bh=fnCSZNNBgwsWYdO2KD/tKgx732lBiXxHHABBLQuodPU=;
        b=qy/H7DESZ+FDi+9rw21odboS5UPew2XG9PGKQ7/EpZ34cQphfIVgegFfXmuIRje280
         nIu2Q6+GuCGE+Y8kZjNWGCez6J3yJt5fgUHOiw6xA31RimXQvwSwENwCed+414FZIlNB
         VWQhg49+py44fefv7yxvZtVrhkr1PgMFYcjEi5Sl/roCi9SUAu+q92P6bF4dysm5x81s
         KDm4K4F4WxHVvCLybzR6mRX8JhENig+Sp9XmMnkpvgHv+DDd4b2/u1gLtduY7AjsDDVV
         LzNF+9zaqQF8crNZp2CB8+j0gcwxXBk18dv3j1ULrhO2LDi9lNGEw/EcNivSiKBXp7RC
         a4LQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of wangxiang@cdjrlc.com designates 175.27.65.136 as permitted sender) smtp.mailfrom=wangxiang@cdjrlc.com
Received: from smtpbg.qq.com (smtpbg139.qq.com. [175.27.65.136])
        by mx.google.com with ESMTPS id 191-20020a6302c8000000b00401b6ab1e4dsi10223607pgc.471.2022.06.20.03.45.25
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jun 2022 03:45:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of wangxiang@cdjrlc.com designates 175.27.65.136 as permitted sender) client-ip=175.27.65.136;
X-QQ-mid: bizesmtp85t1655721776tjwauf34
Received: from localhost.localdomain ( [106.117.82.33])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 20 Jun 2022 18:42:46 +0800 (CST)
X-QQ-SSF: 01000000004000D0I000B00A0000000
X-QQ-FEAT: g1CXZ3gRPwz5VYsOrM7BP1wViAZWaqQ1Hg1S7R7wt+hdUXBZqVoZ2uMBp7GaL
	tbLjZ7Jw71bqlqXZqnvmzkZoLkC+ixa0mblREvfm3dHuFgQ1TVomk8wa/DZjeBC274F2j0b
	J4fC4tqtzQNuOhUff+Gnqs6zbSZuTUmvHYWj4jW/N/6n6GcxfFOKguFXyPIhDsfhcqN7DKt
	CGRgc+lWlAWR8g8XtEq+QVr3x6HsZv0xHum+EzMEsAKC+lYqOJAtzwbiX3pFz/nlwQ2JBZ6
	Sc+Guq9jfQn2qOM+D4Lt8uZhdAMqbcNzdry0iV9kk0OKGMnXEwqPmr5KlFAw2pNOnq9rXi8
	ICL3FfricJP+AsOdZ5OtuF3IIlpGw==
X-QQ-GoodBg: 0
From: Xiang wangx <wangxiang@cdjrlc.com>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Xiang wangx <wangxiang@cdjrlc.com>
Subject: [usb-storage] [PATCH] USB: storage: Fix typo in comment
Date: Mon, 20 Jun 2022 18:42:43 +0800
Message-Id: <20220620104243.4979-1-wangxiang@cdjrlc.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybgspam:qybgspam6
X-Original-Sender: wangxiang@cdjrlc.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of wangxiang@cdjrlc.com designates 175.27.65.136 as permitted sender) smtp.mailfrom=wangxiang@cdjrlc.com
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

Delete the redundant word 'the'.

Signed-off-by: Xiang wangx <wangxiang@cdjrlc.com>
---
 drivers/usb/storage/transport.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index 64d96d210e02..7449e379077a 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -1178,7 +1178,7 @@ int usb_stor_Bulk_transport(struct scsi_cmnd *srb, struct us_data *us)
 		/*
 		 * If the device tried to send back more data than the
 		 * amount requested, the spec requires us to transfer
-		 * the CSW anyway.  Since there's no point retrying the
+		 * the CSW anyway.  Since there's no point retrying
 		 * the command, we'll return fake sense data indicating
 		 * Illegal Request, Invalid Field in CDB.
 		 */
-- 
2.36.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220620104243.4979-1-wangxiang%40cdjrlc.com.
