Return-Path: <usb-storage+bncBCY2ZJEUWQHBBWGTWCWQMGQEFT4BTTY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x147.google.com (mail-lf1-x147.google.com [IPv6:2a00:1450:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D83833606
	for <lists+usb-storage@lfdr.de>; Sat, 20 Jan 2024 21:15:21 +0100 (CET)
Received: by mail-lf1-x147.google.com with SMTP id 2adb3069b0e04-50e91f9d422sf1638481e87.2
        for <lists+usb-storage@lfdr.de>; Sat, 20 Jan 2024 12:15:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1705781720; cv=pass;
        d=google.com; s=arc-20160816;
        b=PXEYtzvDhC+4C/OeG732JiT/ByQsUp9FgFn0w9w8mLUmaPGfkBBPnIKusZ3s8altMq
         qFJaTERI7jy7TpEpuFsnRlBZUBNWUCwv67WMAvh5TjiVLZebljFgkG7rz/W9inFNZUPj
         MY5bouDCy6NDT80sLIERDhHexL1/A1E92orijvdTDWhHYiqjOBC4AqLcisEy9c2zY7mr
         1c2dKqQn8XYL5NvzMjovWQYO8/rrxkceGhDeCFjf1QfQFOX4GC3o4JORFk6YaiExJLHQ
         XMIL6Ly7ZWqUt6CfrEY3fblQFw/wRiyj4yFBcDzjHyUQ8ivgjNhppMtL+ixOLsZKGX6e
         bn0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:organization:subject:from:cc:to:sender
         :dkim-signature;
        bh=M1GkeP1voOAXC8LN6gatluUxIoG4OZZCykb4yoyI2PE=;
        fh=BoOPAFOv2j3af1wtGBM25N7i35LL948k5BHQ4ufG1VI=;
        b=uLe79PjfY2aBzyGQuW+BMFu+g5YDK85f9SmuOjkadeX34efmMG36eCFmnfZOoSAt2L
         YT86yy0xaEnRmYZiA4Td7hx1BRVslgul+UiZfuzDZp1+gGW6UlZTG4x9TmCr/uQMQb4l
         sgRdhaVDmzKTYnP/NThCni91qnsTMnF8lKI7QukrQxUo73zesmv9FZB6IOs76Dav71d9
         h/hnfDUq9SaoGaqJoDWiNahYKsroNPHs6nIWnLgyzUJe4OhqT6FR1KVsovg22WZubf7Z
         v/nkvu/nGfmt9bOoqbKJBvyPTegcjMz9CguXpLurEjkj/47XNZp2Qp0KRvrVv0OSELa/
         bNYA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1705781720; x=1706386520; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:mime-version:user-agent:date
         :message-id:organization:subject:from:cc:to:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M1GkeP1voOAXC8LN6gatluUxIoG4OZZCykb4yoyI2PE=;
        b=M8YlolI2IA3Ski5FgwP2ja4pOcXD/aNOblChFUG5NH8I+SzMGuotak/xQr+Nl9IEIn
         dXYk86IG3cyBNZNBoMVJ9Kmk3REiSPEJ1JX9c/5vqyJP71ZSxQM5hvcbjWV8NQqO8tCn
         t0+flpjxlwcjoU8Hl0dcFgu6YMHmx9uiFybr8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705781720; x=1706386520;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:user-agent:date:message-id
         :organization:subject:from:cc:to:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=M1GkeP1voOAXC8LN6gatluUxIoG4OZZCykb4yoyI2PE=;
        b=W8CFFhsePrCRTE8xxnd4Gvg+deluhnL4DtbOyEgGoFMIhRIOMRha56LVS53WWM4jBG
         qV/wFQVJ/q2wVNmsUuQYuL2BiDNfFoXW3aQudBv7kcNnDV31Y312EXt71f9wS1SzZOGN
         y/UMSn8UA0MJ3WcJJ1Qpd7J8w/uiHoTIgbBY51J2x27WckFZJh0SLlla11ALU2VUcePa
         IDAxpcp7GuFXVvWxCR2kbOWq1xwKYIBvdCGhwZwMyoXbY9hUChuRypLDAiWnfSZtZbDC
         kcn8f1mXC2mNqSRtydxSe6Yc3ZapuX8dQyBTudwANRrvdORI2srpS1bqDtrGu4LFy0gx
         Z5fw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YxNtuMTJBykMkEml7ug0EaCJPs8hvgGi+LrrIUVwLYM9JRumEfd
	o86+/iakOgeTsMBvA9QQGgA77GCL8eRlpXdOLE9L1eSyq55uJbUYSp34IMu5lbM=
X-Google-Smtp-Source: AGHT+IElpZ7xLUd/TTeqQMjkqA8iyJ5BX6SPyNSjUIO8i4YEu408gv86jYiAfolOX0cHbzej3dzuhw==
X-Received: by 2002:ac2:4c55:0:b0:50e:c516:dfb4 with SMTP id o21-20020ac24c55000000b0050ec516dfb4mr879003lfk.79.1705781720401;
        Sat, 20 Jan 2024 12:15:20 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac2:4e82:0:b0:50e:75a3:580b with SMTP id o2-20020ac24e82000000b0050e75a3580bls500244lfr.1.-pod-prod-04-eu;
 Sat, 20 Jan 2024 12:15:19 -0800 (PST)
X-Received: by 2002:a19:9107:0:b0:50e:76d1:f02b with SMTP id t7-20020a199107000000b0050e76d1f02bmr661014lfd.39.1705781718488;
        Sat, 20 Jan 2024 12:15:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1705781718; cv=none;
        d=google.com; s=arc-20160816;
        b=rjb2HJM6teYItGZEQVjL8L1WVny8x2H54+xwUTGwCSe6c85FsW0aipVwCdncPl117k
         L7KrCe44z+sICdWbHme8vo7WeKix0rwYuBWsUrTpR6CNVefGn7Lx8oE2oejBsZCz7ZFK
         Qu01h1VlhRYG7BpqC4Pxf9gKrDT4WPD2cDl2gGmwxC+sCH8i/oqfw7aH51iG9bFMRAUb
         tjPQKbkI2/HDfJLKcvHWqP8NY+ivs3WMfTcQpFGKQursEOod9exz1rzqTK1F7x1uewbP
         EztDXMQsSEpDGaxrvN2HzRL8NICWvHGIHRhJPa3v6ey/Y0GVjDOKI+76m5H8wtsCnbZl
         Ik5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:organization:subject:from:cc:to;
        bh=t8PyGxxjp4/NoG8oUgPm//Ng18UULiQfJBwHFeUIo14=;
        fh=BoOPAFOv2j3af1wtGBM25N7i35LL948k5BHQ4ufG1VI=;
        b=HG+5Z3u7W23UkEYEMbEL9gEK27sYy/vNMSlwvV1rEWJEflsiyofFGCaem8U0CoOGT+
         OTJU5/RWhfsHgDBGslW3VO/QFlfIGSdzBmVV0bndkOl0ip4ur1QxC11JFMbiN3YepK4x
         uiItUdkWtAlR8a0zpYEkPfj3JW64Hph0SMnIDpn2gTaXNI/zDSXnFzj00eQ7JjTeoNWz
         M+SVGUBL6EpgfyyQEJJ+r4nKpBOGdAE3H4xg3W3CxfpydsFCD9ghReVNwJtW1qRdUFow
         XjBYogirgfQB1JMexH7sIdDkHBzSSa/ujZvSQF36LFJ8HjYOX7hJ/z9qqArxnd9DRnAf
         I+Dg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id c5-20020a056512238500b0050eb8d7c1b2si2961392lfv.358.2024.01.20.12.15.18
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Jan 2024 12:15:18 -0800 (PST)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.1.105] (178.176.74.196) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Sat, 20 Jan
 2024 23:15:11 +0300
To: Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
CC: Karina Yankevich <k.yankevich@omp.ru>, Sergey Shtylyov
	<s.shtylyov@omp.ru>, <lvc-project@linuxtesting.org>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Subject: [usb-storage] [PATCH v3] usb: storage: sddr55: fix sloppy typing in sddr55_{read|write}_data()
Organization: Open Mobile Platform
Message-ID: <0c219fd9-6b11-9c20-3dec-7dc5beaff379@omp.ru>
Date: Sat, 20 Jan 2024 23:15:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [178.176.74.196]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 01/20/2024 19:59:00
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 59
X-KSE-AntiSpam-Info: Lua profiles 182802 [Jan 20 2024]
X-KSE-AntiSpam-Info: Version: 6.1.0.3
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 7 0.3.7 6d6bf5bd8eea7373134f756a2fd73e9456bb7d1a
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: {relay has no DNS name}
X-KSE-AntiSpam-Info: {SMTP from is not routable}
X-KSE-AntiSpam-Info: d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;omp.ru:7.1.1;127.0.0.199:7.1.2
X-KSE-AntiSpam-Info: ApMailHostAddress: 178.176.74.196
X-KSE-AntiSpam-Info: {DNS response errors}
X-KSE-AntiSpam-Info: Rate: 59
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 01/20/2024 20:02:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 1/20/2024 11:08:00 AM
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

In sddr55_{read|write}_data(), the address variables are needlessly typed
as *unsigned long* -- which is 32-bit type on the 32-bit arches and 64-bit
type on the 64-bit arches; those variables' value should fit into just 3
command bytes and consists of 10-bit block # (or at least the max block #
seems to be 1023) and 4-/5-bit page # within a block, so 32-bit *unsigned*
*int* type should be more than enough...

Found by Linux Verification Center (linuxtesting.org) with the Svace static
analysis tool.

Signed-off-by: Karina Yankevich <k.yankevich@omp.ru>
Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>

---
This patch is against the 'usb-next' branch of Greg KH's usb.git repo...

Changes in version 3:
- rewrote the patch subject and description.

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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/0c219fd9-6b11-9c20-3dec-7dc5beaff379%40omp.ru.
