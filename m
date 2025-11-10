Return-Path: <usb-storage+bncBDVZHOPX5EOBBW4FYXEAMGQEYE4J7OI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id 00592C44BE0
	for <lists+usb-storage@lfdr.de>; Mon, 10 Nov 2025 02:41:49 +0100 (CET)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-3438744f12fsf2096348a91.2
        for <lists+usb-storage@lfdr.de>; Sun, 09 Nov 2025 17:41:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1762738908; cv=pass;
        d=google.com; s=arc-20240605;
        b=LI9yMNd6FfzEJZrVptCD7hjir3gmffrv5w5TlhaEC/s21jqsV9nXJlgGUTLFfO6dZ5
         qxxNzZgVFF/0mmOxFWyDHB/GG738ZGAFgjhWSibrWQq7QGIcT9sjE71Pq102zEcc1/Hw
         eQOiCUVnkdZU9YDrFk2X1+VBk2sE8oXu1NRWMJv4RGcDt3M4FEvhr+d0nuFs6x8CBhUP
         PvccF5MvZZoTtqPEDMnF6XEvbdJymsYQRbwDKgXokQU0XTs91FdmbXHJZuUjwfHBNsuB
         HueCe9i/aAIg3+teDnCYoeLa47IExOfiQAbx7Q/b8cpKw4Lvp5uQGlBpmtj5Sao/CY6H
         KhjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:mime-version:references
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=ci+TnNaTqkUb/LqwSBXiHV+0nKDrEakYXgaEqnj0GBs=;
        fh=Ot54iTIuWye0Y3lOvohQQToPORCuQQfHWSaD0VyCT1Q=;
        b=EMTK8zWGN7KRlJpvprmLQ9m7GS01EeosryzgEj/Iwxi5ubtOPj8VxYTmKt/4/GNxPz
         TNiut9hqWggN8XxSAl9Jo8ddsnWpzQxHNo2ss/yodP70CizMcqFEfQKFWlHKjCNAWGbA
         E4lwEQrKttfzfucW9LhtXLPFR3Np2IbOBMoWs5H2HaflNABsCEXFm/RCNCI/f5l/tL0D
         Fuv7u1+Qlr1RGj7Rz7Jg2WpPkbZ862visjokrHI7QMBJFFBAJH5UXhqzkI0/7KpAYMr0
         l916ZFTDjOdIWLyoXY4oZ9F6DVX6BqPFxUz5sa0RgyG+75+sNB2qj0L5+VVmaWEjBToT
         45/Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b="RZscf/x9";
       spf=pass (google.com: domain of ccc194101@163.com designates 220.197.31.2 as permitted sender) smtp.mailfrom=ccc194101@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1762738908; x=1763343708; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:mime-version:references:subject:cc:to
         :from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ci+TnNaTqkUb/LqwSBXiHV+0nKDrEakYXgaEqnj0GBs=;
        b=Op7O6JDiEo3ZSo55C2OGte0gCM+s/3rU499vugSls41JZFoJr/C1Gb6O77F7n8sN7c
         3cjoj26VUuCLTM00YcvcIz3zLHOsmCsBm4sKX2CW21eF6xtAPxW6ATpQvSXf1PIJU7Pm
         mPjIeTsJCyq1CTShyvS13+X9gVt/ngBP/JFeY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762738908; x=1763343708;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id
         :mime-version:references:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ci+TnNaTqkUb/LqwSBXiHV+0nKDrEakYXgaEqnj0GBs=;
        b=ugomsE54ts8EnFqieEncWAVj71d1hZgChMJp4BUqUZm+raJbv74Mg/sk6IW0Aeap4t
         Fdqe3i7w3BVoIEaZS8kWi6uN4NaJ7AwOzAoDLVIBVoCb7QEbJqKTlIiwMv6ExUK3GpnR
         B+QZ14ehQVMv0kfNCmacNS05f8OJhSaMmXi4mI91m9alYNkJmoNyfRsvZeVTxWrtjSdH
         4QfwCAVf6aJn4L3DmotPL1EzDdyYZk8yc2bAVBcMrmMX0XvtXMg4Me+GfS9f1C5VgGYL
         zHY0WtganuCVjvXEv9XODe8OcbGIpToOipxt4nRT4ucqVJ1XctRm/3I2jinQDvE5KB+S
         I3vQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUsrVK2fbGS90pUCgV0w+VyFmXP6uRyI6Y13R4aGWZTHTDxdvuBNhVLcmq8rp/+1V4jwtDBNQ==@lfdr.de
