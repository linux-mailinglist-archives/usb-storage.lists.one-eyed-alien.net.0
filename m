Return-Path: <usb-storage+bncBCY2ZJEUWQHBBYVX6KXQMGQEDWY4DWY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x248.google.com (mail-lj1-x248.google.com [IPv6:2a00:1450:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id 741B28861D3
	for <lists+usb-storage@lfdr.de>; Thu, 21 Mar 2024 21:43:16 +0100 (CET)
Received: by mail-lj1-x248.google.com with SMTP id 38308e7fff4ca-2d4a0c99d66sf12115151fa.3
        for <lists+usb-storage@lfdr.de>; Thu, 21 Mar 2024 13:43:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711053796; cv=pass;
        d=google.com; s=arc-20160816;
        b=WjhTyC8IDdIlyov4itAZBsfAV5sFGnbKR6EnEDy0DhMST6AlTW+uGGPytfsyc6Csp3
         UmqJpsj4uhgVxPebq/5amYbXyFmifF/OvajofFHqySnEsP7DeZMsKNsyitC0qFjqeZL4
         0r0NcAGX+3ide2jQYsduB+aUUM84clrycZk1jlGxmOh+q5EIIg0eBXDrz4x9kUCAxFfV
         X8bYNYI1VOZQcHVvCjlUAiR6z4A3De8RRZn7xvenefwAUSptAwcuqGsoT5IxUkINHzuK
         pROLrWEWp8gGJUWe7NxOdDITTj/BCStDtU/FTUbfGzfCw17fPApGnOOt40zQ+V2d9PV8
         FDUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:organization:cc:to:subject:from:sender
         :dkim-signature;
        bh=MMuumMexZEg8hPzmBAiS7/VZ+7eEjPN1DKMGm1IUOeA=;
        fh=DdXwsS2KrYvx3vu12XKtggBtwx+9pJj7X2NQ2sJTncc=;
        b=F0ooTSdlnVvB7hxedU4PeXfv3CVvL9aqNY8LVM5FaZV2bHK2Oaraahu5oeBcjOXf/Q
         9lqzMrRLzcXZihf3719e9FK3x86ANf+VIcmml6twR63jXdv7f6MIAdlbBISkGnbACNJQ
         RfeuQ27shTKfdMQ9LI4yzxOj9PcRZTks4KEztH8CTuZE1Y24h4nb6eSngvumnvutnG85
         Haz7bU0FJD/nEXNj6oF5K5AG9L5ASJyuJiMZvPFr7ndZb/yvDFRJx9cH3DXve/0H5+6c
         5MD8wjdI2uDxuXXeZ0FbGwpJDciejDz6JBvcd+rNZgeoL9ndWjVPrQWvtm6kO2F6Z6Zs
         KV8A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711053796; x=1711658596; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:mime-version:user-agent:date
         :message-id:organization:cc:to:subject:from:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MMuumMexZEg8hPzmBAiS7/VZ+7eEjPN1DKMGm1IUOeA=;
        b=HkhvsWP8ZjOWW8lhFymniI8abekfQ7RtszMIgpk70qBiNUxh4mBy5AzLcyq7fkvMwe
         /XXFsrQRoOuB+JFzCzHrjpdG+WVr8XDJmJx11zFW5bvKg1105lk+PH2gCIhapNKbotpe
         lHkKkGP+YZBFUAP+JrfF+qjY2KP3/Rqj65e3k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711053796; x=1711658596;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:user-agent:date:message-id
         :organization:cc:to:subject:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=MMuumMexZEg8hPzmBAiS7/VZ+7eEjPN1DKMGm1IUOeA=;
        b=OkNj/rUX6VdsSsPshfm6FxpeykXUY/YZxCt8DwDXJ43/axjazWF0HBlqia5BoItqRz
         A+p9G6gw87lhLofkikJ08kKAjgBcwa5aNasSyjnzyy3IensbN74vOBwxXOvWo/Kk+ero
         HSU2vPdDAq0q9KWYSi8rAHSBojOodUVBe/YjFV8BDLjewc4STFe2gpYCR4/fqilJAV/O
         9difc21CjjznQ5sqO0FNARUJy7itl0TBztNvsBUgaebgdNpbLAVOraPww8MS7YX9VVzI
         zlLUcOO3UwnbmUXdm5blAJlwol8LEaRNPa8YZUeDpWOSxEmGnuPBi2oe4HUIBOMotpl5
         Im9Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX71rJx/5f8MX7esIjwQBn24EvBCy3qpaVnKeKat8qF3c5r3hrGs2aJGHiYfNzMtXu0LX7XY/kStoY8qn106omNYEWfmDD8yvqM
X-Gm-Message-State: AOJu0YwoVmXaHEzqyG96bx9WRimPsal5CaOR7t6Kr5NEpDLFOHRRWgPB
	P3cMAOxGQnfqJR/OcLD11Nl2L4fko9IVdXoJ2p8VH1ux+2O1dpW6CSKeF5OoYC4=
X-Google-Smtp-Source: AGHT+IEi/AAXWaSIhFO9vL9WWJ7jSikGtlDoWd8cBduaxVjOx1+16+yIHN31YUOlm3RoRsK5MJnCFQ==
X-Received: by 2002:a05:651c:103b:b0:2d4:5d3e:9650 with SMTP id w27-20020a05651c103b00b002d45d3e9650mr425557ljm.43.1711053795640;
        Thu, 21 Mar 2024 13:43:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a2e:a6a5:0:b0:2d3:d985:d8f2 with SMTP id q37-20020a2ea6a5000000b002d3d985d8f2ls328690lje.1.-pod-prod-07-eu;
 Thu, 21 Mar 2024 13:43:13 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXT/0FaCb5f6KsZM1cX4qSdIduz2qaQbehXK6q8jkXXIAoXQAknHfW4GXUvw3KZSibkN1QSvOqZWx4Q4fhCZcTDet2fI4dMm67F5EUAAA5fRUAlv1k=
X-Received: by 2002:a19:2d47:0:b0:513:8102:1a1e with SMTP id t7-20020a192d47000000b0051381021a1emr287885lft.50.1711053793151;
        Thu, 21 Mar 2024 13:43:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711053793; cv=none;
        d=google.com; s=arc-20160816;
        b=awqJ4TX2NWc01c/CtO20GmQxwOR3XWdvLBXAhasqSxS6vGv4sNSQOAMqDDQkxT1WeP
         3uHHeuhaHwWEGsyh5jfP+UY4Plcp2nib82uRhN493SMW3isMOjief5g2PnSyH2+qIIEg
         +4iMNg5Hv59SiS2GtyISF1NSHrN7az5idMPbXNGledCIGBZHolo3uKE1FcFMsrZHH/Db
         T1MMQye+dH06jlBBkCwwIoYyx63Rm6XlCnMhOGHZvninJ7NACY91PK8TWPaNeTL07O9N
         3rjBaCw+7+KkFOBYjvfpoVJl8DHLhOIgKDxJbs4708s/Gyi9bUNlzNZG7Tj4K7DJZuhE
         tEfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:organization:cc:to:subject:from;
        bh=gE+HOABwjxEGhCVVsAjy0b0hqLBSsaTy13fWMNs7MF4=;
        fh=tJBp+sa7RqGtuWBE9tj8cgWbKEwODdPX1frZkS9o8PM=;
        b=vOCgL1n4axZ86WJyYA6QnzY9AzIzqyMVqedZtQClOZcTnrCgms66ADS6Gy3ms0PYur
         BEdg00iwflXx8/RfrP5ERUBViW8wOMT7CVd32W/h+4Fcrn4Htd+muHrdcAS/8zPZ5/hm
         Y/gVWsuBu0JqKHkWSF3gr6PH2puPWdpDDjYdy3Xtpn4v6bE5Uu5xTjeaaGRZolsFQf/6
         o0X1wNZRvKT+s47tgMM+FID79VYB1BPimHt91xZPvABnKFsL5kVek67tqNNoV3UHNcAp
         d2IKN9zjOkyKf1d7cH3XiP5iLJ2Lr99SgN5AqKNGPUojb1TMb+PFv1E/W+aqUOIN2qHQ
         wWFg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) smtp.mailfrom=s.shtylyov@omp.ru
Received: from mx01.omp.ru (mx01.omp.ru. [90.154.21.10])
        by mx.google.com with ESMTPS id j9-20020a056512108900b00513d68e7546si112074lfg.49.2024.03.21.13.43.13
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2024 13:43:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of s.shtylyov@omp.ru designates 90.154.21.10 as permitted sender) client-ip=90.154.21.10;
Received: from [192.168.1.105] (31.173.84.168) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Thu, 21 Mar
 2024 23:43:06 +0300
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Subject: [usb-storage] [PATCH v4] usb: storage: sddr55: fix sloppy typing in sddr55_{read|write}_data()
To: Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
CC: <lvc-project@linuxtesting.org>
Organization: Open Mobile Platform
Message-ID: <a98c7ef0-ffb4-369a-ddee-dc5a1f8d6b89@omp.ru>
Date: Thu, 21 Mar 2024 23:43:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [31.173.84.168]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.0, Database issued on: 03/21/2024 20:27:00
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 59
X-KSE-AntiSpam-Info: Lua profiles 184337 [Mar 21 2024]
X-KSE-AntiSpam-Info: Version: 6.1.0.4
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 11 0.3.11
 5ecf9895443a5066245fcb91e8430edf92b1b594
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: {relay has no DNS name}
X-KSE-AntiSpam-Info: {SMTP from is not routable}
X-KSE-AntiSpam-Info: {Found in DNSBL: 31.173.84.168 in (user)
 b.barracudacentral.org}
