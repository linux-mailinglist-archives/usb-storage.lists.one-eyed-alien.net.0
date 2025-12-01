Return-Path: <usb-storage+bncBCUJ7YGL3QFBB6E3W7EQMGQELOEMTWI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x45.google.com (mail-oa1-x45.google.com [IPv6:2001:4860:4864:20::45])
	by mail.lfdr.de (Postfix) with ESMTPS id 66013C987B0
	for <lists+usb-storage@lfdr.de>; Mon, 01 Dec 2025 18:18:50 +0100 (CET)
Received: by mail-oa1-x45.google.com with SMTP id 586e51a60fabf-3e89a6d2236sf141151fac.3
        for <lists+usb-storage@lfdr.de>; Mon, 01 Dec 2025 09:18:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1764609529; cv=pass;
        d=google.com; s=arc-20240605;
        b=gbLofLhcZnteum0xisyU0i9O7flcymy8APJQ2feenc7EiUlO60P8VOUmxSWO1aZgeS
         6Od2Vi8J8L10sqTq4O9cW/mJQjE+bgItQa+AbLCa3uiXtQZRdIyAYTD5HS8bIEMTMQdh
         YbYy0i9e4BUA02pQY6LkdwXhCjvXTpwPbytcNNNUNfzQYrzXVHcNJmsF/0VHCEDnfHYL
         QibYUoKxW6Rk3fUalOmwdv1Y3teYD8U0Lq3BHCPF/ZdRyGtrizjhPB5WNHnY7oGe59AX
         JJDsyXglN2Is/e5IwZ8W0m9f7G0IL73WKjXK4u7UUwYHMdjOFQG/d7/Fnbz7uQVIgXoF
         KR6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date:from
         :cc:to:subject:sender:dkim-signature;
        bh=Ki6ib6zJcNeVA/ccSED2WJF23OclC/BWVuA9Wf5qRVc=;
        fh=kIFY+obceQ1dxQfd5wNgwEi0HCPRSTOPfzP1tziF074=;
        b=IKqxiE1oYaStsaUCPDuNUvFH7QUkSParlNLwNv9tpgxsLUKuLNjLK0IGH133vgR6e+
         8sdtjvddW6IVe7FCkDI2CzZFrdbskeN3O9Rv7DFu1nKB1D+2lTeKeodxN1gZ3z6g8x6J
         Y17ddNgTlJtrvW0c1BAbdoCbn/pgQdss9hLMN+Go3Hstv/1qR+WZZWeYyJ3SEHTqfhyF
         haXQWOZ3D7foPOB8E2CLe+S1OMRuKlLQiMhZgbJ7u6IKZb8InylMq64c1MvNwB27ohDk
         ydmGB0GDSSbOTLRBBxglk6SuNEU0uSFpf1DHF8HBFL/MBWcvwCUoy4MxzmYBzJ0Ma8O4
         UJKQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=yjZAF1YJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1764609529; x=1765214329; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:from:cc:to:subject
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Ki6ib6zJcNeVA/ccSED2WJF23OclC/BWVuA9Wf5qRVc=;
        b=KgNpbOKEbNmUYay9jI37TjQIbHQAIcx5yJGz2YObjW+qRnflIZqyiORBvvmPPjs2fe
         gy7qabX6+rrhAeJB7050JA5H6Re+6bId2TlLm2uomdIHpl+vDqRyhgeFOKbXWWI9FGET
         8FW4TX9l4adZQkE/1J9gRyJIbOZBJZ8QwopYk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764609529; x=1765214329;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:from:cc:to:subject:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Ki6ib6zJcNeVA/ccSED2WJF23OclC/BWVuA9Wf5qRVc=;
        b=buc2qFHtB92RG/5WBzP8F1/n9+YTRqjVXtAN0ije1BfWerfckd2Rys0bnsCrGgiPYG
         pZEwY6oDCalNuhS2PnPiWa8HS3sWoDNw66RXcrZ1wC+Y04gan6BYNn/33soxyfaST/DV
         9phxcqzblDyHuXbetsQEOfWjkcovhQJp9h4gWxGuyGBMIAubhKRsI43Ls2xLY6xA/B7j
         Un2k28+qfpVet+cE5gChPb/D60vJ/oxKE0v6+9w/x486oyYJQs1zSTng9hugG5tHTlD8
         PKL4igq5pqu+UEBfP9TdRBv0epZkIs8zRRoyj/mq0qQF4iqLeQzw4ghNpnZW6PtCPlHG
         nuBg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUMVfWgC44AevIDII9Dligx4qugTwlDi8V9S0ka85o6o1I8Ck9A+blsbtnx7dxONZnpjfB4Jw==@lfdr.de
