Return-Path: <usb-storage+bncBCUJ7YGL3QFBBXE3W7EQMGQEWBMPKLQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D72AC9879E
	for <lists+usb-storage@lfdr.de>; Mon, 01 Dec 2025 18:18:22 +0100 (CET)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-65747547d90sf3082098eaf.0
        for <lists+usb-storage@lfdr.de>; Mon, 01 Dec 2025 09:18:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1764609501; cv=pass;
        d=google.com; s=arc-20240605;
        b=Mk0sVB7wj2ZYI0OyaNXR+AvXxbzBbdWUcgCKueDOBieIbkpL/tibL9BBS/k7kUMzTC
         isaLb+DH2B+JCXnh38ti+LxJjTHgHvYju/r2sVXgUZ1bb7spXXpPDIPBz0tdDeaX5fD3
         8v4HmdK5Ms5EUAoYSIJqeuvUJ0Rt2kGauouCmohWA6TWs/ismsgSTKzZrnxihPkhvSdW
         6JgZhCPoJXQ26aqk8WucuMrEjrujifwvX6W1qNGsISW/wTmJm0wQo6r9xaEuy1p6xbAV
         uBDWy5k1d0N58hsv9hrVYHyHSyEE0mzFqgzVqQqNZmtqfRHNpN6v71tnesuNtGjBIsKg
         4zuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date:from
         :cc:to:subject:sender:dkim-signature;
        bh=jUQe+fx65QkPOcUtAjhvo417qLGkRu2snrr+XUVXqR4=;
        fh=OnBnFPXKABVEL4nCGMI1f2hmFgTUOiJoAsrUcVQmt/Y=;
        b=DRtQFhi8uDdu9tdLHl6UKbsrNvZ70NBc0JoybWE5LT/i/Px+h4AwshecOFyJmw5AYe
         2vnefVTKxrI6/Bf5Nl2PGA5ENFgDgaSV9/sCFH5uCBBmdjAaMh2gvnNsGIBAXJ9tkowq
         Mw7dOMoJiztzAKaE9qmX/F8e5yxLA4yB1dOT0TweMaFfqGZ1cMawjw85O5knxMul/jZm
         8x2sdTeU1qpsffrL81OByUHiHArQxonrSHW070WgShJ0Q8w72+f8wfB+66O8I9Cyo7Mq
         CqIhpP5revrWw2iU2dicXAaP7lc5YUnz3JIZzTPZrYFCoX1rFQGMBO2PoF3QYEMyWyeE
         nurA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=JLLIy9Nj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1764609501; x=1765214301; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:from:cc:to:subject
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=jUQe+fx65QkPOcUtAjhvo417qLGkRu2snrr+XUVXqR4=;
        b=Hg7DePmp59LvYB2IH+aXOj2bZv9eFfSI5Pf2XZkNLlcBAQsZNiV4gfSkS/+nqftpA4
         A9jsG69Ogz6Gl90p3KMbx8WLoObJt/nlzNEDPNP6gs/OIoS3lej7JK+yzSDdfiucqfb5
         iT6WaujA78P7Pg457qpNBYWOJbZF4/PYk1+vk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764609501; x=1765214301;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:from:cc:to:subject:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=jUQe+fx65QkPOcUtAjhvo417qLGkRu2snrr+XUVXqR4=;
        b=vMkF2xWX14Ggt8CcXjsQtlaGu5YA7+q0fLLtytJL73O97WIWZb6u/g0Ve4XASuHwMi
         xNSXTITGMoe9S8R4v19YPtxLEqm7SXwtH4oFrQzFXdVeyRmeTb8Jddy48pXiAXF4pctM
         Mklphup3to4nfVoihlDJnNojyS8sNzekhzGcbtZa4YAS3q0qvsWndon9eUd6Y9ZH01OX
         /whuYWWFuNQfJRZvnhk7uVqi+xfHzF3ZaY0EnK7PmWmNy57f7dpTEQsa7ts2X+wXti2s
         B1ZrKo2IsnTghizJrILoSl94XctoyuimMs+hKisnExfOfLThguwzG2isCvsm+zcNddq9
         xCTA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU1hhGZt1Hl4r7CbA2jRn5a9N+xqvpfKPg9eD8ztUmZqz92Ed1a9ijYYfVN8awXnZMNbRb99g==@lfdr.de
X-Gm-Message-State: AOJu0YyavELqu7AnIibHloGFEwTMWvfOeXW6fsK1w6kmOJgK6brSmjXY
	q1Jr94/HkUbFQgKn1x1uHyN002I+moJynzscC9XhRpEAa+W9AbcPfeu7+yUQ5KDCD20=