X-KSE-AntiSpam-Info: {Found in DNSBL: 31.173.84.168 in (user)
 dbl.spamhaus.org}
X-KSE-AntiSpam-Info: d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;127.0.0.199:7.1.2;omp.ru:7.1.1
X-KSE-AntiSpam-Info: ApMailHostAddress: 31.173.84.168
X-KSE-AntiSpam-Info: {DNS response errors}
X-KSE-AntiSpam-Info: Rate: 59
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 03/21/2024 20:32:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 3/21/2024 6:05:00 PM
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

When isd200_scsi_to_ata() emulates the SCSI READ CAPACITY command, the
capacity local variable is needlessly typed as *unsigned long* -- which
is 32-bit type on the 32-bit arches and 64-bit type on the 64-bit arches;
this variable's value should always fit into 32 bits for both the ATA and
the SCSI capacity data...

While at it, arrange the local variable declarations in the reverse Xmas
tree order...

Found by Linux Verification Center (linuxtesting.org) with the SVACE static
analysis tool.

Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>

---
 drivers/usb/storage/isd200.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Index: usb/drivers/usb/storage/isd200.c
===================================================================
--- usb.orig/drivers/usb/storage/isd200.c
+++ usb/drivers/usb/storage/isd200.c
@@ -1283,8 +1283,8 @@ static int isd200_scsi_to_ata(struct scs
 
 	case READ_CAPACITY:
 	{
-		unsigned long capacity;
 		struct read_capacity_data readCapacityData;
+		u32 capacity;
 
 		usb_stor_dbg(us, "   ATA OUT - SCSIOP_READ_CAPACITY\n");
 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a98c7ef0-ffb4-369a-ddee-dc5a1f8d6b89%40omp.ru.