X-Gm-Message-State: AOJu0YzPpTDJN9hWPLG7zRfdsy5L6IMZM+defqCQgJzap1QijqLw/BmK
	u8MSLFaehOJQhTbqXFMovX6XxiICQnV5fwxjWDEByvd0/DYvkUrygYUVNbl1GzBfzNE=
X-Google-Smtp-Source: AGHT+IGnSRlbEY3VZbjbODer0/cI56tWOXzLT4478eN9Pn+2cUl58ZD6loUws+YyDYJYQbmxpB9sQg==
X-Received: by 2002:a17:90b:3848:b0:33f:ebc2:645 with SMTP id 98e67ed59e1d1-3436cbb3b4dmr7750876a91.20.1762738908098;
        Sun, 09 Nov 2025 17:41:48 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+ZsJE8Zr0DTqsz3pIhp7mEJYn3xrnsvbO3z/qkQj3Fvkw=="
Received: by 2002:a17:90b:48c3:b0:340:7380:d09b with SMTP id
 98e67ed59e1d1-341cd19e724ls4887403a91.2.-pod-prod-08-us; Sun, 09 Nov 2025
 17:41:46 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVoKHHrIeUqTftJ18s30RfinXRAqTRoceSyyjQjQKvpo2KTkgblRY8mSjGyONdrK9SRYVA6EQSMCNpGBA==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:2d48:b0:330:84c8:92d0 with SMTP id 98e67ed59e1d1-3436cbb3b7bmr7832265a91.24.1762738906376;
        Sun, 09 Nov 2025 17:41:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1762738906; cv=none;
        d=google.com; s=arc-20240605;
        b=O7/X/b6wQKvlhoZzALP4VTo2JJ8mzwV0CclFtOX2ElwItKjervrkoshGYKADQarjda
         ku9DvU+YI1cUMxMQZN07Ohjd7Uefz+LVlwFLrTpWT5oBnd5U4MIIDSSKoprNZyAGOj/B
         bHMyT41ZfYnLrGX35uRqt6NEadOr49AQy6axIS+JeXawEeKiX0S6v9e4HGY3Oz8VjWu2
         ZaIRQ7Hd4L3d/Q/rz1QAOdI/bp/0LXu89DaxOmdAwhSkspFSGtmsftNjZK9WvtOUpNPl
         mEgVpFnJe2Cgk4DdiCDIfdOk+6IY3vbPexpzR3LnbmWSYy++gz32q8l9a+av7nmuovoo
         7giw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:message-id:mime-version:references
         :subject:cc:to:from:date:dkim-signature;
        bh=QnfMvaPTMRSHfNakYl6JhID6E7Ylz4P5ZDkx8TBftPg=;
        fh=AQqeQFlH/T9bHVCJYjN38Rswocg+hDDiqs93Mn+50fI=;
        b=AzAKmivx/ksQxwqCP2SUikIrUOIt45QbmRnkJe+jHIz2w7xhJb7PREh/V3qmoe2P1x
         SW/mqdbNsIEFXWjPUlfMEreIQQVP7YWE4H71Z07mXv8Qlr+6tgrs6gP6XV3uMnuI8LHv
         5HYQxssUUZ4Q/23iZ+rWdXfx60TzwXl2jEG2qouy4yaCmnkbwSaMM4IThOJTuuIVkhRq
         +4cfCbWMLsIhh/rkCt6s4VBSnTUMrjo9EWj8uu4W3IOzh44xY1w/o2W8ewvPy9yUMHp6
         NFyx0Bj08QLB0tqCcVyF1HHtaX7PV0Lh2PM7CKfH160biRI8OcIDMQyJ89l5MGwizQD/
         AraQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b="RZscf/x9";
       spf=pass (google.com: domain of ccc194101@163.com designates 220.197.31.2 as permitted sender) smtp.mailfrom=ccc194101@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
