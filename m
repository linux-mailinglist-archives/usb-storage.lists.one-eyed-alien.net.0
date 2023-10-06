Return-Path: <usb-storage+bncBDTNDO5RRYJRBJMHQCUQMGQEKMD6FNA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFF47BB832
	for <lists+usb-storage@lfdr.de>; Fri,  6 Oct 2023 14:55:01 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id 4fb4d7f45d1cf-53635d2442dsf1778587a12.0
        for <lists+usb-storage@lfdr.de>; Fri, 06 Oct 2023 05:55:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696596901; cv=pass;
        d=google.com; s=arc-20160816;
        b=J8M32m8d90zWduRKwd3d6La9vp7wAbxa0I7hdR/7dMymmC8uEULQqL+bUVpgzvTzSa
         2c7Beg0LpsHeCLz3hn0E6mC5e/7yWLyFQhNXvzjXPmYVr5tAVi/1/FyYrEpsXZofWur0
         +Jx3kMeuWaYET//wJ4VXBLPfk20YW4K3fEDmRylFckpyjGyl+N5rWKSgWTEl1UG2fZww
         scjwyGR9C0/m/dBLXvIBZ58Z+OReYQNyfE4BcLYpFAhEgxPAiFzw/CKK2kotJrQsoYoi
         C+OBxs0bjxvMmKGNJ2B43B03ULwRSlsqhoZSw/yY0yIjzordxIb8PWrHnLjkN+fk+Deq
         LX+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ENOxI49rPCAAw0KZDkLp57tOdXFKpaIzs3OLJnJrye0=;
        fh=a0TltY5qNwl0Oa9ebjgPj0wI1noiSzhlLA8n7ahwZlA=;
        b=gb5qDvtaA7v98KOj0bQvFAK+4Tl7RvA8XxHdfxQrDYH6eCL9ywM/IBfINa/5OYaLCp
         T9J4evkjbRWp76QV4WtqU0ogAJJAbkhBuCmlGoAcNpHk66K/+72i3KJcRYfuAlfjEICP
         WtFklu0NZ/CmssQ0QmmTPPpqyFlvf4B/2M4vwuLnI/W2ND9+rrIE/0l4Dj09jQ1Zmlwa
         D7DDKbs7ZL3AIiOBs5/QFKbHGfc13eBeqrnA8eCKPmTM3Orr9BC3axsNTHtEa02Vjqeh
         3W2DQIuqEy2gQgBmIRnqNVmhJHqeVuz1IPVw9ht78+4NoHFI25DdJVYPi6L0AEWESmhF
         JXhg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=b8QF7ED9;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1696596901; x=1697201701; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ENOxI49rPCAAw0KZDkLp57tOdXFKpaIzs3OLJnJrye0=;
        b=empZ+betMqKIuuTRrogRnE/LHNIbQdZIyIHOnWYBEPH3Y0tp674hcIQpu5ObPtkMdS
         1sfoJyRU1TR62MW//GPBth7i0THhfxI7pjU8Vy28LOLHfPSQvj6J7pIH3rejWk9dwCLu
         i16Ft7pqtQhOkSUMumlKlHey1TvyXQcqBeGlw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696596901; x=1697201701;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ENOxI49rPCAAw0KZDkLp57tOdXFKpaIzs3OLJnJrye0=;
        b=kvM7jOKimvgKr6qPZLhw4v/1C9X3A+GmhbAp523dDNfaTL4YojO+exsLc+Yjs677DF
         IZdNwFFRsD+zYM4Q+k1mJSNN9ugKxAMJtV0aQLlH8YbpAuQwQX0sg/R6Kq/kEejg9Ny1
         l4JAXBMKygyUJwd+eByqGcJNbFRDV0pZty9PPUL+Tg+PiScc2MJ9sCM6WJEI+NczCJ6N
         EZGNI8g2rIFoYyFBmIPRi2324WCR3ACgauYuZHh+sROOLmWNvgR5kE0aQgzLfdonAi5l
         0RFxWz57lBFkvORgNe+4ReKVDm5l6/ZFysPSPCuCo8dYQhqhdM3i8LXDI4B8lIUQaRVn
         wWoQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YyeEr9RZ0fFTCSi18YXIfe/lwgCfDdQ9v2ekadj4oCqSo24hLWn
	T07hjKsXP4JXpV2Jc9MV3aiuJA==
X-Google-Smtp-Source: AGHT+IEVnZMXfM5uhI1AD79SC6m7XCjGF/gnfi84fpjxBsFXWYTURLdGNl4vJZBHtpjAZpU8+tI3ow==
X-Received: by 2002:aa7:c253:0:b0:532:c690:92bf with SMTP id y19-20020aa7c253000000b00532c69092bfmr7032196edo.28.1696596901498;
        Fri, 06 Oct 2023 05:55:01 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:6c9:b0:525:7601:f44e with SMTP id
 n9-20020a05640206c900b005257601f44els110858edy.0.-pod-prod-09-eu; Fri, 06 Oct
 2023 05:55:00 -0700 (PDT)
