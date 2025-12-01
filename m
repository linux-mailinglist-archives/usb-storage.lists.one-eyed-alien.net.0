Return-Path: <usb-storage+bncBCUJ7YGL3QFBB7E4W7EQMGQE6O3BAWI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x347.google.com (mail-ot1-x347.google.com [IPv6:2607:f8b0:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B85C987E0
	for <lists+usb-storage@lfdr.de>; Mon, 01 Dec 2025 18:21:02 +0100 (CET)
Received: by mail-ot1-x347.google.com with SMTP id 46e09a7af769-7c72ccd60f5sf5837377a34.0
        for <lists+usb-storage@lfdr.de>; Mon, 01 Dec 2025 09:21:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1764609661; cv=pass;
        d=google.com; s=arc-20240605;
        b=XE3vmcXQb6EEZWQBABVGcSKCtvj7daEYIXDIBa748WY9q1x1XAbjp6NodyMp9m8Nwt
         z0CsFfd9YG5kg6FMqVettvPCSwHTxj+VYjSmNTEnM8Kh7L3stQxxTeO1e2oBq9ykupdH
         6jsPeZC9n/hRwOxq5Wqs/KIZG3A828gB4DUrRu6LiQEhvdizhyhaYJ8hYNfzcfBdgPMr
         dDUpzxwe5qwRkWPCBFlKMvx11pvBko00KGpQx5lIAtfQkRa2XC8Hl7gS6WUcoVyEi6R9
         sDvcyk/MQj9xNfzH2bxSac24z6xuLM6olerikpI05AElO49KM17z3FwpG+pjnw0VxNmF
         egiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date:from
         :cc:to:subject:sender:dkim-signature;
        bh=Ct2gFEGBR1CRuE/7l2IvcZXnZvVDmYbrzpb9qSmG0rQ=;
        fh=2MeRBkrCTsa0KcHQfDievEIJ5werHel8a6HRsjAkvIw=;
        b=U3mVjpwgHHv9pIvYfNQXcMGpZMCkkuu1fObJ9YKFx+br3M8cPXgNWR+qanXpfm2Y9J
         4tMOoeOoZIBXJZiQpaOV2/gG1rn5YDiROR10ZpBse2gDnhJw9r6l8dEkxiXaWcDGSkr1
         doNfyg8IKMAHGi0PynqZG6OaqaVmZ3/WupB+8+HQjmEw8qsepNOmxxn972kcMVs0+MRe
         cBCRQ6FTPIbLSGtuIniJVKsQ/H1T9hFzbJi01MIz6t0cHSc8LlpWo8YpGJzs/ff3o/MR
         7S+fsWNFz8ranu67qvSLaVZSuqM6P+rs5tSsfS/GwfwY60VT3fsYv95VOxJapZyNpvkO
         3qKA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ZbUOgOCG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c04:e001:324:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1764609661; x=1765214461; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:from:cc:to:subject
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Ct2gFEGBR1CRuE/7l2IvcZXnZvVDmYbrzpb9qSmG0rQ=;
        b=E+fU+Ya2uVXXBYoyzZChjlFNKFAcXgEIgGIP4m+kR1IcuhEBMOriTVPjKl5Ac5TlR7
         4D8MSP6hszdSCp7uEe0FUPlSQmcOImzmKQZ0eon26ymmVjm1BqqIFcOGAn/R9GANFuIw
         tD8t5QafKX5gRi3QdpYfdkD5QOdL+njlUvXAQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764609661; x=1765214461;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:from:cc:to:subject:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Ct2gFEGBR1CRuE/7l2IvcZXnZvVDmYbrzpb9qSmG0rQ=;
        b=XCJa9VxrRXm87KYMOb2902jxvzWwvLNqAxVWOWZD3ebD07LXhLOWm7dfFty2T3OmyI
         uFUmyAvSItHrDuv9WTAtltfvVeOj/IXqEaWJ9759fh7jVHE8x9yRODdJZYCMDm5Xy5rP
         9La/L/Y8q/emnbgljhwL5Jr0vkckRNDVrqRKSpwQNZQ29IFEiOwWo1o5PgWRvuHoJQdo
         kCADhGMt1wyW/72WZtyHwdw6N867GU1QLgxseogc6VJSZ9sfEdDUB2Mi761BhwUniL+B
         5gJ9dJbGMQvWglvthLbRN5kKUhxD515aimsF239A1sh6z86xW6Kv70PYb7x74dK0usNT
         dGtg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXTElgCZ2BPumwyr4RvppDJanKuBpPt/PPaXzhy3S9+yxpnRpQP0mNLUBsyiEPBukGDsnF/NQ==@lfdr.de
X-Gm-Message-State: AOJu0Yxqh19DWOxgaVRHW5Kz+fIpDZFVFzaFhHVJQzXrxw9kQdF21pW4
	MIXj6TglSHfgL6K2MbBisDeR9hZ4oSTkFczNwO0lboAIkG3f4WmFDshEnuIKJAdSinw=
X-Google-Smtp-Source: AGHT+IGIWb8l7lnA1c6pk7YTXVo+LQ4Tp8+D5+0igkTITdpm6RR6AY/UkZi54jt9QULxOWy2c5/SoA==
X-Received: by 2002:a05:6830:2690:b0:7c6:ca1f:1779 with SMTP id 46e09a7af769-7c7c4414a0fmr10822597a34.30.1764609661037;
        Mon, 01 Dec 2025 09:21:01 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+Z/E2l2G0AKOdZ4TeKtNUE2urBbZHuXTY34M6EpctMMAw=="
Received: by 2002:a05:6820:510d:b0:656:fde2:ae20 with SMTP id
 006d021491bc7-6592fdb0ed9ls1510379eaf.0.-pod-prod-09-us; Mon, 01 Dec 2025
 09:21:00 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV7AbMrxUkfL2xhglRIbawEkwgNkZyvcp3T9qXbMW4Bow/Z9upoKAeu68q7p7YjOY0KsZ3G0bmZkumF+w==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:144a:b0:441:8f74:fb8 with SMTP id 5614622812f47-4514e828053mr10413971b6e.53.1764609660028;
        Mon, 01 Dec 2025 09:21:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1764609660; cv=none;
        d=google.com; s=arc-20240605;
        b=TJPWOywPQK4LQf+v5wLgyQeQDkfXbhhWbuAIX5VUbTlh799+WW1OxhMBRR35x929KW
         awbU3FG7wno5ew4zB8gU8qtwSYVtCsiUtnCvHkwmCjeCksydFGeBEKY6J27Yd3mLiRJL
         1Uw9KFfXE5tRgZdRa+zCV+JULxO1vlea/Z0W5eNCECzZ6kHkqeaVwi2aMyd1/GJCa54r
         uDRThUlKJmQemn5Fre7PUglbFbKjgbEAGkklw1iyD1hS91B/HrCTezDsyNZ8eY4QMH5p
         wBfPGZcfpIDTX4t4Ra+rdOxenPBbw3VD2IRsEmVFlTcvy6dtSj/M+nr6oHEpeSb2mRoh
         6EMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:from:cc:to
         :subject:dkim-signature;
        bh=MKXF7IszxBq1UxZ4x2ieCswqFRpQ9RUneitQsebnYSk=;
        fh=aNgFI6mOPPuWt6q1yuj2X5cK2gsIPWfJHp4SmQfJs+4=;
        b=L39GQYNVHVn/03gS5thLNNvTBtanQXcCtoigik93o7QhCfcExtsV2mMJLYNl45Ytte
         zCweOkXQPrWodqsEif6Iy3jS5XH0q8qhSQVWLh1nQYMurKWZDAniYYyknO2PEw0ugeHw
         IGleXD3PtYd+06JIs2JokByzzfZaFotFj+MQwcexXQbXmmNgbwF/EBnxUclBu1HmdjQx
         f+KcNnaohAR3XpRMS384jxQQpH9rCzB8PJ4FAeViGvckuGvZPaueYp4uFCCSnKDPmsXT
         5gk8dvsM+EQTGxl4amZb2fI24MWfm3gQkK35T8Nle15ODusC4TYs7KChb556I0iSDqz1
         5keA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ZbUOgOCG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c04:e001:324:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [2600:3c04:e001:324:0:1991:8:25])
        by mx.google.com with ESMTPS id 586e51a60fabf-3f0dcff42b5si2116416fac.785.2025.12.01.09.20.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 09:20:59 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c04:e001:324:0:1991:8:25 as permitted sender) client-ip=2600:3c04:e001:324:0:1991:8:25;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 977C860157;
	Mon,  1 Dec 2025 17:20:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C83EEC4CEF1;
	Mon,  1 Dec 2025 17:20:57 +0000 (UTC)
Subject: [usb-storage] Patch "USB: storage: Remove subclass and protocol
 overrides from Novatek quirk" has been added to the 6.17-stable tree
To: gregkh@linuxfoundation.org,oleg.smirnov.1988@gmail.com,stable@kernel.org,stern@rowland.harvard.edu,usb-storage@lists.one-eyed-alien.net
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Mon, 01 Dec 2025 18:18:28 +0100
Message-ID: <2025120128-outbreak-floss-fc95@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=ZbUOgOCG;       spf=pass
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

to the 6.17-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     usb-storage-remove-subclass-and-protocol-overrides-from-novatek-quirk.patch
and it can be found in the queue-6.17 subdirectory.

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

queue-6.17/usb-storage-fix-memory-leak-in-usb-bulk-transport.patch
queue-6.17/usb-storage-remove-subclass-and-protocol-overrides-from-novatek-quirk.patch

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025120128-outbreak-floss-fc95%40gregkh.