Received: from m16.mail.163.com (m16.mail.163.com. [220.197.31.2])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-341a68b6943si8507792a91.25.2025.11.09.17.41.44
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Nov 2025 17:41:46 -0800 (PST)
Received-SPF: pass (google.com: domain of ccc194101@163.com designates 220.197.31.2 as permitted sender) client-ip=220.197.31.2;
Received: from ccc-pc (unknown [])
	by gzsmtp3 (Coremail) with SMTP id PigvCgBXcvHFQhFpJ7ubDQ--.63164S2;
	Mon, 10 Nov 2025 09:41:26 +0800 (CST)
Date: Mon, 10 Nov 2025 09:41:25 +0800
From: "ccc194101@163.com" <ccc194101@163.com>
To: stern <stern@rowland.harvard.edu>, 
	"Benjamin Tissoires" <benjamin.tissoires@redhat.com>, 
	"Alan Swanson" <reiver@improbability.net>
Cc: gregkh <gregkh@linuxfoundation.org>, 
	linux-usb <linux-usb@vger.kernel.org>, 
	usb-storage <usb-storage@lists.one-eyed-alien.net>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	chenchangcheng <chenchangcheng@kylinos.cn>
Subject: [usb-storage] Re: [PATCH] usb: usb-storage: No additional quirks need
 to be added to the ECD819-SU3 optical drive.
References: <20251107061046.32339-1-ccc194101@163.com>, 
	<c7bf59b5-8078-4b47-b56a-7b5568272d07@rowland.harvard.edu>
X-Priority: 3
X-GUID: 01AFFED0-E363-49A2-9672-038AE8F694B6
X-Has-Attach: no
X-Mailer: Foxmail 7.2.25.375[cn]
Mime-Version: 1.0
Message-ID: <202511100941253989454@163.com>
Content-Type: text/plain; charset="UTF-8"
X-CM-TRANSID: PigvCgBXcvHFQhFpJ7ubDQ--.63164S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxXry5XryrJF4UGFW8KFyUWrg_yoWrJFW8pr
	WUta1DCrWkGF1fGwn2yr1UuFyFq3WkAFn5GayUG3y5Xr1Y93WkJr4UAw4UJa4UCrs3ZF1I
	9ayqvr9rKFW8CaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07Ua9aPUUUUU=
X-Originating-IP: [116.128.244.169]
X-CM-SenderInfo: 5fffimiurqiqqrwthudrp/1tbiQRgB3mkQG10v6wACs-
X-Original-Sender: ccc194101@163.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@163.com header.s=s110527 header.b="RZscf/x9";       spf=pass
 (google.com: domain of ccc194101@163.com designates 220.197.31.2 as permitted
 sender) smtp.mailfrom=ccc194101@163.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=163.com
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



