Return-Path: <usb-storage+bncBCUJ7YGL3QFBBIM4W7EQMGQEM3FRVGY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x245.google.com (mail-oi1-x245.google.com [IPv6:2607:f8b0:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DEFC987C2
	for <lists+usb-storage@lfdr.de>; Mon, 01 Dec 2025 18:19:30 +0100 (CET)
Received: by mail-oi1-x245.google.com with SMTP id 5614622812f47-4510650af52sf4754489b6e.3
        for <lists+usb-storage@lfdr.de>; Mon, 01 Dec 2025 09:19:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1764609569; cv=pass;
        d=google.com; s=arc-20240605;
        b=IXbZ3Y8iUiAGs5tqQIak6l1OPrNMk2ylkOVPSTK8TiqDqOovsjeUWljeEho93uu4T9
         Nf8B1FOEBUgimwUB2op50xxFTWHAn2uK3OmjbrdHaAlDNaBKhV7geLn5dzCiJWZpoqMW
         muNzcA/6WO133HFKJouSc8ZQpIyUnWdWg3bsPZo+NlJceR48UlaCkUMPFy0yohn6fS/M
         zv5d6YxS5OaJ69UEl1Yxuhk03YPQGi7AEtZvxdDt6Mdm81xjPAPiBoJbrGCpsLAOaHan
         LkXwBSomcPh9Smf8M5INtKYOoj9eSGwKKLvecSG3wswMWVWRT8eI90PyZdyJBqNuAVE+
         Gadw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date:from
         :cc:to:subject:sender:dkim-signature;
        bh=THvcfhD+44fQ7paPUoxxWBw1gHeEuR/MUE/A0gCPDS8=;
        fh=7op7dg+A1rb2MJbR3hCtMssxGhk5OeydHmqE84BtMbk=;
        b=XTxgPwpgsh9sx+3mN5j53Slj5I/o4VBMcHWsj/ikbuS0sLgnEZoB8EEFNgOU3+VXOv
         MAos5PYwATO+4w9p9XuBNI50n5sTP01zqC74b/IwlEd3LkH6+oq504T3gM0Zwm2duKg4
         U8JUQ/zwoWL554xRRNAa4+PCjrOlVEpOPyDhW6h4d5+QL+lm9PiZYCzXXmw6ppZx9ORK
         wLhzxy5kWrG/0/d07hLyjJlUO5EQTpjy7GQNDblXQ13sFn/d4STssSkENejImmLYYZHC
         5Nv1Bjwh3gM5F0gyyoQydH7h+irIKtk+UYoN62nQVa3B++37BM8+w8mW5vpnMmc3WfCy
         2YVw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=nOdTtQ+s;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c04:e001:324:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1764609569; x=1765214369; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:from:cc:to:subject
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=THvcfhD+44fQ7paPUoxxWBw1gHeEuR/MUE/A0gCPDS8=;
        b=aIPOTDXE9BqCl5ZFrzE627e+8n4xXWXIPRzaJm24ajyA5r7cndIEZj3qUEVNlsaz3l
         fm3xZQUvap87b8R96b13c8eq7F2x8vV74rGC+PbVe23qN9RMDZUV0RcamvAPrQFM15PA
         Nwuo8cDbYZvIfM1FkYYA48etI1ICklGj4TRIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764609569; x=1765214369;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:from:cc:to:subject:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=THvcfhD+44fQ7paPUoxxWBw1gHeEuR/MUE/A0gCPDS8=;
        b=VpYHZvu0C7Ct1A1pBLyiWPgGXNoKfPNlfEHmRF9huRsTYtdhHKlYr+g0zbPBRHAbQo
         THlteKUra0KtXLbRnlF/giiLUs7bjc+6uIzCM9GCJr+WmuKT/RPQC7yO0a36uht4Adly
         661wG9qGOCPx8ldyLXj2r+ICq+PdxRk4QxBxylr/lNzPYmN+Mj5Z0uwWsIKRlD6GDekD
         xCQv9Fo6bECYac4aCsC3+zgzR5uJJQhTbJDgz+f5uyzpcc4i/cjHN4KpRvZZPySk7khE
         rF5LhQZzv7K70D/s1Er0GErU5hnyvDKtwpe9RagDDTqACOVALW50tS0yUpcpyFVotOsd
         NSAg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV3FOta3h39GUFPkplEyrNKv83rbaLyuZouXVRv24aRmVMsK37VNd3+23Vxh5YhaRdatRuIyw==@lfdr.de
X-Gm-Message-State: AOJu0Yw9o9IsgRYALqx+PiINDgOtOIo0bRWfRZRYG6xRHJQH4rzdEDIP
	ekQHA0lgoBNyb8FBC+ty1DuAXC+bmRvqDG6mqy749lkI/UA0W/6/JZhD2cg3dZLHQmg=
X-Google-Smtp-Source: AGHT+IFGgQ0f5e+rH5E7ezCnxzszdD1fRUA0D7zyEcoMiRX2AUdPIh7hasdgmIT37+IHV5CyF3OUGw==
X-Received: by 2002:a05:6808:2219:b0:450:b947:1da7 with SMTP id 5614622812f47-4514e7f43f0mr10265273b6e.36.1764609569406;
        Mon, 01 Dec 2025 09:19:29 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+biPu77Hx/RbKIEwsebJz1UEJIJQFUXeSt7xrEmRA+JFw=="
Received: by 2002:a05:6871:2e91:b0:3d5:92b8:657b with SMTP id
 586e51a60fabf-3f0d2386a7cls3257205fac.0.-pod-prod-09-us; Mon, 01 Dec 2025
 09:19:28 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV9NLVtDApkvkD/6Dls7EFfP1XyXHbG5I/vfsteCVxMRBUXSOve9bmkQOSlFMYNckTxUCJKvJ3ez4WKkA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:15a0:b0:441:8f74:fc4 with SMTP id 5614622812f47-4514e883dd7mr11998827b6e.65.1764609568258;
        Mon, 01 Dec 2025 09:19:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1764609568; cv=none;
        d=google.com; s=arc-20240605;
        b=C5fWZiWKx+ve5MLVbT3BmSg022BY650WRwpqbeBh8l9xOJcLTlfC3j/WFnwJ74o/zp
         Ocy2YV2pmoyswypS+dYhBPdmIUzIiEIBeYlS3v2MwqE5jJBgPJKc5LQYAhn0xfkfK3Fo
         vDXq8N+gx1eiIUbm0klPGaaQWHChrApACmGcpSgK9HThvENajHtpE7b/ZKAZZcmUQrsp
         q/Vh2zEB3oj47BYQvp7xtSlxgUra0zBya75XFS8g8fL9VySWU297N7EqmYAkK+Z7Lq5H
         LWoE2P33jpX9jAI7wabDNpULiKbZnwtErM9FYYgWD6gfxEn97YYv5TOKLNQJ7ITBe8vq
         0oTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:from:cc:to
         :subject:dkim-signature;
        bh=o5qe9yaljrvSc9zy/9sCspWauRgiX0/+GT+UjeqY7Do=;
        fh=aNgFI6mOPPuWt6q1yuj2X5cK2gsIPWfJHp4SmQfJs+4=;
        b=QAzYCVEAEmKNN9m2DZcAthRuH9Mzy/8VHRBGPf01rZUjMYijs5MHpvTvagrDup2gwO
         T7nGgCjq7H7fD3Vyb9YIP77mg4kYojC2Igi1T6opwo2nTDrnmBqQKw4TVmCkZpklAv14
         hNcLntNeQphdS1y0OIeNhZ5u+Xa2VqF0lH1bfMNEo0DVP5ljH1S4FkzMCuApRGJUH2yH
         iAZW64XJGKMY0JARSg3XyTUDWcJYAhCyLzyGAdX9bT+5pV9cVoYw5RsveKusYG1Oiehk
         X8XXQDKiAMcJ/otC5L/wkigXC84oF7zaUr5cj0QLEFvkA8u6ap/CgF+C0WiaDACZD0U/
         FgbA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=nOdTtQ+s;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c04:e001:324:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [2600:3c04:e001:324:0:1991:8:25])
        by mx.google.com with ESMTPS id 5614622812f47-453169eeeadsi1852743b6e.91.2025.12.01.09.19.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 09:19:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c04:e001:324:0:1991:8:25 as permitted sender) client-ip=2600:3c04:e001:324:0:1991:8:25;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8BC6B6018C;
	Mon,  1 Dec 2025 17:19:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D289BC4CEF1;
	Mon,  1 Dec 2025 17:19:26 +0000 (UTC)
Subject: [usb-storage] Patch "USB: storage: Remove subclass and protocol
 overrides from Novatek quirk" has been added to the 6.6-stable tree
To: gregkh@linuxfoundation.org,oleg.smirnov.1988@gmail.com,stable@kernel.org,stern@rowland.harvard.edu,usb-storage@lists.one-eyed-alien.net
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Mon, 01 Dec 2025 18:18:07 +0100
Message-ID: <2025120107-matching-matrix-867f@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=nOdTtQ+s;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2600:3c04:e001:324:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

to the 6.6-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     usb-storage-remove-subclass-and-protocol-overrides-from-novatek-quirk.patch
and it can be found in the queue-6.6 subdirectory.

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

queue-6.6/usb-storage-fix-memory-leak-in-usb-bulk-transport.patch
queue-6.6/usb-storage-remove-subclass-and-protocol-overrides-from-novatek-quirk.patch

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025120107-matching-matrix-867f%40gregkh.
