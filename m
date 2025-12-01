Return-Path: <usb-storage+bncBCUJ7YGL3QFBBTE4W7EQMGQESTKSZMQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id E2036C987D4
	for <lists+usb-storage@lfdr.de>; Mon, 01 Dec 2025 18:20:14 +0100 (CET)
Received: by mail-pj1-x1048.google.com with SMTP id 98e67ed59e1d1-340d3b1baafsf5900897a91.3
        for <lists+usb-storage@lfdr.de>; Mon, 01 Dec 2025 09:20:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1764609613; cv=pass;
        d=google.com; s=arc-20240605;
        b=HhgeJk7WQ20N5mL0KoQA55qpv73oN9Xheofw3HNAWTZV+/LUyt3a/I9HG3L5IuXw6j
         7Lx3wntHuyhESznbSiMvdpOFhfZe/0XkLZ5F9aP+RUTrBDsKek35hxZz79aIQ+eEMLLu
         d14OvVGk0f95x90VmSZedMBITmzqxDB3cQDDEETZWPtltNIBEbQ2x09QdJERgts4Smy0
         Q2DgGc8xh/lQW12BDJKWi+U62LQlebJjDSm9F2IG4loAVpLiP6Rl1xiXWyRWW01jBSSg
         bKoR4EPRq0/wfC5JF8zbE4pZobazBH3m3eBOkmSjpyIJTfcCtIkiBfGrfKebk5UcsN0D
         cGHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date:from
         :cc:to:subject:sender:dkim-signature;
        bh=CBElc0golfR3RtTvbDj2Why/HAza5sSKfRu383wDpcU=;
        fh=GTmXDR1sdB2ocEbNdsfFntC4N6hPiZdZB767LC2xq/M=;
        b=QU+9D5XcXeDWMrvigR+k4YGGT+PrCU2cwKg6zFCiRwoQ7jssnw/0+YARR/0dWhNqOB
         djjWXuO2VZ34T8ZUB3xiWHImMIx2zNc4bfObZF2s8YfNBFM8M3FdNYsYfoc5AZIkKKMi
         c+6ZpJA4gej3BXE20NEAuQKIML9Sm0M/66pHH5XlcmOUmnPiiJs6IzGq7YV2OZ6HOrZI
         lLptQi9N8AUT4clYTOaAIMmkHHgezy9szWQ6btNjMmvMvNxEm3e0If9hGrYf7VL+YiUQ
         k7pF80NcRJVMRt+GJOpDCHyZHp6Axro7kp/rVYLnc9YguEtYkLCwamphxitr3Q17/+dT
         /PwQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=NGphxNeh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1764609613; x=1765214413; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:from:cc:to:subject
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=CBElc0golfR3RtTvbDj2Why/HAza5sSKfRu383wDpcU=;
        b=Ukii4XE8+yrVq8Ata6ZwZ7slkkP23YSve/GLyeGcvqfzkgEAY+HTC1kp8iSHYszkNH
         0EjZ/Aauj6JPaH8PgpC7XHUJ1dYgx0kO2AkPGCLr09FLhytIArABCVGL4ZJIrs0o/5vl
         H5M/JOjyUTQ0cs7oC2tT1FBTVqFNuvoUnL3Dw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764609613; x=1765214413;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:from:cc:to:subject:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=CBElc0golfR3RtTvbDj2Why/HAza5sSKfRu383wDpcU=;
        b=r57uolRxKbo+PqnKpgCzxEcnXyutGNx/XXVen3M/RYpeYYuT/rwHt951A914WEG547
         uSqxLZn89cFKAFDOGtCCSMra/m1fTOTUD0S6OskkZ613XWyu7a+gr7Tl2ENXJPl1YmrF
         IJiUn/lj0BSIHWWl/kabxeF0f+PhbjOOaoroju/NwX4nQr9NRAqwKR5QTCa7WPpwnXDY
         88klSUe7FSm0H0enC1VJ8RZ8cB/7HW8nbE1ikJmD1aBT8H8E4lRTK3wu4PrbmODyc1Vj
         RmZYSTI6CkkSKQ6aHuWDsV3NaxL67E2w1exePCWA/k8DCeFE4LEUw0w40NqDP5zL5Vdv
         MwWg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV6JdogT7ZKclyhMep7F/sHZj9FoSHCo43qh3v5t72BPX5BfYCXeS/0dek0vfYE0SC0O8WCcg==@lfdr.de
X-Gm-Message-State: AOJu0YyoKtHMwPNnQcP/zPUmskVrLdqFyXcTmu85vRLXERQlxxX9tvyR
	zxrP8kxWCQR/1e4cBT2e/Cj9UkKTMOMVON7pekbdnQ78BjqAG9pOu7/hYqAmGMeSVmE=
