Return-Path: <usb-storage+bncBAABBLWHT2VQMGQELXNVRPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF107FE155
	for <lists+usb-storage@lfdr.de>; Wed, 29 Nov 2023 21:48:47 +0100 (CET)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-41cbb2970f4sf3588331cf.2
        for <lists+usb-storage@lfdr.de>; Wed, 29 Nov 2023 12:48:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701290926; cv=pass;
        d=google.com; s=arc-20160816;
        b=ATKMfo2mtFcFHyAkvbQAIs5+MydwbOuyoJHtm4exlBo12dBCLAXsA+InVlSuoHtIQB
         sAydnlWomEspQwZ3KQksp5pnLe7vADhz7npdzoPdb9c2NsVETBD2uiyTUvY88InF+GIC
         BWK/MqB5EeL3wSR1c30SKeeI9UsMrKbtMdI5bS6JZ3s2DSxna6ecEVIYZ8aqFSw2Bxuh
         /rY5OkKtzNu7GjMn+IcxYbjIwR9IrmfbRD3RqngRs9h5oNqI2pywHBc7xJ8yuklkIjvL
         aM/8caP5/AQDPCXRaXmZc+EP8/RckW1U/3AMLo1iG3d1j07fQNcz7GZ5qA8CNhPNA6ck
         Tnxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:organization:subject:from:to:sender
         :dkim-signature;
        bh=xdBkWasCkgSC3W0Am0Rb4zLzCBVRuFKqhxT9QP6OZE4=;
        fh=6jaHYsStJCSjhIQ94JtLT8lqyoa/UlN9WCYGkLKbq3c=;
        b=mFBNBvpOsFyJiF+7C4EJi8xvEk+jDjwDE3+DKpoZTwXEGHQhiw2P3lzlAXn19QF+jg
         c4kYlFE2zJqTWQrFA57JwQ/YGO97eLEMySd6BR769/eCBosE665e2uc58mhIxmGsYz7K
         aBlSj0g3EA9oHY2K2g6TNZ67ap4KWnJrhmIa06rnGqXzhBBg7Jk5CPmsBe5k8INp0rlt
         C+PmXMW8pZYropoCJuFdSOvhbli/1+/17+5GCWOKhQJsQd284EB7j1a70i3mNG1fWegp
         n+1fb+guz48Vv23niiiP+sterxITlmzrhqYLYNLI38pJhElTGZl4O09V0QqvntBlaDGV
         0Svg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1701290926; x=1701895726; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:mime-version:user-agent:date
         :message-id:organization:subject:from:to:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xdBkWasCkgSC3W0Am0Rb4zLzCBVRuFKqhxT9QP6OZE4=;
        b=IHk08CH0hrDv+9YO/3JCha+Y6n/qQABfrmtVSVJDJwlFuPTet8cXfX1vBd5qTMvySA
         b2Wcgndm98WhswgJBmuSNjwdjbUtpCPDrUM0DNS4xqJyAudNnrhKYZUZE6mluUo9BXTS
         hCkmCcvrxd9SjqkYt2UYxadEMvP4j5pFhvrPQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701290926; x=1701895726;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:mime-version:user-agent:date
         :message-id:organization:subject:from:to:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xdBkWasCkgSC3W0Am0Rb4zLzCBVRuFKqhxT9QP6OZE4=;
        b=Eg21pKuvQYSR1u6CrwICgEIhrfL0vVmKWFl+4/B6PESvILMx1FPYqbS+EzI3q2AFwv
         dd2M9KpbdnbQvjdi21Dft39qDJbTHQ/Awx3a36aYPLbL10cEIBvv/KwYvVKz5FmIn9At
         0/Q/Q8piLBZF9LVi/3oSdO0OnNiYM3KoFLbodzZAbcgI58Y0ypUoa9qrFr0bKkh8x08D
         C6pHGLER04F85Xukd1ZayRIdZ5znmP3XmTbIMCOoT2D2aKCg2LzhC1JIc8qiXoCvew20
         vpV1S5aurHDrbhfIGX/qIOWAM7XlAgj/uiAwsP+FDWsWwbSai2ztaZQGnOf3xNsfYnup
         3Qtg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Ywk/j7K+BSAYmzY2WmqARhtegmoB+ytQbbcO1zxVsu/DvL3jQJ3
	SdZ05D9mmcpTiW6M8HnT859e5A==
X-Google-Smtp-Source: AGHT+IEJy5VS61FseA8ppZ7DO6vWqH5qh8QVmYnaasEg1Y9OCTJI9QA/3IG+CU3PGoiovPU8ypY3iA==
X-Received: by 2002:a05:622a:40b:b0:423:7588:807e with SMTP id n11-20020a05622a040b00b004237588807emr25232354qtx.35.1701290926466;
        Wed, 29 Nov 2023 12:48:46 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:5bcd:0:b0:423:84c3:cf93 with SMTP id b13-20020ac85bcd000000b0042384c3cf93ls260070qtb.1.-pod-prod-06-us;
 Wed, 29 Nov 2023 12:48:46 -0800 (PST)
X-Received: by 2002:a05:620a:c81:b0:77d:c9d4:f336 with SMTP id q1-20020a05620a0c8100b0077dc9d4f336mr85536qki.3.1701290926069;
        Wed, 29 Nov 2023 12:48:46 -0800 (PST)
