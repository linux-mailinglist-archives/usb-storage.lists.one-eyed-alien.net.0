Return-Path: <usb-storage+bncBCUJ7YGL3QFBBRM26GVQMGQEY46PATA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 276B08148A2
	for <lists+usb-storage@lfdr.de>; Fri, 15 Dec 2023 13:57:43 +0100 (CET)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5919d9e57a3sf508456eaf.1
        for <lists+usb-storage@lfdr.de>; Fri, 15 Dec 2023 04:57:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1702645061; cv=pass;
        d=google.com; s=arc-20160816;
        b=OF5LNCOd5nFOlND+5ftH4DpCOG+5zmSODL2D0labrbAFmxUrvKTNh1P6cHfyd2b67R
         P2BvB76qa5hTAjl1sG3UDhfPVMfekni0z1I5RBfNMxur67L1OLIr6g3cj8ORQ451tPQ6
         H5YOY5Zqwfg2gVJsBIwMO2OEUmltYd50aZQ0Elfn79p/J7gnRrUUjAoEssRN9CPEI1sa
         8tdtNnAYuiyK78B4rHvGtwiCdHqUM1koldW2ypXTt10Q61sKxnje8GS+rjnx3q7Zc2Is
         FNsKh52aAsnf+z6FaBzV352N9W0C1KQ0bsY+8LbYTvUgH3aCIxsO/Enrvswv/h904o2d
         Cqxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date:from
         :to:subject:sender:dkim-signature;
        bh=m6/P6zle77XmWklEnWUoMu5T81zWtUDK5OE05KkU/uo=;
        fh=Zq8V3XX4OBpCIlGMp5nHrj8opXDVzNu+inWmhF+KrTQ=;
        b=teheXz4CsCexNgPs/S8NNZUd5upA2+HOZe9kQ42Hu9iMAqMHwEDSxGmEy70yKi4ujO
         mm55SdFEmxmvPfIBE88jfApSIHjGIxmy9oidXbWt6tZIeVBVYMgBFkGM120DCfcNBIxJ
         tsFMy7qKgCI3m0xBEyhfIPPody09yB98gnXMJCVetjCoNcl+WlRMhROuGAy4kn5wWmMJ
         hiPQ4E7sRa4QlTXHpeIzkPNStxfTo2UTdke9fmBGpbiCth6ZG0sfnjz6HzBiCF6XzXfn
         U70SZbP/M7LpC3kHo24gzzW4pdr/vjRpGNmsnJPAosYyeYfL7RH4GXTbsrQxfl/AhI7l
         P0tA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=jLwvZyS3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1702645061; x=1703249861; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:from:to:subject
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=m6/P6zle77XmWklEnWUoMu5T81zWtUDK5OE05KkU/uo=;
        b=laBjniot6MKEB6auQ/Q7ojDNdHuBrfILwouA5mwJqZ93lebsUG0XvtCb04DFfjx38Q
         CMPXTfUWPLNkuJ6qWEYFBSaDlIFvkTWLVouX3hsZsR5FIs98zlhU4XhFc5FEF1yxLiko
         uOQjhuZlgO4fOXoeQdACZtqYkEuMkoaFham0Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702645061; x=1703249861;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:from:to:subject:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=m6/P6zle77XmWklEnWUoMu5T81zWtUDK5OE05KkU/uo=;
        b=SE7TD44ZcsCI2RppePaD7K042AjOxa+yYsH3ORnI8GSq6N0eVwef4dezBB+Y520cJd
         I9APagdDeppAqR7DYJaUjXGmjixBOao+aq7J5JM5REUmNVnxok2yh54emxZX2p/2147v
         5GJIyFXpCXf/UuiUHEc+v80uFO3ycsi7S18XJ4WRhpsQr6FjlnF1YzuAA1i2wEWxIDCb
         Ro+NiWE5mtsHGZZeEFmisySlXhmoODB55vLM9/iWpVptM3tfVW60WfFT03u8sfX+HZHu
         nqweWwiClOd5g5X3nbd4AQ0ytVkd81gRD3TVoY+3aT28z1fJ/u0aOv2ghQqPpv8IuaLu
         HDnQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YwT8HT6sqBjmbna6Zq4SU4SScMA47qQUZcrhPty5O52z685QOKd
	pPdbofGgykOsbbsH5tY2zC80Nw==
