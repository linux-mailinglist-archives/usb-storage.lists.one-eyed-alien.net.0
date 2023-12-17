Return-Path: <usb-storage+bncBCUJ7YGL3QFBBOHP7OVQMGQE4FQFMXQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B67B815F66
	for <lists+usb-storage@lfdr.de>; Sun, 17 Dec 2023 14:29:30 +0100 (CET)
Received: by mail-il1-x146.google.com with SMTP id e9e14a558f8ab-35facd4238bsf7111505ab.2
        for <lists+usb-storage@lfdr.de>; Sun, 17 Dec 2023 05:29:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1702819768; cv=pass;
        d=google.com; s=arc-20160816;
        b=IO7Ss7062TQvYL0ql/D9jexM0YKS+l6XMtY0NhnkIjdGQhVhQC5pIfHtGHMqsx0ilx
         OlT7EeRuVx2BmzzlBKeOcxBf6zVOT6kxunfYR9Txmz+tpXeMXqXlek+zdYBUjWfq+hdC
         VjYGsPMnhcR5fWwWXJLZtC9Jg5H4xRYoMHzCzeLDyfSN6cxQXGkOeFZprritgbwbHNh1
         lGPd/pigyiTD15VtdHoMfroTBazkHFol38OSNI+RIaZA3P/cVPb1IUQs+5BrC78Kb16J
         HL0DIiZsiktmYBXlBMfLsbHcArzjZQZW70ldUhSyh0ojCHbPhSzOwD++J/S8pXx5lQ5u
         +efA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date:from
         :to:subject:sender:dkim-signature;
        bh=EFv8l/yyXs6eA+lJnNea7beILib8ipouF2tR9FXENQw=;
        fh=Zq8V3XX4OBpCIlGMp5nHrj8opXDVzNu+inWmhF+KrTQ=;
        b=WGx6+eTu7CyOe3A5EydrX+m662/m0iGAMeucp/lUPB3VLG8KKQbB4ZCDYtdq1l2cp+
         6+mp38QAiwGhGHiub7glMTaOPKnzoeXGSc6ytQdFndtdMhwxrWVnrXCcFdJwev1R7Hhg
         eISWDv2MUhPFsnBvUu6wyVM7jWMMvvDQIvcxszd6ppGT9JLwXPk3Ev2jXpG8hxLziQXD
         tXddwORSmjrlzBV0zk67izziGrXXZcOJgS/9X3m6EuFWpwYoCf+3a27KNDDlYhlGgfO6
         0aYmZRWGRYRLMxhNbZGxYAepWOFTCNynFEZ4xigHVgs5k4zcjmAzbS1Ujw1A9MEXahrS
         2EEg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=PzlPpfGS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1702819768; x=1703424568; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:from:to:subject
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=EFv8l/yyXs6eA+lJnNea7beILib8ipouF2tR9FXENQw=;
        b=NCWC8zBns4mUqmCL0psf/vUwv9WWG3Wayf13e20RcJpmEurucp4C5tMzJ2j1HAz4rK
         C9qhSPMfVS2tCCUNQRs9gcuMGcg7yYPqMSkDTyA7LR87tFRP+akJxc5SQHbPnOkjyoWz
         L5J1CqgZ3J8D1V/eDWY5+/0cxMq9FV+FKZcUE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702819768; x=1703424568;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:from:to:subject:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=EFv8l/yyXs6eA+lJnNea7beILib8ipouF2tR9FXENQw=;
        b=JBAl0mDE36tAxmtnPQ3fOZpefXLQ1FqBfTcEakxJJGJlLooy0b9Q51fwdNtJiTbxxt
         xWCXxHm+Fb2xRqct9HC3yMzo1RrS261ieS2ZVKAZkqKycGcsun+Dxae9ola6t7oMkGwy
         0KfPgFOIYbZXpemC+py1uBrTObCKrOTdCboK46DsS2nYXqggr5Sv5zsPKVeXvXIKnZvD
         HjvGx1++D/aeILzabV100Ss0zxWU1gbjPpgb8y4YULDmHhVpFE0kexmY5+slHo/yXx3q
         rPodlWjAB+YqtZEEK0hcmvbSeEHrKftTgOTuOhvCRpsFXLQonAK+xXvkJKlkG2F9WDu0
         KXwA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YwLbTnrj0l/c6DaZpqms0lMHHz4ZbBI+PBfQlCBKAumNT0E+HWB
	bdkbVyeIlb9/588/HWSgekXCBQ==
