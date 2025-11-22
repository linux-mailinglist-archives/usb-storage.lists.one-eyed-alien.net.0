Return-Path: <usb-storage+bncBCUJ7YGL3QFBBO7IQ3EQMGQEPFMAYOI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd48.google.com (mail-io1-xd48.google.com [IPv6:2607:f8b0:4864:20::d48])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C42C7D130
	for <lists+usb-storage@lfdr.de>; Sat, 22 Nov 2025 14:01:49 +0100 (CET)
Received: by mail-io1-xd48.google.com with SMTP id ca18e2360f4ac-9487904aeccsf252395539f.1
        for <lists+usb-storage@lfdr.de>; Sat, 22 Nov 2025 05:01:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1763816508; cv=pass;
        d=google.com; s=arc-20240605;
        b=KQLK6NzjKvxPQrAODyl+j34k9P2z2JOL3Uo5CyfXWKvWGFKGyd0t9z/lQS19idR9BI
         2htoQGsGe6F5pXjE7g+X2LXe1T4DpGqcwr2e/7QyVdZ3ZJmQrDB6nUlwa0sqdm0Vb+sW
         1ASsbmRYH9SuIKL9zAxHK5rNpKLhsX5swh5SH1BGWoBroWsa2Px1FmoECanGV62eKyPB
         xAoqRHsyRztvzlVMQzsGgprBxVSp//uPJdhpXcrocIiPIAlzkHa/V+4X2LUUP8NZ224R
         p9Z9MDRhBieQunnW+s5o0tf4DNqPyyBKf/5k0x9LgMeJ36CeiiIzxvi3o2IagG+36XCp
         J9/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date:from
         :to:subject:sender:dkim-signature;
        bh=wvegpPTckmvCVfuKka27JfEPmAhqmNlsz9shpCOjQdc=;
        fh=XfRgK2KF3y/YDGuFD8nbA4s/cSQFDwm0EhzG0IOY7B0=;
        b=cHlcLOyZB+7ev86ofOVHtbw3EvcKGAWMJMO2IWkLdxAgW84jK1iaEVpIk3/uZ+2RNM
         mFdj3wzMzd7J7OXbyJnW/4cyyFdNV3cAlqjSMj8V3yAjUuz5PLgHWRGH9plaJGXRFsuj
         a0sT4hsJlyAZsgq7zqBDGwODcZF61b8IrUKaYCC6SdHNIqMgvm7ilc2SRvq3yCvZbfoT
         LlayPzBY52MXRyotNQCvLXT8yhIcIadUosGP07lDiyr97auhBaK5tjwrTrdMr8KuCuk/
         BGdWkT4eh0m1kbOC6GuCMJXcF4GaYPFlKySxXEkRmhlv8PQeaofv9t4CJh6/FnuP7eQm
         mUlg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iyMTnnYY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1763816508; x=1764421308; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:from:to:subject
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=wvegpPTckmvCVfuKka27JfEPmAhqmNlsz9shpCOjQdc=;
        b=AXqtv8NRF36lcOqKr16FzjwqotVfRtL1BY3rJbOxyIRzMAyBUg890jg6/kV8YJnTuO
         /M6HmgNMs430XEZA3gT8zoLQ4Os8aoIqoyuYhMxAb1ZcaYk/unUp7iI0G+4s0Puv1xsr
         TKymbpUu9IPVW2cj+Z/bvcxIXtTux9JOUPYeg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763816508; x=1764421308;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:from:to:subject:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=wvegpPTckmvCVfuKka27JfEPmAhqmNlsz9shpCOjQdc=;
        b=cMuj+QTcAKfhPDyRLQddyNIeaA0GdeJKE4X/+UOTDmZZcgX5rAd2LCiYOw4kNLXyiv
         8B+HPUkijVuh5qRwcvu35BgkbgPAUg/swl+DaDwFBhIzdJQ691nCvHEDiQmHogDQ6Goo
         0VJ18GYjY2CrssfIbY4HbMYsIMpclQAYnb10P5od8fmYLJEnwVtD+v4pXIa4O9owGm22
         7wU3pego33/MYFRpY/3/8BDDEJK+ULF5xiukdW+CKKoBfhewCr3CFtjTd06mtCc+eNO8
         SHq0u8n8IZf3kCn4pW3YuB9RS6NI7puG56lG1SeVPWhqDiE6aWhAhLnugTNZeEaKX8FI
         6FHQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW4r84OwgoH3FoyZLwXezqU5LouKGGJBS4SkY7tpKSta81RejXojexLuZJ+CfHrSY3juVkpAw==@lfdr.de
X-Gm-Message-State: AOJu0YxUfFG3USMB/Za0pf5vteIC/EVn99doWbPRZCY/HZBV0Q9WY628
	hll/pEh5ujfwpMBc5Te5lvEo/rjZlt7qpaNg5ZpGEJftQIipG7AFeffY4vv3sJr/j2Q=
