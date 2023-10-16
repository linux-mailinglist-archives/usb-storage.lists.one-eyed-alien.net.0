Return-Path: <usb-storage+bncBDTNDO5RRYJRBHGLWOUQMGQEUQA6X4I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CAD7CA080
	for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 09:26:21 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-53ec72af708sf526935a12.0
        for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 00:26:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1697441180; cv=pass;
        d=google.com; s=arc-20160816;
        b=GvWwsUOegKQcZG8yVF0iVfUKl6KL+OBQph4dG4ekMee8fKpGKhyNkAN/00VO6xi4Gn
         loCUdGG9PK9xiLUsTPt3hvOhrYAwJysFTQsOHQsFHT56IRf/JvaSY5523WLAg5o01KV/
         /TQbSYBVQiiYGunhZEDf7nywp9Hv2ByRf8jnquzs9CWNVcNWRJz21J+fplvZwTKcxARz
         2hPmlhElZ4OQkiYEZESG4mi54ylpw4WmPLAy8CSQzMBI0GgQbs6DRtHpdry9Pya9Yvh8
         /rdyGa+LOeqwmhRuJxjoct3A1xQPUnGKqxYF7+ytNSbFNIUp70BUY78vdFdeQAzgwJeg
         AUNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0fMpBE7v4PFyDU/TTFtMG7/hd4AR1fgXZ5H+Ooy5+EI=;
        fh=qb5W/8HITKC89mNaBbNAGCcLaXj6l7L8f0MvdHCcfUs=;
        b=RZkD3iB+FDGl6kGcEi9UmJCDseQu41QWiBsHquuhlJuKbI0DhIp32hRc4HP3LfDkPP
         YoxqPITTKBwMx8Up/TmxZZo8eDOlI+m5iWQN5VTelfq6YuhuB/7RbS+f7n8gwWEUQwjo
         umLkGMz8HOVlsgx49no/PSZ5ZE4r/uo8sn/mJaPBWx8cpYgwAJQQSDfKZexqrrRmRdaF
         wcNy+dHg+7xdHDYwKDx+aC/iw6+vKx/PhEFkkwq4pkxEfgpSqFbilBxP4mdSUFC2Sw9o
         4krmZQN185pdmWWpOuxFuBXF/AhI+OLrPAEVcop15Kgik/AF9ss2oWx0rKgPWNjl+Bpk
         U+og==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=cdveP15F;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1697441180; x=1698045980; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0fMpBE7v4PFyDU/TTFtMG7/hd4AR1fgXZ5H+Ooy5+EI=;
        b=IyuD3czIntH5C6RyKxXIWc8i/CbU3StnOI/ab7wMrKbT0ZE/z5jAJT5UUfuIpJZLO0
         8qCyTXSAKjVf2oE51qdrMszuR1bIRVVh1rBTmUdpONDNZuSCwSnog+rrF01odKd2hfR7
         btHkaw6bVk6Zm+G2oWEeVDdYQe0V80wxizHEI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697441180; x=1698045980;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0fMpBE7v4PFyDU/TTFtMG7/hd4AR1fgXZ5H+Ooy5+EI=;
        b=N2mSntRThvabVcRutXZ2uqDbXXatJ3dhwNmd080IrQKcFOfPhO/Rcp+W6wZW7fGzPy
         k5Plwc3pVPkISVs2TVaThZt/4zLcqlcpz1EuYsudxycFETISRPjP2qSXSTE9BGDi2YED
         kOo3l0teZrlSah87v0kNqBJLfEvTqb/O6UZcCTOChaSLy/a+KAAE7bvj/HhAJhCY6qsH
         C4FfTbrjPTOqeSuDWovIMZGbnieYG7oBx9EakY4Tc/pyCsduBjst12g2BOqJdDj1sFY0
         FS9m7INEUGiw6QZNXW9ssr7o2dpTS1g2nt5RjtDOGnrxu/W5amki0a0Yn5NmM2u3D18n
         VBCA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YxqzupDED4XRuGSmi6ZjWo1zQUuP6Xoic7/c7PQziEKElidueOg
	q7wS7rLa3t3WifAL1R0nH8y66A==
X-Google-Smtp-Source: AGHT+IH0n52JSuFaC6tWJZD70kyhIybs1It9nhR3hvibG3xKHjKfJqq/YnJlhksk98lYq37+GcCtqA==
X-Received: by 2002:a05:6402:388b:b0:53d:ff30:921 with SMTP id fd11-20020a056402388b00b0053dff300921mr10954935edb.18.1697441180727;
        Mon, 16 Oct 2023 00:26:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:3211:b0:536:17f7:9f24 with SMTP id
 g17-20020a056402321100b0053617f79f24ls6079eda.0.-pod-prod-08-eu; Mon, 16 Oct
 2023 00:26:19 -0700 (PDT)