X-Google-Smtp-Source: AGHT+IHTBbibr32d/LA3ILD/J7YsjmTKPEleKdLUnKsL1+15KX+Ks0qQ1Wx3X60rwPgWBdlRJsSGzw==
X-Received: by 2002:a05:6e02:1ca7:b0:35d:59a2:2c1 with SMTP id x7-20020a056e021ca700b0035d59a202c1mr23029842ill.97.1702819768581;
        Sun, 17 Dec 2023 05:29:28 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:1949:0:b0:35d:7c0c:b961 with SMTP id e9-20020a921949000000b0035d7c0cb961ls4530802ilm.1.-pod-prod-02-us;
 Sun, 17 Dec 2023 05:29:28 -0800 (PST)
X-Received: by 2002:a6b:a16:0:b0:7b7:b087:6d8d with SMTP id z22-20020a6b0a16000000b007b7b0876d8dmr4328464ioi.41.1702819767761;
        Sun, 17 Dec 2023 05:29:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1702819767; cv=none;
        d=google.com; s=arc-20160816;
        b=rCD3qebwAhoBk6K14Ye888RLj5ebKcHw42d3MlEQTzN/X1BoTuz+xKzHNYlUKSfrxt
         eFKHrBIKp0Pdv7kbfGxBeyDtV+3MSE903feTUorgCCxr9LYye7K/FvSETHWnAJsWhBIT
         PhG0lTQBoCqlArU2Jf3FhaX8J8JLRfOf23N+PhTJhR+2ftNNZc9/3mN91bqhvTIMj6Ms
         eJh+/fbGJCAnoxgcNu9oXFPKG3GwGJDcHGGuWbweo1+K+nQfzERwIfTgkh7QdKAhYRoD
         Nj0swjkkPAsIyybb5SipPizUVEuQr1eXuvsg3B8SEJ7/BJaUmsi9c31GsQcYYNG2G3YF
         eCVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:from:to
         :subject:dkim-signature;
        bh=l6c445tWq4/fZKBNsYaZXV+rX3Zb71c8i00Y9WKRTNE=;
        fh=Zq8V3XX4OBpCIlGMp5nHrj8opXDVzNu+inWmhF+KrTQ=;
        b=Pu2QpK+r6Y/J+cFYUehTC1PeyT3i/X9ZNire7P+/UT7vxFHPkeP+a6l+uH06bMFN/k
         AbvungGUS7gCE1Ih4nYmcd8T9JKQ+ZxYSWQcY77k1kTOwq9ajx/KLmWxXSyqur+VIEvu
         kI1NUk+gb+baCC+1xEciSA6TPanW+Zv98m0wQIwzXzgNERkZ666uqU9M8rMlJeQBlLow
         4o4npx8YI+YGV19ikrGIg/NaWJIRS0HhTZXjOnbvcNuPZc4rZtqvni6UdV0sWfTgcJ5p
         xxtnGkBEvheVmLjcDDuJQ+6SB3elknIIiiKz3ViASPkZvgM1V+uBQlH/N2SDySrXG5h5
         iDgA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=PzlPpfGS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id f7-20020a635547000000b005855f67e490si16347160pgm.690.2023.12.17.05.29.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Dec 2023 05:29:27 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 18341CE0B05;
	Sun, 17 Dec 2023 13:29:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0600BC433C8;
	Sun, 17 Dec 2023 13:29:24 +0000 (UTC)
Subject: [usb-storage] patch "usb: storage: Remove snprintf() from sysfs
 call-backs and replace" added to usb-next
To: lee@kernel.org,gregkh@linuxfoundation.org,stern@rowland.harvard.edu,usb-storage@lists.one-eyed-alien.net
From: <gregkh@linuxfoundation.org>
Date: Sun, 17 Dec 2023 14:27:38 +0100
Message-ID: <2023121738-papyrus-sprig-b33f@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=PzlPpfGS;       spf=pass
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
in the usb-next branch.

The patch will show up in the next release of the linux-next tree
(usually sometime within the next 24 hours during the week.)

The patch will also be merged in the next major kernel release
during the merge window.

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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2023121738-papyrus-sprig-b33f%40gregkh.
