Return-Path: <usb-storage+bncBCY2ZJEUWQHBBI5JWWWQMGQE33UMMKI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x245.google.com (mail-lj1-x245.google.com [IPv6:2a00:1450:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA28835716
	for <lists+usb-storage@lfdr.de>; Sun, 21 Jan 2024 18:30:12 +0100 (CET)
Received: by mail-lj1-x245.google.com with SMTP id 38308e7fff4ca-2cd853c15adsf22193161fa.0
        for <lists+usb-storage@lfdr.de>; Sun, 21 Jan 2024 09:30:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1705858211; cv=pass;
        d=google.com; s=arc-20160816;
        b=xCk7lRd4QCSgfVrbL9iQMLs8U0GtGtwqMTTKBs+fjjIRdAlX+Lcm6T5a/NhqzQuk/R
         zsrS+z2wt7U/hHPAwc2xXAATg7prlSAZt3JjS0pemc4j6K94TBlP6NwWKRqA8QYnZwe7
         QooxukFfmTUoPhG3NdD8FfDOn0QAuI1agpv2ho16h6l9JdECYLKoDGpZ6NqRpeaLfrWy
         2aEk77HVFSbUGhe/En4DPJAR2fz8HZP8K74LLOI7BV+Od2HM++IJmXqurLYa6kaNwWgv
         7ynanQl0KxIEAqIWvv0xcbyVmhOrfESX2PCIHBU8xzdaE3Jhm60E9GIfMKEalsyulxFE
         WWMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:organization:cc:to:subject:from:sender
         :dkim-signature;
        bh=cCHEjzlJA7sO2krDYDZhHClQ/MtyR3Iw/Lvo4PDnBUY=;
        fh=6SzP4P3OFxDdT/y+n9ZCO5LS/2ed+e0kUGKWApvKjmY=;
        b=c6yGKFcgoj/YwAKjCOwFlGkG8Rq5/okzIXpvzJu22QFl97RJreWSMPlQ1/1rC+aRYR
         AsG7+SS2iueNWuJH8i0g2q9nBVbWePkBlzzjWO1RRG7Yaa0h7YKTD46WA/ky1NSEqUHm
         9XjhQ7TZOOotz3Hnvbgsn8t6LYWGAXGvTp86VnJyJIe4nPWp8YGUqflbAgGUOSpmZtgi
         aHarrOgFaRWfkVhYcDuzvmdGQ3dKnd02Bzre2srB1nmvLBoDkY87H8waT2/rg32FKnCW
         dB01aj9TjTrZDnf/xB9DeOktgEschjzYeSUKl9/U+5MerdmJP1dZMlPqJI5d/DkgEK43
         LCvg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1705858211; x=1706463011; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:mime-version:user-agent:date
         :message-id:organization:cc:to:subject:from:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cCHEjzlJA7sO2krDYDZhHClQ/MtyR3Iw/Lvo4PDnBUY=;
        b=bEgbz5F5gsYPgQz/cl5VLWm3u5jorb+N1QVN61pRMBp/xGXwNxy8MS2yc6uLQW7K45
         y9PH6fIPRFKoN7VIPcytMqHYr862UOwBdLsyywXOmmq2LXNoMGDO3XJmYFbdbkuEpfFw
         DsZ3ZpQI+1SCLOi8mDX7S4iPUPw1Wy75kHCsI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705858211; x=1706463011;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:user-agent:date:message-id
         :organization:cc:to:subject:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=cCHEjzlJA7sO2krDYDZhHClQ/MtyR3Iw/Lvo4PDnBUY=;
        b=MHjrx5hrz5GFUJ2/c5zPpQvoY/Ax88kHoXFkSjOwxmuAhjx9Tc6U/1wR74eOK6hs+F
         8JWUHpM0DNHUeU6uW2zcS8tgZ2eFRQh2Ok0XUpRYCey1V7QogQ3uAa/Imy/S87qhRr24
         ASoOR14vvc0TDtMScIJvvdnfKQQ/qvwex4+L4GJoYuG8FSJI2oQCu+tMvorYHRPwEtjA
         PnxXmaUlNOI7YPDeaDRy+H3AHh3Wp3QOl8lvWk+xDSl+QS71/GRi/w6CC5QBkHRjS5W1
         G2LeohLe77LrI4z8ZdSybfH7VM4EQdeuxnlp5pPx0tg88CzgJfRMKHf86laDZ87Se4Te
         M0qw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yw10dRigwPH0SfMb8QUCucHlav+o17oukHM+YeRtTa4gCzGY0QL
	Ymdi8Z4LS+4xGHNhj7aUezhXex5AORA0fwy2i1Y+lPZmHFw4v/17zxAfwJ7slG8=
X-Google-Smtp-Source: AGHT+IEXWGgojX+eLW7Vjc+1oVCO9wAWMKj46lQNEQ6CNOBH1QEMmoSnCVcyhMCxObRG/f+Dg5y8JQ==
X-Received: by 2002:a2e:b0d8:0:b0:2cd:d5a:7977 with SMTP id g24-20020a2eb0d8000000b002cd0d5a7977mr1313446ljl.17.1705858211506;
        Sun, 21 Jan 2024 09:30:11 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:651c:1a11:b0:2cd:df45:a0e0 with SMTP id
 by17-20020a05651c1a1100b002cddf45a0e0ls298579ljb.0.-pod-prod-09-eu; Sun, 21
 Jan 2024 09:30:09 -0800 (PST)
X-Received: by 2002:a05:6512:3089:b0:50e:73a1:f519 with SMTP id z9-20020a056512308900b0050e73a1f519mr1394783lfd.80.1705858209458;
        Sun, 21 Jan 2024 09:30:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1705858209; cv=none;
        d=google.com; s=arc-20160816;
        b=nBP6mX3w4p/uryVhTu47Ge6sozTKnob92sAncgg4jAvSl+N1HNyWkQjfLteNG06XU/
         diL808Nn288jVxWr5LoNWUus0+pjcDlfodFBzwoBv2ucgKB2lyJta2H0KgrG5MLd9Qq0
         MzUzcajkY4vtP3b3Sv+045/EoIj7erZj8LlvyWXrZaQ3D1OZYwTrF5A5cADjgNPywTzk
         L6DzOHqhB4ljFnNMdLWUJBDF+dOPTWo9IzjPvWKQCJkiimuKFhlAUkEHIJV2H4FpYmKo
         SqQT0MQWhDOrnBOttdai/K3rdCewJ1Y31g6qyyOGuHI6cMa7oQR3FkB32f9wmXfkCc3o
         r2Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:organization:cc:to:subject:from;
        bh=1WLgwtadQmfDlDGpo9NbUr5IMFYp+cG5G40GPrPWEek=;
        fh=6SzP4P3OFxDdT/y+n9ZCO5LS/2ed+e0kUGKWApvKjmY=;
        b=O7fhW64T4cag7/Jvi64nIFE8geD6QmdJmO/uAmCwJlehsb+rRNWB1es7g59M8yA8eE
         /WpP8HEdb6DDZOFUKRSXbYDf3z1VTor+IDjjOuWImho6nHFoH6LrOgS8MZ0N0ZFsS2ue
         IqPLPV9DuCgQTjvK65c/vsMhCuy3lRZ1qrPfbMwcTvB0UaEOfUF97AbToOLjuEVc7WU4
         11BXCFSBQ5V3pJl8o+AA7Em2KXDs3sXvxhuoN+phFuBsYxT9P0b7KZhU2D9inbJsMrKA
         k2JFAi+eMvx4VWkAO1iopGDdtR+co/xW9mzdBLyg181OsYOPcn9/yXr6hEZeWAVD0DV9
         QMQw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id i27-20020a0565123e1b00b0050e94afc4c0si3580307lfv.3.2024.01.21.09.30.09
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Jan 2024 09:30:09 -0800 (PST)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.1.105] (31.173.86.117) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Sun, 21 Jan
 2024 20:29:59 +0300
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Subject: [usb-storage] [PATCH v4] usb: storage: sddr55: fix sloppy typing in sddr55_{read|write}_data()
To: Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
CC: Karina Yankevich <k.yankevich@omp.ru>, <lvc-project@linuxtesting.org>
Organization: Open Mobile Platform
Message-ID: <4c9485f2-0bfc-591b-bfe7-2059289b554e@omp.ru>
Date: Sun, 21 Jan 2024 20:29:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [31.173.86.117]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 01/21/2024 17:09:54
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 59
X-KSE-AntiSpam-Info: Lua profiles 182803 [Jan 21 2024]
X-KSE-AntiSpam-Info: Version: 6.1.0.3
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 7 0.3.7 6d6bf5bd8eea7373134f756a2fd73e9456bb7d1a
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: {relay has no DNS name}
X-KSE-AntiSpam-Info: {SMTP from is not routable}
X-KSE-AntiSpam-Info: {Found in DNSBL: 31.173.86.117 in (user)
 b.barracudacentral.org}
X-KSE-AntiSpam-Info: {Found in DNSBL: 31.173.86.117 in (user)
 dbl.spamhaus.org}
X-KSE-AntiSpam-Info: 127.0.0.199:7.1.2;omp.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1
X-KSE-AntiSpam-Info: ApMailHostAddress: 31.173.86.117
X-KSE-AntiSpam-Info: {DNS response errors}
X-KSE-AntiSpam-Info: Rate: 59
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 01/21/2024 17:13:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 1/21/2024 9:55:00 AM
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit
X-Original-Sender: s.shtylyov@omp.ru
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
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

From: Karina Yankevich <k.yankevich@omp.ru>

In sddr55_{read|write}_data(), the address variables are needlessly typed
as *unsigned long* -- which is 32-bit type on the 32-bit arches and 64-bit
type on the 64-bit arches; those variables' value should fit into just 3
command bytes and consists of 10-bit block # (or at least the max block #
seems to be 1023) and 4-/5-bit page # within a block, so 32-bit *unsigned*
*int* type should be more than enough...