X-Google-Smtp-Source: AGHT+IEFaaEWLSuPci8SPvDTndx+P3IOMTQTruoJQOloEGZkjBe2GjxZeJdOsUjdE0zujUUKUtIhBg==
X-Received: by 2002:a05:6820:61a:b0:58d:c4b0:15ab with SMTP id e26-20020a056820061a00b0058dc4b015abmr9407898oow.9.1702645061566;
        Fri, 15 Dec 2023 04:57:41 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:80d:b0:590:e812:c208 with SMTP id
 bg13-20020a056820080d00b00590e812c208ls415771oob.1.-pod-prod-07-us; Fri, 15
 Dec 2023 04:57:41 -0800 (PST)
X-Received: by 2002:a05:6358:e813:b0:170:61c5:f2fa with SMTP id gi19-20020a056358e81300b0017061c5f2famr11937888rwb.38.1702645060744;
        Fri, 15 Dec 2023 04:57:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1702645060; cv=none;
        d=google.com; s=arc-20160816;
        b=Wa4arm8Zjt2qagvatPqfiZDr/lTcyaVHy52xrmDcm7Apk8N+Xr4LC1/Ni71YVSaaQh
         5Yqe2GoTlJfh02kRp82ZFTbR/LAxC7atYJdvmsHfTp8O8+nJnj5yK7nbLU3tZe6c325q
         sfsI35CC6OHSrfX372vpxGf2P1KAAN1Xsi+dlxOCaeI2B+d7xrPjcUBxweq68Q5T5Z0v
         Fx6tpFXR8diGMAE/3qt023lnILwBdzW/ih/KUSEAHS+QGWt5oXNMr6pma0ePI9xLk0aX
         skCnP1PBTVEkp8nGNujnT8ed/tUCu4HEhL8eGRYEa1mdfnTalfoakHPJfIfUpnObi23I
         zh+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:from:to
         :subject:dkim-signature;
        bh=UJboNkjY5XsSZugzrxue6ovpqtb4hMsJOPE2n3Lie44=;
        fh=Zq8V3XX4OBpCIlGMp5nHrj8opXDVzNu+inWmhF+KrTQ=;
        b=oK3g6Fr4bkYt9heKzrrNRwLzM5EYKLqkYkCaylHGPX9g/DSwpzNNhU/RuyAlwfGRKg
         0Lbhr11bfJ+X1EH67/7rgJbi3USEjsDxakrL+QKbLhpS7hElwU//RNiVkiPIiVaciXcM
         DF1oqgyyLo0AWU+qNZH3RcEXaV00Qkp1Q9JQzhsuPwWf3GqaNWJjw5telgboAn0+ze0G
         7G7QhsuqXtIzgE/gW1K+jNjKt9sLBahZoYLrxKmPVQDmbg6w4cuFlVZ0uhfQi3ZwYwWH
         wapPMUZ2y9a0lE9uYh5MID3YKx7wVRf5a+1H9tbQFmCwr2fVRvlikzstdTq7OurGxdlV
         UMnQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=jLwvZyS3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id w11-20020a17090abc0b00b002886d99b09csi14277439pjr.73.2023.12.15.04.57.40
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Dec 2023 04:57:40 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6A2E8CE2C60;
	Fri, 15 Dec 2023 12:57:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C160C433C7;
	Fri, 15 Dec 2023 12:57:38 +0000 (UTC)
Subject: [usb-storage] patch "usb: storage: Remove snprintf() from sysfs
 call-backs and replace" added to usb-testing