X-Google-Smtp-Source: AGHT+IFgeEzXxIERVWrWxR/sRDxhbONyb7tNJxltdj2KNU4O5F1oqmaH66PSM0F1Fac1e1HoamaPfA==
X-Received: by 2002:a05:6820:2d8f:10b0:657:4884:5560 with SMTP id 006d021491bc7-65790b0795emr12363142eaf.4.1764609500869;
        Mon, 01 Dec 2025 09:18:20 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+b4ETuuyzPExnkOgO5y/gDuETEIcgcQT0qlFmpaRyUy6g=="
Received: by 2002:a4a:d135:0:b0:657:5773:7b4b with SMTP id 006d021491bc7-659301132d5ls1452165eaf.1.-pod-prod-03-us;
 Mon, 01 Dec 2025 09:18:19 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUClEqxAkP2uLFK5S5tZE/CTvD33X55adEirWv3WiHFYEiuSlRjSUTk+NF7jvG7F0AatNGviNyV8hSUNw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:1926:b0:450:1d78:f54c with SMTP id 5614622812f47-4511287515amr16226473b6e.6.1764609499559;
        Mon, 01 Dec 2025 09:18:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1764609499; cv=none;
        d=google.com; s=arc-20240605;
        b=UvzESG5+pWGSH2Kn0JkH2qRRbOvI8ffR5Fror0ZaXxOGx+yHWDcRqJbMJQds4xVhgx
         mh04wDCNs5L0LVOa/s0dw59nPCJuGkOvxBMuevwiO+rDoxO+Q6fxFijT0DuTgVTlw0XK
         bdP1xoi1URVgcT2KL+ucSzHnc5G5rQe3EunaDIkI4q9suqdRAad7OTbz5tHD5Cu9oIAa
         4XqaphKZmmV4YYrvd5mVgz0er8KZ7miptz0Q809N24ezZXNt9wCr/1DRuFqd8MUhyk+Z
         l9CyWfCMH8FCRmEIMVn2nlfNgn0S9h+hKcslUFJANPglDxC/jKZGD5uF5zxfZmu1I9/I
         lG2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:from:cc:to
         :subject:dkim-signature;
        bh=Mn3LKUfxzu9elA/78sozq3oLA66z9MRutOn9mbAFb0w=;
        fh=aNgFI6mOPPuWt6q1yuj2X5cK2gsIPWfJHp4SmQfJs+4=;
        b=P5Q9qSACDcf9+E6vdu3m8D0lnupji8Gs+uuRnbJmt/a5qKgIbJa7dQnP8TeJjpj2CC
         idDiXmP3ByKYjrxa2zTRdCInSGhUZp5TlF1D4yTlIqKpRu4JBGpxDTClUs3n1Yz4jqxy
         Wlh9kNRmZdhau6RwbfMjHGQfly3rZOrPn4+u6zTwUm1ajWC4LJk7898iYSbR2ar3AeNk
         SHlSQrqNCr5ym4pn8mAviI/sx7s2Jm+4ee1aB4QODPCTr/q/RxBQS9X2OKWx7bcyh4NA
         gcOgEI9Z1BbTlM3jH/ws8/BWK9J0OVR3RqwwbJTssktQbcEBhPYtIMk8/AIDwv93NJTp
         DeAQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=JLLIy9Nj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [172.105.4.254])
        by mx.google.com with ESMTPS id 5614622812f47-45317091a52si1921586b6e.247.2025.12.01.09.18.19
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 09:18:19 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) client-ip=172.105.4.254;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 29C8060157;
	Mon,  1 Dec 2025 17:18:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79798C4CEF1;
	Mon,  1 Dec 2025 17:18:18 +0000 (UTC)
Subject: [usb-storage] Patch "USB: storage: Remove subclass and protocol
 overrides from Novatek quirk" has been added to the 5.15-stable tree
To: gregkh@linuxfoundation.org,oleg.smirnov.1988@gmail.com,stable@kernel.org,stern@rowland.harvard.edu,usb-storage@lists.one-eyed-alien.net
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Mon, 01 Dec 2025 18:17:47 +0100
Message-ID: <2025120147-petroleum-speed-1630@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=JLLIy9Nj;       spf=pass
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

to the 5.15-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     usb-storage-remove-subclass-and-protocol-overrides-from-novatek-quirk.patch
and it can be found in the queue-5.15 subdirectory.

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

queue-5.15/usb-storage-fix-memory-leak-in-usb-bulk-transport.patch
queue-5.15/usb-storage-remove-subclass-and-protocol-overrides-from-novatek-quirk.patch
queue-5.15/usb-mon-increase-buff_max-to-64-mib-to-support-multi.patch

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025120147-petroleum-speed-1630%40gregkh.