X-Received: by 2002:a17:906:530c:b0:9a1:e941:6f49 with SMTP id h12-20020a170906530c00b009a1e9416f49mr8082661ejo.44.1696596900234;
        Fri, 06 Oct 2023 05:55:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696596900; cv=none;
        d=google.com; s=arc-20160816;
        b=uETUAeyadb9oEE3aCZtQ9rewrhmsulsKn6uRpAOI8PsIBTMQNnaWX/Zx476HKL9LeE
         APdEZv4DVt+vcugIvOv0vPIfFh8sikrlhckwuMoWngCIceuTIeNUSsuHAnthQ9hhaMmu
         wjXEP+vGS+jCjFhRj6aafb2h/DBSu8A+9MhDi7MUgNT/Mgma5cclargIzy74TketdYho
         +ljCbk5bKD1N2uA1NzmyTpGgyotb6uwxn4mvdGuvusJP4KS8okZ4PPZT6h19o9lecG81
         NRYClQKe45S7YXjwC00694M9lXj+eEOO8bPYM2Koa/RIKHu2CTSlhW6nq8j/sdG/yHYe
         f52Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1hGVnjdGEOumYZe081/NvT5dGB2xwJn4Ju//yjOVJPI=;
        fh=a0TltY5qNwl0Oa9ebjgPj0wI1noiSzhlLA8n7ahwZlA=;
        b=u3Un/hLnU7ELIsOc/ZtInpQXy3zZ0IHUBZ3EjWvmzXU4+SOr3Pp17xBPlb8s0789OH
         2Wsb0dxZ5EESwsgzo4L9av/Qtc/ESzYR6XruwQ3wTa4lxZs0IIprC+VF5oEosk50kt/0
         Sy0uXKDKMqGjTSiFKzNXRZoC4/y8so7clz3UbhBKe75gIkhOFYUAAQfcTtgL+4Z3zYvz
         /ZMqimSnMBCFrQw41f3mupmb32do1gK0r2QcFDoIkU6SeXTCPN/C1CMW+2eWAuw2wzlB
         JI3wFumHFUCn0OTAEZvfQr9jLKEF9udF/8tx0HBQEjZdzqM7YFKsjHhBZiekrOfEzPD5
         ceLw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=b8QF7ED9;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id og44-20020a1709071dec00b009ade0fb6ed1sor1491415ejc.3.2023.10.06.05.55.00
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Oct 2023 05:55:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:907:1dd8:b0:9ad:f143:e554 with SMTP id og24-20020a1709071dd800b009adf143e554mr6590860ejc.30.1696596899617;
        Fri, 06 Oct 2023 05:54:59 -0700 (PDT)
Received: from sauvignon.fi.muni.cz (laomedon.fi.muni.cz. [147.251.42.107])
        by smtp.gmail.com with ESMTPSA id p26-20020a1709060dda00b0099bc08862b6sm2894660eji.171.2023.10.06.05.54.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 05:54:59 -0700 (PDT)
From: Milan Broz <gmazyland@gmail.com>
To: linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org,
	linux-block@vger.kernel.org,
	stern@rowland.harvard.edu,
	oneukum@suse.com,
	jonathan.derrick@linux.dev,
	Milan Broz <gmazyland@gmail.com>
Subject: [usb-storage] [RFC PATCH 6/6] usb-storage,uas: Disable security
 commands (OPAL) for RT9210 chip family
Date: Fri,  6 Oct 2023 14:54:45 +0200
Message-ID: <20231006125445.122380-7-gmazyland@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231006125445.122380-1-gmazyland@gmail.com>
References: <20231006125445.122380-1-gmazyland@gmail.com>
MIME-Version: 1.0
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=b8QF7ED9;       spf=pass
 (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=gmazyland@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

Realtek 9210 family (NVME to USB bridge) adapters always set
the write-protected bit for the whole drive if an OPAL locking range
is defined (even if the OPAL locking range just covers part of the disk).

The only way to recover is PSID reset and physical reconnection of the device.

This looks like a wrong implementation of OPAL standard (and I will try
to report it to Realtek as it happens for all firmware versions I have),
but for now, these adapters are unusable for OPAL.

Signed-off-by: Milan Broz <gmazyland@gmail.com>
---
 drivers/usb/storage/unusual_devs.h | 11 +++++++++++
 drivers/usb/storage/unusual_uas.h  | 11 +++++++++++
 2 files changed, 22 insertions(+)

diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
index 20dcbccb290b..b7c0df180e5d 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -1476,6 +1476,17 @@ UNUSUAL_DEV( 0x0bc2, 0x3332, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_WP_DETECT ),
 
+/*
+ * Realtek 9210 family set global write-protection flag
+ * for any OPAL locking range making device unusable
+ * Reported-by: Milan Broz <gmazyland@gmail.com>
+ */
+UNUSUAL_DEV( 0x0bda, 0x9210, 0x0000, 0xffff,
+		"Realtek",
+		"",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_OPAL),
+
 UNUSUAL_DEV(  0x0d49, 0x7310, 0x0000, 0x9999,
 		"Maxtor",
 		"USB to SATA",
diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 1f8c9b16a0fb..71ab824bfb32 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -185,3 +185,14 @@ UNUSUAL_DEV(0x4971, 0x8024, 0x0000, 0x9999,
 		"External HDD",
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_ALWAYS_SYNC),
+
+/*
+ * Realtek 9210 family set global write-protection flag
+ * for any OPAL locking range making device unusable
+ * Reported-by: Milan Broz <gmazyland@gmail.com>
+ */
+UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0xffff,
+		"Realtek",
+		"",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_OPAL),
-- 
2.42.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231006125445.122380-7-gmazyland%40gmail.com.
