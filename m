Return-Path: <usb-storage+bncBCUJ7YGL3QFBBRM3W7EQMGQE6EKGKPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x45.google.com (mail-oa1-x45.google.com [IPv6:2001:4860:4864:20::45])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBACC98792
	for <lists+usb-storage@lfdr.de>; Mon, 01 Dec 2025 18:17:59 +0100 (CET)
Received: by mail-oa1-x45.google.com with SMTP id 586e51a60fabf-3ec31d72794sf6603524fac.0
        for <lists+usb-storage@lfdr.de>; Mon, 01 Dec 2025 09:17:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1764609478; cv=pass;
        d=google.com; s=arc-20240605;
        b=DUOPlfNdAGNqPndZbgSmW/q/UBeywW3JpjoxaOnti/txKop2x5jLTWD4ZCCSJxiwYT
         ANBVwviDnpLjFg1fq4ArrU5ufICldFqp/JaLhp+8zM5uBGVf+/RIkXcyL9Knf7IwFczj
         eSlLv6ygojZ4pUGiINrEN3zlHgQWbZYIz+BX9gLEuMb04awcGug185vabRK6ACcqoaw+
         u9C5vyuPQde2IZfO+aCVJGryY+rfSmuwqMDvkufcOmgtcCU76qOomJCk6fENMuQbcbyg
         yAedvJ7jOF4THFXW/iKjTw0ngzNViIjNhnstwPIgaq/EwaoT0G+34E3cNL7ShGq1Aqpp
         vgzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date:from
         :cc:to:subject:sender:dkim-signature;
        bh=xfyn8jCIBSTJkgh1za1bP8T5+gbUHymjGYWNw3Ockoc=;
        fh=WDYKyV56lZg26gWzJsiSoQ/hSXCtE5arzH45iZKj/yE=;
        b=BaJvKpwSma+oLmIGrD1PEDEFR3wCUN4Sg08K+YqyA5LeOdfq3AuYoC5BQjZe7YREwI
         Ac6SdH15Pg0UsOiGYU1A61S/xfeHCYLpQ/QEq67UqLrgbAa+sXcN8DDByH1HOaHgorTL
         YtRH8YMtG91s1+7UgZ+Pghu9EvzYw6DUCl89RGTDcbbuCVGzmVa9PHXe+UEUnh4r913i
         KkF06oOYG3J287cY1E+PpV4Ko3aGVIJh5wafZELfDPPTIdVDUSpUXRHgi1X7e5IqvzcQ
         cykWSaE7k4bhC8nqMG7r8tuI06JpCJUwQo9OW59GA/6/RiSgjpiDWizD19EyfhOjB5YR
         DRzQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=0B1Tyv8W;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c04:e001:324:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1764609478; x=1765214278; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:from:cc:to:subject
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=xfyn8jCIBSTJkgh1za1bP8T5+gbUHymjGYWNw3Ockoc=;
        b=NHx/OR0/H/dZ2nyZm2E/j9IQEhtBQ6NuVOF8sn46INw3oij9niq/WFgTcDPhxBHFFB
         MbM5GmpOBXVvVq6ic78q1ihXwJyfK4RIQRT+ZfJooYA+7fQ2Y8S974oV/+QF3v/BzzVE
         fysPWNRdl+i/RLC67WeN4qequaSr8Phv83Bc8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764609478; x=1765214278;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:from:cc:to:subject:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=xfyn8jCIBSTJkgh1za1bP8T5+gbUHymjGYWNw3Ockoc=;
        b=aH5PaMgKOWLh3jnqytN4+o+v6428DVy0njSM3Rmo9ZcTscVZ9Z0zIyjEZKSHy087OD
         9h/habbQnsJ3nRdZUG6JqceucXrspRftfZ3YeioH/jOIEypW/tzrX2hBs93BOJEZJedp
         WN/nObyLEIcXjx6E4BwA2EEGy2UUjzz4Jqk1m9vnmgSM0iE65c3z842O0hgy1U+yGQQE
         hmQAYOFa7UxuAT2ARB1Ckccziepw2eY69pmFVcsiSJb+cG2K+dgwFz0U2h+hwEL4bT/y
         VoVO7et/fAAiqAELDVVbBk0MTtwUq5ez4rtvr3bck0wSvYVfrOHSWkE3BeoYVqaQnDvj
         yvHg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVmvj0EkRpQEJfjh/c9AgTN6InHCD2QJbunhp5plQ4nLx8xk4rY9ZUI3TcRzBIQYiOoQ3WgCg==@lfdr.de
X-Gm-Message-State: AOJu0YzcKsZ4cPq3ExzYT5TCEeppNXdDXK+r1Sft1z/sV3iZCOnpQ5b3
	PPo6kQIFg2zc8SHFB2ASOK+yLo8vPPzAyiKYzJOX/RjJUcdhDzgyzPwj0Ypq6ppxweY=
X-Google-Smtp-Source: AGHT+IGgWj7rLQX6tbCyyLBErIAqagkjT1WuPk7kpCHJNZIKwkrTWEqyTjd72DRuLGOyvAOuDCcRsA==
X-Received: by 2002:a05:6871:3298:b0:3e7:e85e:84a1 with SMTP id 586e51a60fabf-3eca15e43b8mr20694267fac.4.1764609477370;
        Mon, 01 Dec 2025 09:17:57 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+bid0svzvqafPPLon136EkAGpGxLIMTIP4JJk5/llnnsg=="