X-Gm-Message-State: AOJu0YziWVEizYovcwg4l35o+pIVcTgrFfbhKBH5fMHFzNW/hZScipOg
	PGxW6lTdmkVBRyoWvZ3tUAmbJN8dWcho91pHDa5JKeBmufzyO/bvLCIbMDgrk5eezylTCWONZHo
	=
X-Google-Smtp-Source: AGHT+IEJyMtB8XKn8TqOYz5sLSOaGSvhQBbKqx4vM97T+5BOYZ0BeVgFeLcmRC+DEHk00MkbLgHNzw==
X-Received: by 2002:a05:6870:249d:b0:3e8:9d46:beee with SMTP id 586e51a60fabf-3ecc3cfe9c6mr10795164fac.4.1764609528967;
        Mon, 01 Dec 2025 09:18:48 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+Yy3wiLGpN0cM587Co2hMmFNtdawsqWm/WjYJVHmhhNBw=="
Received: by 2002:a05:6871:4312:b0:3ec:4eb6:abba with SMTP id
 586e51a60fabf-3f0d2699f8fls2394707fac.1.-pod-prod-05-us; Mon, 01 Dec 2025
 09:18:48 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXADZvOviTY9X9cVS/7JBE1UL3AdFuuUfwfPP1QFSzoA6ikj7enn7oMv402qeT3K4VaZHmEMFsmqYb1AQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6871:288d:b0:3ec:40cb:785 with SMTP id 586e51a60fabf-3ecbe61d3b0mr19989521fac.50.1764609527837;
        Mon, 01 Dec 2025 09:18:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1764609527; cv=none;
        d=google.com; s=arc-20240605;
        b=f6rtJL7ctpwrmd2KBPW5xBebNh/bKPGmyTRgAeewg4b9DmCDi0Ry+xylt8QRxqoDe/
         682e9yN+FTpNWVvP8iDUDYXtVAYRjjGDNk32sGIwdpmULIctzouPLFqsMEkYlkN6G5M1
         fO8cBEDbYwsJA4N9uY9WtCd/z7Vq9dTe+daGnoxRmpsJPTMtNFqkrVL8tGrq2Y2r027c
         CpEwZCEV8FmPGo3eHBBOGPOUzloh7TZ7kccsIBbHpuk3/n3ejx6lZj5UOeOVDPshAZ6O
         pYIkkjgzf8fjktfaCHn/H/YFhwIsDspxEimS1zgFCJfY66nPO7QtgzC7FV7de1B7az6Y
         cbcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:from:cc:to
         :subject:dkim-signature;
        bh=TVEJPVLcdeNlMqBdDTBEj/2uqzJMvahPs4ZXJElX2VQ=;
        fh=aNgFI6mOPPuWt6q1yuj2X5cK2gsIPWfJHp4SmQfJs+4=;
        b=i3KragiRXT6VV20YKx6UphPLfhBYAxMLrBuZwNNNXzDGQpAVFz4oRTDNAkq5DB2t69
         smfqaS6t/sf1VI4POaZXoBJ8ueMiGs8TxKSl+olJ8tybwjUG93kmZQrl84fhTJIWHu+D
         jx+/jlFCjpGdJlido4pEfGByQCzbilAH222e+R169joQq6W5x1icsRcwWnnT9nzUW6IS
         LEPDvJrJgkQ2aqTq1HkaFucNicIrRG2RZDqjGfq4BZ5gbLRYqZjVOmOwabBVLudPtSjQ
         R+2eGShpBB//VAIihXNnDwevXNpPQox5dj/KT/XalNomq70gmMS5vY3bp0vSzAm4jM7Y
         9iRg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=yjZAF1YJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [172.105.4.254])
        by mx.google.com with ESMTPS id 586e51a60fabf-3f0dcfbbfdesi2419230fac.448.2025.12.01.09.18.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 09:18:47 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) client-ip=172.105.4.254;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 53C0F60157;
	Mon,  1 Dec 2025 17:18:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87AAEC4CEF1;
	Mon,  1 Dec 2025 17:18:46 +0000 (UTC)