>On Fri, Nov 07, 2025 at 02:10:46PM +0800, ccc194101@163.com wrote:
>> From: Chen Changcheng <chenchangcheng@kylinos.cn>
>> 
>> The optical drive of ECD819-SU3 has the same vid and pid as INIC-3069,
>> as follows:
>> T:? Bus=02 Lev=02 Prnt=02 Port=01 Cnt=01 Dev#=? 3 Spd=5000 MxCh= 0
>> D:? Ver= 3.00 Cls=00(>ifc ) Sub=00 Prot=00 MxPS= 9 #Cfgs=? 1
>> P:? Vendor=13fd ProdID=3940 Rev= 3.10
>> S:? Manufacturer=HL-DT-ST
>> S:? Product= DVD+-RW GT80N
>> S:? SerialNumber=423349524E4E38303338323439202020
>> C:* #Ifs= 1 Cfg#= 1 Atr=80 MxPwr=144mA
>> I:* If#= 0 Alt= 0 #EPs= 2 Cls=08(stor.) Sub=02 Prot=50 Driver=usb-storage
>> E:? Ad=83(I) Atr=02(Bulk) MxPS=1024 Ivl=0ms
>> E:? Ad=0a(O) Atr=02(Bulk) MxPS=1024 Ivl=0ms
>> 
>> This will result in the optical drive device also adding
>> the quirks of US_FL_NO_ATA_1X. When performing an erase operation,
>> it will fail, and the reason for the failure is as follows:
>> [? 388.967742] sr 5:0:0:0: [sr0] tag#0 Send: scmd 0x00000000d20c33a7
>> [? 388.967742] sr 5:0:0:0: [sr0] tag#0 CDB: ATA command pass through(12)/Blank a1 11 00 00 00 00 00 00 00 00 00 00
>> [? 388.967773] sr 5:0:0:0: [sr0] tag#0 Done: SUCCESS Result: hostbyte=DID_TARGET_FAILURE driverbyte=DRIVER_OK cmd_age=0s
>> [? 388.967773] sr 5:0:0:0: [sr0] tag#0 CDB: ATA command pass through(12)/Blank a1 11 00 00 00 00 00 00 00 00 00 00
>> [? 388.967803] sr 5:0:0:0: [sr0] tag#0 Sense Key : Illegal Request [current]
>> [? 388.967803] sr 5:0:0:0: [sr0] tag#0 Add. Sense: Invalid field in cdb
>> [? 388.967803] sr 5:0:0:0: [sr0] tag#0 scsi host busy 1 failed 0
>> [? 388.967803] sr 5:0:0:0: Notifying upper driver of completion (result 8100002)
>> [? 388.967834] sr 5:0:0:0: [sr0] tag#0 0 sectors total, 0 bytes done.
>> 
>> Signed-off-by: Chen Changcheng <chenchangcheng@kylinos.cn>
>> ---
>>? drivers/usb/storage/unusual_uas.h | 6 ++++++
>>? 1 file changed, 6 insertions(+)
>> 
>> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
>> index 1477e31d7763..6d32b787bff8 100644
>> --- a/drivers/usb/storage/unusual_uas.h
>> +++ b/drivers/usb/storage/unusual_uas.h
>> @@ -97,6 +97,12 @@ UNUSUAL_DEV(0x125f, 0xa94a, 0x0160, 0x0160,
>>? 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>>? 		US_FL_NO_ATA_1X),
>>? 
>> +UNUSUAL_DEV(0x13fd, 0x3940, 0x0310, 0x0310,
>> +		"Initio Corporation",
>> +		"external DVD burner ECD819-SU3",
>> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>> +		NULL),
>> +
>>? /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
>>? UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
>>? 		"Initio Corporation",
>
>It's unprecedented to have two quirks with the same VID and PID, where 
>the second augments the first by virtue of its wider range of bcdDevice 
>values.
>
>As explained in commit 89f23d51defc ("uas: Add US_FL_IGNORE_RESIDUE for 
>Initio Corporation INIC-3069"), the original Initio Corporation 
>quirk in unusual_uas.h was added as a copy of the corresponding quirk in 
>unusual_devs.h, which applies only to bcdDevice = 0x0209.? Should we 
>simply limit the existing unusual_uas.h quirk in the same way?
>
>Benjamin and Alan, you two appear to be the people who originally
>reported the need for this uas quirk.? Do you have any objection to 
>changing the bcdDevice range from 0x0000 - 0x9999 to 0x0209 - 0x0209?? 
>Or can you suggest a range that does not include 0x0310?
>
>Alan Stern

Of course, we cannot have two quirks on devices with the same PID and VID. 
However, since we do not have the INIC-3069 USB device here, we cannot
determine how to narrow down the scope. As you suggested,
it would be best to narrow the bcdDevice range to 0x0209 - 0x0209.

Chen Changcheng

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/202511100941253989454%40163.com.