To: lee@kernel.org,gregkh@linuxfoundation.org,stern@rowland.harvard.edu,usb-storage@lists.one-eyed-alien.net
From: <gregkh@linuxfoundation.org>
Date: Fri, 15 Dec 2023 13:56:44 +0100
Message-ID: <2023121544-chalice-tubeless-b13d@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=jLwvZyS3;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as
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

    usb: storage: Remove snprintf() from sysfs call-backs and replace

to my usb git tree which can be found at
    git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
in the usb-testing branch.

The patch will show up in the next release of the linux-next tree
(usually sometime within the next 24 hours during the week.)

The patch will be merged to the usb-next branch sometime soon,
after it passes testing, and the merge window is open.

If you have any questions about this process, please let me know.


From 3e42084a1c4790364c28b5cafd5c66fc25396a64 Mon Sep 17 00:00:00 2001
From: Lee Jones <lee@kernel.org>
Date: Wed, 13 Dec 2023 16:42:41 +0000
Subject: usb: storage: Remove snprintf() from sysfs call-backs and replace
 with sysfs_emit()

Since snprintf() has the documented, but still rather strange trait of
returning the length of the data that *would have been* written to the
array if space were available, rather than the arguably more useful
length of data *actually* written, it is usually considered wise to use
something else instead in order to avoid confusion.

In the case of sysfs call-backs, new wrappers exist that do just that.

Link: https://lwn.net/Articles/69419/
Link: https://github.com/KSPP/linux/issues/105
Cc: Alan Stern <stern@rowland.harvard.edu>
Cc:  <usb-storage@lists.one-eyed-alien.net>
Signed-off-by: Lee Jones <lee@kernel.org>
Acked-by: Alan Stern <stern@rowland.harvard.edu>
Link: https://lore.kernel.org/r/20231213164246.1021885-13-lee@kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/usb/storage/sierra_ms.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/storage/sierra_ms.c b/drivers/usb/storage/sierra_ms.c
index 0774ba22fb66..177fa6cd143a 100644
--- a/drivers/usb/storage/sierra_ms.c
+++ b/drivers/usb/storage/sierra_ms.c
@@ -98,26 +98,26 @@ static ssize_t truinst_show(struct device *dev, struct device_attribute *attr,
 	struct usb_device *udev = interface_to_usbdev(intf);
 	int result;
 	if (swi_tru_install == TRU_FORCE_MS) {
-		result = snprintf(buf, PAGE_SIZE, "Forced Mass Storage\n");
+		result = sysfs_emit(buf, "Forced Mass Storage\n");
 	} else {
 		swocInfo = kmalloc(sizeof(struct swoc_info), GFP_KERNEL);
 		if (!swocInfo) {
-			snprintf(buf, PAGE_SIZE, "Error\n");
+			sysfs_emit(buf, "Error\n");
 			return -ENOMEM;
 		}
 		result = sierra_get_swoc_info(udev, swocInfo);
 		if (result < 0) {
 			dev_dbg(dev, "SWIMS: failed SWoC query\n");
 			kfree(swocInfo);
-			snprintf(buf, PAGE_SIZE, "Error\n");
+			sysfs_emit(buf, "Error\n");
 			return -EIO;
 		}
 		debug_swoc(dev, swocInfo);
-		result = snprintf(buf, PAGE_SIZE,
-			"REV=%02d SKU=%04X VER=%04X\n",
-			swocInfo->rev,
-			swocInfo->LinuxSKU,
-			swocInfo->LinuxVer);
+		result = sysfs_emit(buf,
+				    "REV=%02d SKU=%04X VER=%04X\n",
+				    swocInfo->rev,
+				    swocInfo->LinuxSKU,
+				    swocInfo->LinuxVer);
 		kfree(swocInfo);
 	}
 	return result;
-- 
2.43.0


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2023121544-chalice-tubeless-b13d%40gregkh.