X-Received: by 2002:a17:906:4fcd:b0:9bf:1477:ad8b with SMTP id i13-20020a1709064fcd00b009bf1477ad8bmr5014458ejw.51.1697441179645;
        Mon, 16 Oct 2023 00:26:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1697441179; cv=none;
        d=google.com; s=arc-20160816;
        b=ytfcEIXgUfN+jEV0yQDjaEYbvdoyr78MGbWqLxeUIyauss6f7grUQ8on7Q3jcJrTWi
         XxQ9OGCmGwFnMkzsrv9Ulr8HQcfdyl60QuRt9xFXKqccGZGoIg1QM/F41e+mYPrbCr+d
         x8u0rQjbSKLbVn1T/K9GeZayBXeKs/piWjIMulXyLmgWjgbaSjwOeLPcjnrOBDpDdtJb
         G4M8k1H0G2NLXP6Xv5Y2I1teW2D28sLDp3yE5xe4cEEwH1XWhdfozz0msemEHjvhUBhL
         DhyUfmfLlZHYpLEHTiNZ90cZM3brXybF/3b4Dmm09xFXDyLTbk3A7VXpoEh0EA8SpuXi
         6KlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KOS3bfRHpSjq+KjwwuTZXPYnmnU2SrY9skeV5ne/EMA=;
        fh=qb5W/8HITKC89mNaBbNAGCcLaXj6l7L8f0MvdHCcfUs=;
        b=Cidwy1u4hpSo2DgAftBarVP5DdCnq6WK2gogu3rlfkQnRR/amAnvyn262xk/UWOUBH
         tbwlOJ2ZJPdRionSuMGgBA95fRYA1ex5FSei8NCVnVZO1+Rd6WjjyWJQ9S3iMB/DLr1i
         ZW4NtR5Z9YAO8vPMPtp5ZtUifku/gKWkBX2jSSXf5smv8tW1m7wTAUxxcahpFHkdjixj
         C5QVZE/dbChlwa6KAaeIN0a1JfPmI7op3Z0yMdhodE3aY6fasrCYJIidldjfrstvLzl+
         j8Ypd5tmlwSbpujVCe6D+/RpG41ddycWu7PdtoxloxgA6hKatlqiaJM1Dh1JXiUg+xf5
         7UKA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=cdveP15F;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id wg10-20020a1709078f0a00b009b73d2857a6sor1066161ejc.17.2023.10.16.00.26.19
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 16 Oct 2023 00:26:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:907:5c6:b0:9c4:6893:ccc5 with SMTP id wg6-20020a17090705c600b009c46893ccc5mr1369026ejb.57.1697441179356;
        Mon, 16 Oct 2023 00:26:19 -0700 (PDT)
Received: from sauvignon.fi.muni.cz ([2001:718:801:22c:bdcb:518:be8f:6a76])
        by smtp.gmail.com with ESMTPSA id n25-20020a17090673d900b0099297782aa9sm3399980ejl.49.2023.10.16.00.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 00:26:19 -0700 (PDT)
From: Milan Broz <gmazyland@gmail.com>
To: linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org,
	stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	oneukum@suse.com,
	Milan Broz <gmazyland@gmail.com>
Subject: [usb-storage] [PATCH 7/7] usb-storage,uas: disable security commands
 (OPAL) for RT9210 chip family
Date: Mon, 16 Oct 2023 09:26:04 +0200
Message-ID: <20231016072604.40179-8-gmazyland@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231016072604.40179-1-gmazyland@gmail.com>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231016072604.40179-1-gmazyland@gmail.com>
MIME-Version: 1.0
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=cdveP15F;       spf=pass
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
index 20dcbccb290b..b32afded85ae 100644
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
+		"USB to NVMe/SATA bridge",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_OPAL),
+
 UNUSUAL_DEV(  0x0d49, 0x7310, 0x0000, 0x9999,
 		"Maxtor",
 		"USB to SATA",
diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 1f8c9b16a0fb..8a32bb1654ed 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -83,6 +83,17 @@ UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_REPORT_LUNS),
 
+/*
+ * Realtek 9210 family set global write-protection flag
+ * for any OPAL locking range making device unusable
+ * Reported-by: Milan Broz <gmazyland@gmail.com>
+ */
+UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0xffff,
+		"Realtek",
+		"USB to NVMe/SATA bridge",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_OPAL),
+
 /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
 UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
 		"Initio Corporation",
-- 
2.42.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231016072604.40179-8-gmazyland%40gmail.com.