X-Google-Smtp-Source: AGHT+IF1g1AmCOwgPJciKyjd+Xkh9AJTlWs92x+cYSj6cq9+p3G81Iz+Twa7atU1S1bKCcU/1k7jnQ==
X-Received: by 2002:a05:6e02:3e89:b0:433:8109:3eec with SMTP id e9e14a558f8ab-435b90608c1mr56258015ab.8.1763816507865;
        Sat, 22 Nov 2025 05:01:47 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+YiA9byZQk7RE9uBO52gf9Nt84k81H2cd7Vbb6qLBRK6Q=="
Received: by 2002:a92:ca08:0:b0:433:33b0:720b with SMTP id e9e14a558f8ab-435a95a39d8ls12062855ab.2.-pod-prod-00-us;
 Sat, 22 Nov 2025 05:01:46 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUQC6ZUnc+PS0cq80R2MNsvsyAYCtZ44AYgsS+8V2STNfkMBmUEJu6JdWFmey8iYnc3ErVDMWOkZK3a7Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6e02:378e:b0:434:96ea:ca1c with SMTP id e9e14a558f8ab-435b91562d9mr50955335ab.20.1763816506347;
        Sat, 22 Nov 2025 05:01:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1763816506; cv=none;
        d=google.com; s=arc-20240605;
        b=VkT23BW9aZd0/OxGbi2VxydhYKfIdnEKq+ziuaA1iJDu+M4Y7GrJMKZcaSsYsGZtR4
         zzi5H/3E1088O821dV32HJq9yjhOg4cjalAFUb0irOI49ogAWIA4wH3S/dzL1rZM+ZCi
         AK1H1eQpFTxXULLuSiGpiD6rSWGUvvYAhbnMH4PoScrRwMgKeZyVpbUL9GKrbAwbhwCO
         G+YBNFaTSUZztHtBY59ULMaEffSAg3m/2BqivGLbrWA7PmK2v0uCgdDh+gl4omMd9yHi
         DRXVtQdFbsZ5u9RZ9nXEmfvPkotLJqS+dU/jQwk8eis9e70Ftk0TvDwlGI2rxrkG0A78
         NzDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:from:to
         :subject:dkim-signature;
        bh=UUDyZSBAOHBqeVOWW+yLV7YIls4ShUqc+iMyVVsDkAU=;
        fh=IcGLUdXaBkWEVsgW5/X6Fchsv1F0gHjDB4wZCSTLKB4=;
        b=gJzDHi8Ook4cXMbVJQu0XZZiET+us8mbeuADAa3XPaIMieshZ0aHEE6fiAQ/I1Gt74
         uw/j2aGdAyFKKn9Q3Q4p1YBmpeG4sHYgulhcU/NLyjpseTf7FUA28Syi054E7WSfTzcZ
         EeduLFTVNXw9YR1iX3oEEM8olNHplNF+PS9qazG5Ufu5T/XIkIjBKwNTBLtpdy7pj3Lr
         mV7oDLHFD6giivVcJw0PRCNzmm2hgoujj7Lc5CrLMTFb+s/bbjOT15L6Wh/Tdm5McOuL
         poqwC4UuxriUyZ5CCfxbBJBG7c8AiDoqWd+XE71+PbYFVTq043X2oNoxAOFmzBzf9LGl
         SstA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iyMTnnYY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [172.105.4.254])
        by mx.google.com with ESMTPS id e9e14a558f8ab-435a90abf10si58224795ab.186.2025.11.22.05.01.46
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Nov 2025 05:01:46 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) client-ip=172.105.4.254;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CB0DD60153;
	Sat, 22 Nov 2025 13:01:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25229C116C6;
	Sat, 22 Nov 2025 13:01:44 +0000 (UTC)
Subject: [usb-storage] patch "USB: storage: Remove subclass and protocol
 overrides from Novatek" added to usb-linus
To: stern@rowland.harvard.edu,gregkh@linuxfoundation.org,linux-usb@vger.kernel.org,oleg.smirnov.1988@gmail.com,stable@kernel.org,usb-storage@lists.one-eyed-alien.net
From: <gregkh@linuxfoundation.org>
Date: Sat, 22 Nov 2025 14:01:43 +0100
Message-ID: <2025112243-constable-mummy-d77d@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=iyMTnnYY;       spf=pass
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

    USB: storage: Remove subclass and protocol overrides from Novatek

to my usb git tree which can be found at
    git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
in the usb-linus branch.

The patch will show up in the next release of the linux-next tree
(usually sometime within the next 24 hours during the week.)

The patch will hopefully also be merged in Linus's tree for the
next -rc kernel release.

If you have any questions about this process, please let me know.


From df5fde297e617041449f603ed5f646861c80000b Mon Sep 17 00:00:00 2001
From: Alan Stern <stern@rowland.harvard.edu>
Date: Fri, 21 Nov 2025 16:29:34 -0500
Subject: USB: storage: Remove subclass and protocol overrides from Novatek
 quirk

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


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025112243-constable-mummy-d77d%40gregkh.