Received: by 2002:a05:620a:2410:b0:778:a9dc:3cb2 with SMTP id af79cd13be357-77d641b56c2ms85a;
        Wed, 29 Nov 2023 12:43:58 -0800 (PST)
X-Received: by 2002:a2e:7804:0:b0:2c9:af4f:4ca9 with SMTP id t4-20020a2e7804000000b002c9af4f4ca9mr4934290ljc.13.1701290637332;
        Wed, 29 Nov 2023 12:43:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701290637; cv=none;
        d=google.com; s=arc-20160816;
        b=YitkZj5mixC/14CsQ4c21kRhRWYWFyLqaq/yE61JVyFJ8baNAYGZPzGre1Hu772o0N
         Z4fmafY0f8Tq97NtGt0wvY14+ATmioei6mCURdJBot8bo1WCZOBwgNdAjKzQo/+ORnFI
         fbwI3gltxlYlPCJUeuwCnHKIpIAQYPvJl0lHI2DBAlTrKIJyGds9jRdybPIGbsm4mmhr
         PZHZrd5yk74kUYqyWjz4BlhmlO6GPkHYPiL0gngbH6zwAVGcqXgQUTLpHllSd7/A09L0
         jx3hsP6BSHU8O+ZSEOPlAUco9BDaV9AMtY9F1hT0FERilZCnDWlDF2wnq3KzwT/duLcM
         f6Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:organization:subject:from:to;
        bh=lOv2pnRA21Y6DAMf5Xbp/f/bmvzwOMqGWzIWTsbfQPM=;
        fh=6jaHYsStJCSjhIQ94JtLT8lqyoa/UlN9WCYGkLKbq3c=;
        b=HGnrCTt3XCfrQAN4FY4HeOQMUoYFWF00HAZJM/vH0piJCZYBXxREKMxDHCZcevvak5
         TQ0u5OdoRCuqc0XxoRRmNAojfJZ5iIQ3JG2PQ/GATx0k/g/AyCMR0yn34pr/+JTC0QrF
         2LAONaBhlkt+/CdlhOLKJD4Xb6Eo4LmTie5v7iwLQnqO3/8oYGnBarP3nfgloN6nsSYc
         hjzrj5N4ML/NZLWDbSGZk0T15tetenYfoEDZKfjy051xDzy6q+shVEApRcUx71kAqDxt
         xjXwQh28dDW0J7yjMV+OnTzArG7iZ1E9GB/gQiKXbimZYeOevFaDi1yfXRWw4BNHcT6L
         PUNg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id x20-20020a05651c105400b002c9c30136e8si418852ljm.558.2023.11.29.12.43.57
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Nov 2023 12:43:57 -0800 (PST)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.1.103] (178.176.78.44) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Wed, 29 Nov
 2023 23:43:50 +0300
To: Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Subject: [usb-storage] [PATCH] usb: storage: freecom: drop useless assignment
 in init_freecom()
Organization: Open Mobile Platform
Message-ID: <4d3fb70f-bf2f-96cc-a8fb-1ef658a24920@omp.ru>
Date: Wed, 29 Nov 2023 23:43:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [178.176.78.44]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.0.0, Database issued on: 11/29/2023 20:26:37
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 59
X-KSE-AntiSpam-Info: Lua profiles 181714 [Nov 29 2023]
X-KSE-AntiSpam-Info: Version: 6.0.0.2
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 5 0.3.5 98d108ddd984cca1d7e65e595eac546a62b0144b
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: {relay has no DNS name}
X-KSE-AntiSpam-Info: {SMTP from is not routable}
X-KSE-AntiSpam-Info: {Found in DNSBL: 178.176.78.44 in (user)
 b.barracudacentral.org}
X-KSE-AntiSpam-Info: 127.0.0.199:7.1.2;omp.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1
X-KSE-AntiSpam-Info: ApMailHostAddress: 178.176.78.44
X-KSE-AntiSpam-Info: {DNS response errors}
X-KSE-AntiSpam-Info: Rate: 59
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 11/29/2023 20:30:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 11/29/2023 6:46:00 PM
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit
X-Original-Sender: s.shtylyov@omp.ru
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
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

In init_freecom(), the results of usb_stor_control_msg() calls are stored
in the local variable and then printed out by usb_stor_dbg() (if enabled),
except for the 1st call, the result of which is completely ignored.  Drop
the useless assignment.

Found by Linux Verification Center (linuxtesting.org) with the Svace static
analysis tool.

Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>

---
This patch is against the 'usb-next' branch of Greg KH's 'usb.git' repo...

 drivers/usb/storage/freecom.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Index: usb/drivers/usb/storage/freecom.c
===================================================================
--- usb.orig/drivers/usb/storage/freecom.c
+++ usb/drivers/usb/storage/freecom.c
@@ -446,7 +446,7 @@ static int init_freecom(struct us_data *
 	 * all our packets.  No need to allocate any extra buffer space.
 	 */
 
-	result = usb_stor_control_msg(us, us->recv_ctrl_pipe,
+	usb_stor_control_msg(us, us->recv_ctrl_pipe,
 			0x4c, 0xc0, 0x4346, 0x0, buffer, 0x20, 3*HZ);
 	buffer[32] = '\0';
 	usb_stor_dbg(us, "String returned from FC init is: %s\n", buffer);

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/4d3fb70f-bf2f-96cc-a8fb-1ef658a24920%40omp.ru.