Received: by 2002:a05:6870:8e14:b0:3db:9ad3:39cc with SMTP id
 586e51a60fabf-3f0d236d320ls1499131fac.0.-pod-prod-00-us; Mon, 01 Dec 2025
 09:17:53 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXJVhOoTIDMWpmHd2GSG3CP3aSCPJBU26rXNe/z/fHT8sU28R1YYFnEE16M5gxBxAHvKA/LpKVNfa4xIA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6871:829:b0:3e0:c368:e1cb with SMTP id 586e51a60fabf-3ecbbdc092bmr21587194fac.14.1764609473027;
        Mon, 01 Dec 2025 09:17:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1764609473; cv=none;
        d=google.com; s=arc-20240605;
        b=UV8yRMrdZRSIdo9RTZVDxJJKjown9EvmLxEi61PRHCG/pnd7AohYEj/IrC2jz+GXmn
         aJZBHhxO7eAyuKbT8gCjiDAgQuFoc1m8AvEDEOk/jDwIEa4XmhABEBHt9ckA1sdSwDmo
         UJi9Bzyg2e1Pqmtz14H4me2J60r40J9Wl3cwpG0MI4uYcqHG9BIFU+j5oh4hEE9T7Tqw
         HhZx7ckEhXqgdYLa5zZk6s7GneQVJYY0pwGYy4iUjEFIEie2C+3cqqA66tdPu+16ixIb
         g+HuFWGQXAaD1v23Sx/I99aM07oCOnqqNQHdkrJWMAocOZufGc3vxXT0B99uYm/SJ5XS
         mAyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:from:cc:to
         :subject:dkim-signature;
        bh=z7Pk1PpuHjQ9SAFinXLWMbpQHyI9Yspehj4gWOPnvS8=;
        fh=aNgFI6mOPPuWt6q1yuj2X5cK2gsIPWfJHp4SmQfJs+4=;
        b=VIZNsb54lkMsUyDQ3Ul1Jn2lqtVbv2GGl47UoOfpUTpRqbS/PRiYim7D0Y/ojGvldZ
         6N1Lhp2RLY7o399HmMcc8Jz1rcZAcQ0pxDrIlSXVbs+6OFk7/9jc2SYrvumT2bRNFYw6
         4V++N1NgSKsb3fFciVK4qLgzVnUP4PhOB3ivGRUaPUMJ+Pvye9NGL1JG6NQRGrNqVlwj
         Y+WtwE2jNxzr8R5vHmnaPrVZy4OiTr0XHSFFJaj5ZWfeM9zrR0Yo4HtVE0EPN0aBcE4H
         cnCAffHWM9D8qexKEftcHQxQtRiANBcopnLRvzYP9Tt7nYKH5scJshBFGY8jDxqIPg5M
         9TVQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=0B1Tyv8W;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c04:e001:324:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [2600:3c04:e001:324:0:1991:8:25])
        by mx.google.com with ESMTPS id 586e51a60fabf-3f0dd03fe86si2260193fac.1162.2025.12.01.09.17.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 09:17:52 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c04:e001:324:0:1991:8:25 as permitted sender) client-ip=2600:3c04:e001:324:0:1991:8:25;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6BEDD60157;
	Mon,  1 Dec 2025 17:17:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A263BC4CEF1;
	Mon,  1 Dec 2025 17:17:51 +0000 (UTC)
Subject: [usb-storage] Patch "USB: storage: Remove subclass and protocol
 overrides from Novatek quirk" has been added to the 5.10-stable tree
To: gregkh@linuxfoundation.org,oleg.smirnov.1988@gmail.com,stable@kernel.org,stern@rowland.harvard.edu,usb-storage@lists.one-eyed-alien.net
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Mon, 01 Dec 2025 18:17:32 +0100
Message-ID: <2025120132-baton-joylessly-3970@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=0B1Tyv8W;       spf=pass
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

to the 5.10-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     usb-storage-remove-subclass-and-protocol-overrides-from-novatek-quirk.patch
and it can be found in the queue-5.10 subdirectory.

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
 drivers/usb/storage/unusual_devs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
index dfa5276a5a43..47f50d7a385c 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -938,7 +938,7 @@ UNUSUAL_DEV(  0x05e3, 0x0723, 0x9451, 0x9451,
 UNUSUAL_DEV(  0x0603, 0x8611, 0x0000, 0xffff,
 		"Novatek",
 		"NTK96550-based camera",
-		USB_SC_SCSI, USB_PR_BULK, NULL,
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_BULK_IGNORE_TAG ),
 
 /*
-- 
2.52.0



Patches currently in stable-queue which might be from stern@rowland.harvard.edu are

queue-5.10/usb-storage-fix-memory-leak-in-usb-bulk-transport.patch
queue-5.10/usb-storage-remove-subclass-and-protocol-overrides-from-novatek-quirk.patch
queue-5.10/usb-mon-increase-buff_max-to-64-mib-to-support-multi.patch

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025120132-baton-joylessly-3970%40gregkh.