X-Google-Smtp-Source: AGHT+IGYxQXeVYWzD+DVNFSgQo9A1KFQcOeJkaukO3i+9Q/NAxFGelp8HquisHuqtfbPlCSQZjFxcA==
X-Received: by 2002:a17:90b:4f4c:b0:33b:6650:57c3 with SMTP id 98e67ed59e1d1-34733f21e63mr34731854a91.21.1764609613074;
        Mon, 01 Dec 2025 09:20:13 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+bYgrHB0jAnJuvVg74wB6yN8pp8qb/z+bbu8EE7TgBOvA=="
Received: by 2002:a17:90a:154e:b0:340:d06d:7e42 with SMTP id
 98e67ed59e1d1-347771d65e4ls3344913a91.2.-pod-prod-06-us; Mon, 01 Dec 2025
 09:20:11 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUXEOoV4SOKWsA5ElXOlG9iqW+OX/B5qYTk3bSU7NCyred/ScVeN+nlzcHUJPFIXwJwssinJ43GIVjjCA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:6daa:b0:340:e2dc:95ae with SMTP id adf61e73a8af0-36150f2d4d4mr45164164637.42.1764609611447;
        Mon, 01 Dec 2025 09:20:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1764609611; cv=none;
        d=google.com; s=arc-20240605;
        b=BpdAMMS+VfCdICn0EDn7VeGooywzfDoCHiBrDQ5BFgW6hL1p7Iq91anjF8YJzMUVLl
         DCzJ0kisQGDY3QhT81YMIpofFQNSHMQbeAiQDDiiKCRxN7TkiL/0VI99vrVxEfYsnbeI
         hxJ3bLzy20LrTsfuJxpjWsEBg3OjbwgQlXrfPSv4n7viduieisFbB0Axyrc7FT4V7ByK
         tnlzz/LA69Ukc8JMAJFYrg5Rd+qFt+dZd/LT62RDfR3c12A7RZkZu+p3Wvb6T3CA7UQW
         xdF6UjAb132HH6Hi5StpkltbEE5ywsIqnf7jh8LoOZA8JdMQTVVofw7neq6TYHOc/vQY
         SeoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:from:cc:to
         :subject:dkim-signature;
        bh=P2VM+bAWLmZHx7owvntM1GpUwm2cgKDraSCykglkhpQ=;
        fh=aNgFI6mOPPuWt6q1yuj2X5cK2gsIPWfJHp4SmQfJs+4=;
        b=Mx/cm6T7jBKBT+0WutK1p9XWlb16TlFaCaQmaSrvmjmhlo8S2GY97v13D/x9Mpd1KQ
         J35ylzrbc+J8EKBaCOeCw3PJezYKAu4JD+xcIzSAgeopOtVKUU3S6I00zAaaqly/YDv3
         jFcLv+FvokysGZs1k53zpBPpc03p6dI4k1MU/WN6mKIi5M7kZoqJM8FXPc+t0hF2GO/O
         ewHqQXHwqCuKjQ/Ap09wlFoXHb48ukJ22qXfwz4TSRY1naOnmTBd4IoNZOd6S/DHidTU
         AOwAp5CJkpw4JUr0ymbBTa8X6C25ZqNg2LF92cwOZkQfeuKx/xBvFxA6Xwk0q1dOmNoU
         cvNw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=NGphxNeh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [172.234.252.31])
        by mx.google.com with ESMTPS id 41be03b00d2f7-be50988a0b5si6188229a12.1420.2025.12.01.09.20.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 09:20:11 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) client-ip=172.234.252.31;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3431340BE5;
	Mon,  1 Dec 2025 17:20:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E7F9C19422;
	Mon,  1 Dec 2025 17:20:10 +0000 (UTC)
Subject: [usb-storage] Patch "USB: storage: Remove subclass and protocol
 overrides from Novatek quirk" has been added to the 6.12-stable tree
To: gregkh@linuxfoundation.org,oleg.smirnov.1988@gmail.com,stable@kernel.org,stern@rowland.harvard.edu,usb-storage@lists.one-eyed-alien.net
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Mon, 01 Dec 2025 18:18:16 +0100
Message-ID: <2025120116-epidural-blog-bcde@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=NGphxNeh;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

to the 6.12-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     usb-storage-remove-subclass-and-protocol-overrides-from-novatek-quirk.patch
and it can be found in the queue-6.12 subdirectory.

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

queue-6.12/usb-storage-fix-memory-leak-in-usb-bulk-transport.patch
queue-6.12/usb-storage-remove-subclass-and-protocol-overrides-from-novatek-quirk.patch

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025120116-epidural-blog-bcde%40gregkh.