Found by Linux Verification Center (linuxtesting.org) with the Svace static
analysis tool.

[Sergey: rewrote the patch subject/description]

Signed-off-by: Karina Yankevich <k.yankevich@omp.ru>
Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
Reviewed-by: Alan Stern <stern@rowland.harvard.edu>

---
This patch is against the 'usb-next' branch of Greg KH's usb.git repo...

Changes in version 4:
- added the correct From tag;
- added a note about my role;
- added Alan Stern's tag.

Changes in version 3:
- rewrote the patch subject/description.

Changes in version 2:
- compeltely redid the patch.

 drivers/usb/storage/sddr55.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

Index: usb/drivers/usb/storage/sddr55.c
===================================================================
--- usb.orig/drivers/usb/storage/sddr55.c
+++ usb/drivers/usb/storage/sddr55.c
@@ -196,7 +196,7 @@ static int sddr55_read_data(struct us_da
 	unsigned char *buffer;
 
 	unsigned int pba;
-	unsigned long address;
+	unsigned int address;
 
 	unsigned short pages;
 	unsigned int len, offset;
@@ -316,7 +316,7 @@ static int sddr55_write_data(struct us_d
 
 	unsigned int pba;
 	unsigned int new_pba;
-	unsigned long address;
+	unsigned int address;
 
 	unsigned short pages;
 	int i;

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/4c9485f2-0bfc-591b-bfe7-2059289b554e%40omp.ru.