Subject: [usb-storage] Patch "USB: storage: Remove subclass and protocol
 overrides from Novatek quirk" has been added to the 6.1-stable tree
To: gregkh@linuxfoundation.org,oleg.smirnov.1988@gmail.com,stable@kernel.org,stern@rowland.harvard.edu,usb-storage@lists.one-eyed-alien.net
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Mon, 01 Dec 2025 18:17:57 +0100
Message-ID: <2025120157-striving-turret-1569@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=yjZAF1YJ;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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


This is a note to let you know that I've just added the patch titled

    USB: storage: Remove subclass and protocol overrides from Novatek quirk

to the 6.1-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     usb-storage-remove-subclass-and-protocol-overrides-from-novatek-quirk.patch
and it can be found in the queue-6.1 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From df5fde297e617041449f603ed5f646861c80000b Mon Sep 17 00:00:00 2001
From: Alan Stern <stern@rowland.harvard.edu>
Date: Fri, 21 Nov 2025 16:29:34 -0500
Subject: USB: storage: Remove subclass and protocol overrides from Novatek quirk

From: Alan Stern <stern@rowland.harvard.edu>

commit df5fde297e617041449f603ed5f646861c80000b upstream.

A report from Oleg Smirnov indicates that the unusual_devs quirks
entry for the Novatek camera does not need to override the subclass
and protocol parameters:

[3266355.209532] usb 1-3: new high-speed USB device number 10 using xhci_hcd
[3266355.333031] usb 1-3: New USB device found, idVendor=0603, idProduct=8611, bcdDevice= 1.00
[3266355.333040] usb 1-3: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[3266355.333043] usb 1-3: Product: YICARCAM
[3266355.333045] usb 1-3: Manufacturer: XIAO-YI
[3266355.333047] usb 1-3: SerialNumber: 966110000000100
[3266355.338621] usb-storage 1-3:1.0: USB Mass Storage device detected
[3266355.338817] usb-storage 1-3:1.0: Quirks match for vid 0603 pid 8611: 4000
[3266355.338821] usb-storage 1-3:1.0: This device (0603,8611,0100 S 06 P 50) has unneeded SubClass and Protocol entries in unusual_devs.h (kernel 6.16.10-arch1-1)
                    Please send a copy of this message to
<linux-usb@vger.kernel.org> and <usb-storage@lists.one-eyed-alien.net>

The overrides are harmless but they do provoke the driver into logging
this annoying message.  Update the entry to remove the unneeded entries.

Reported-by: stealth <oleg.smirnov.1988@gmail.com>
Closes: https://lore.kernel.org/CAKxjRRxhC0s19iEWoN=pEMqXJ_z8w_moC0GCXSqSKCcOddnWjQ@mail.gmail.com/
Fixes: 6ca8af3c8fb5 ("USB: storage: Add unusual-devs entry for Novatek NTK96550-based camera")
Signed-off-by: Alan Stern <stern@rowland.harvard.edu>
Cc: stable <stable@kernel.org>
Link: https://patch.msgid.link/b440f177-f0b8-4d5a-8f7b-10855d4424ee@rowland.harvard.edu
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/usb/storage/unusual_devs.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -938,7 +938,7 @@ UNUSUAL_DEV(  0x05e3, 0x0723, 0x9451, 0x
 UNUSUAL_DEV(  0x0603, 0x8611, 0x0000, 0xffff,
 		"Novatek",
 		"NTK96550-based camera",
-		USB_SC_SCSI, USB_PR_BULK, NULL,
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_BULK_IGNORE_TAG ),
 
 /*


Patches currently in stable-queue which might be from stern@rowland.harvard.edu are

queue-6.1/usb-storage-fix-memory-leak-in-usb-bulk-transport.patch
queue-6.1/usb-storage-remove-subclass-and-protocol-overrides-from-novatek-quirk.patch
queue-6.1/usb-mon-increase-buff_max-to-64-mib-to-support-multi.patch

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025120157-striving-turret-1569%40gregkh.
