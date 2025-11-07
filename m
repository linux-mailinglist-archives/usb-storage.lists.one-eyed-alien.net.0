Return-Path: <usb-storage+bncBAABBQ5GW3EAMGQEWCNC4QA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x245.google.com (mail-oi1-x245.google.com [IPv6:2607:f8b0:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id E5947C3EA1C
	for <lists+usb-storage@lfdr.de>; Fri, 07 Nov 2025 07:35:49 +0100 (CET)
Received: by mail-oi1-x245.google.com with SMTP id 5614622812f47-45005b6c45fsf607628b6e.0
        for <lists+usb-storage@lfdr.de>; Thu, 06 Nov 2025 22:35:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1762497348; cv=pass;
        d=google.com; s=arc-20240605;
        b=HJydWnE/Jhm+EFUnACTsDTznmVTqnR1f2IPrrxy//OkjkX4Hrlc/vnoCUrISZ1gIMt
         C5iB7xY/gGr7XxHFZdrBXuTPWIAj/S9NQpbTXDX8sdML5J6FsWOTjac6LZ1iRJbsW0as
         gAH7WdVpPX494FS6SlTe5kBJ26kZUA3zeztBi7lrh/BDGkR1oXId5DqtvNE2XLWUaAHV
         xcj4wgBRbiAOxMgQ5R9XlH4EK33j12AAFRwLYamILYT7FwlcJL0/AYvHdDzJjvxMmp/p
         Gws+XDcHMlOGI1LLA48QhZ14QUeAnaFKqWTvjYF+dVEWyF0/b9Z23X8ekxjN93r3TFl/
         ugLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=0mxfY3UmIqdgPoCI4YxOotWamJZ0yIqHT2VhCQKEqoc=;
        fh=BLTpLE/2AMg/+4ohHU+Zr++0K95RD1ELCwDHBF+Fmqc=;
        b=a3199ODH3hjSbupGpkRcpbfQkHU0XQSxAQtlj98I5DS6+C8D7nQHOwMC1NpHp3LtFo
         EUxtBhjFiPmW9TkKxj6UCimTZnm/Y18rhAS4PQwLS0juq1RbXX3bxNK9w042UyYvIp7/
         rvDwakX0zIyWjjoT6cVuAAasKU0FqmGB2tfm6Xk4BJnFBkoS1mOrqdF6bdpm8eIOlKQo
         JSGNNbUsG1DE/5ctJhrtX0X3OsCoMPMIo2+YyD8Sl3uMROMwSFsWNnTCSaYD5qoGGFCC
         AC6gWV5FieKkdOwpok+1xytUldxaXIf2CF60mzeqj05VznlHqffwUX/mu2ba+HOYAxPJ
         Nqhw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=fwswkhzZ;
       spf=pass (google.com: domain of ccc194101@163.com designates 220.197.31.4 as permitted sender) smtp.mailfrom=ccc194101@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1762497348; x=1763102148; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=0mxfY3UmIqdgPoCI4YxOotWamJZ0yIqHT2VhCQKEqoc=;
        b=XwWNf+5EIuwNiSwqHYGAS3+T/sdzSy6zjy0KCkEAZCSpgTF847UmkzsNV6MZdPc4Cw
         Na3fibabN5cQm3qwebhLjHdGSFXSlH15O+LptuWVcNbcEzvOjzUAbSQzSca5GHcFdLF8
         +vFcuwwRNbzP+kzlS4HtIG4zS1NqqyIDR2I2A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762497348; x=1763102148;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0mxfY3UmIqdgPoCI4YxOotWamJZ0yIqHT2VhCQKEqoc=;
        b=m4KH2tXqzaK0EkY7r1uaqHnW5gJ0ZQ+u5EwsNQWro4LKheisdCTEd5f0PDtpDC1qkJ
         Yhwz+Gnk/NdY1EV5ctrOHn9yfq/fWcR1/RTLiQFROuoz/ggjetXY3RXsGUB8P5HeI416
         ORM3R64EJX2KZvyQddevVRf8ZpU/DWLO4PyUTGi5qgp5Fusmi/Pjy3FqysdU3P0lt1Yd
         LT3VlgfrXX2ov5vCimlk6qS9UQhat256ImVV/ZgdRjQ3lp0OzeTO7sTXDhHo7rTluVS4
         6OZ/n4gfEUXiCHfYWxPvH8yPiKiDVs1BlDZYhNZROQK/lRKF5YR3o5z+UY60LiM1Kk2S
         LaeA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVI9oanE6QVLwMWFafcbpJj1jTr9/72hvGqkRkQTlzM8Il+UXfjPsz4IhUR+Hc0graIsTWgXQ==@lfdr.de
X-Gm-Message-State: AOJu0YwLwR4KJBh9lAnn92iEDb7pWhuQPX1CJeCwO1svFC7NYb6V677t
	PJNJm3TbC8mczifamdwX5gKK1ZbMLZUZN8fTA4YTchPeBg2WeCdvrjNuz4ohN8Vzr4g=
X-Google-Smtp-Source: AGHT+IGgaRlz3XP876VT0ycoUUYtM24qcHv/ykOMnvYh8pmW1XnuyW8SCmJULHR+8tikA+PeuL6F/Q==
X-Received: by 2002:a05:6808:179f:b0:44d:b760:f1da with SMTP id 5614622812f47-4501c7493femr315007b6e.14.1762497348399;
        Thu, 06 Nov 2025 22:35:48 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+bKdJtTv0X4jW7GTzg7wgDWlTleHnliQIQXwqFSR/a1Ew=="
Received: by 2002:a4a:dc9a:0:b0:654:f2c0:5752 with SMTP id 006d021491bc7-656c4f37232ls10655eaf.2.-pod-prod-00-us;
 Thu, 06 Nov 2025 22:35:47 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXjpSzvDNzTsYu9x/YZ+FS/1QwQSAaQ2byDtHcPofQ8O0pdTHgeT8HePlz5nPnZ834xzbQZViZAMHX96w==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:f11:b0:44f:6d9e:5241 with SMTP id 5614622812f47-4501c73eb98mr294838b6e.6.1762497347640;
        Thu, 06 Nov 2025 22:35:47 -0800 (PST)
Received: by 2002:a05:6808:655:b0:44f:db81:40fd with SMTP id 5614622812f47-44fee763984msb6e;
        Thu, 6 Nov 2025 22:11:23 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV1Jm99C1UEHncXHlF39X6KrDe16DcG8dcCRQDSjCPdnUhotXrQ6mv2Jst8njb1GTpMZw3bzYTun2u67w==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:2fcb:b0:341:88c5:d58 with SMTP id 98e67ed59e1d1-34353778f97mr782842a91.13.1762495882493;
        Thu, 06 Nov 2025 22:11:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1762495882; cv=none;
        d=google.com; s=arc-20240605;
        b=ZKZbXOmxqzQ5WDKMrdsUBDSz92yovxkBBNj+dHi8dldCvpSBQtLSgaFL2rW4X+erXP
         WqOiEu64fO4fY7cGJW+EjrtRX+OpWl0J3Nhu2F9v8tLk6IGf40PNN0SHrMkkwsgHh7Fw
         dBZBeFTjVSJ1KNfQja05kgx1r2KNeHzlbmyHtwi1RIRw6/Qw+zpn2sSQ9VOeH8DVcnqX
         OFDeBLkaSTUmvYlHrpMu4iBecsVgzuZEjJL8FQKP3OIiPzrwiyEDL96L/RHhE5OrAjB1
         ZQqI0/Etn93199MtQJjU8DRt7u6kmXX8U2D6fw3XkWbCG8CtimH/Q/gftHn16MizdaQQ
         ZDSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=PO/1F22LyRnQppxy3e+nd1++VbIYO9chSNDlRIEVrNw=;
        fh=uhJyW+JL/PA/ARjPkFKh2mvqvPkWHtB2/uzkizl8I94=;
        b=HOF0T74byWgR95CUOJEM5/YI4rzIHVrkYr31aEFXTfZq4qWITgNB/rd22+zCcyINVX
         nCY1Yi9Ftszl3R6oBnlX3W28GEThD0PXHb1J+MJ1nOyZb0tF0rEZBJ6aUe2HsF4NZrtY
         DDCZKO8EmmK/sVP3hZuiYE7P/pMPtR3H4GnngXSkG55VAbJ0O6TAVTkANYaSdmnC5QUN
         Re+becKCB2nFNoGqUIdCSJTRmOKW+pUW5NWJVdm76jLd1Ypb2Qj/+3wYO/dLcq26/oo5
         M73FfXAeRLnz6Ww5amJxKNgviSxWRDxX1BeQxQWQ75G/vV8kGn7WUFKOKIsMCRPpLIxL
         WQeA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=fwswkhzZ;
       spf=pass (google.com: domain of ccc194101@163.com designates 220.197.31.4 as permitted sender) smtp.mailfrom=ccc194101@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
Received: from m16.mail.163.com (m16.mail.163.com. [220.197.31.4])
        by mx.google.com with ESMTPS id 41be03b00d2f7-ba8ff37a8b8si2601398a12.746.2025.11.06.22.11.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 22:11:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ccc194101@163.com designates 220.197.31.4 as permitted sender) client-ip=220.197.31.4;
Received: from localhost.localdomain (unknown [])
	by gzsmtp1 (Coremail) with SMTP id PCgvCgDHYMFojQ1pXhliCw--.29130S2;
	Fri, 07 Nov 2025 14:10:48 +0800 (CST)
From: ccc194101@163.com
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Chen Changcheng <chenchangcheng@kylinos.cn>
Subject: [usb-storage] [PATCH] usb: usb-storage: No additional quirks need to
 be added to the ECD819-SU3 optical drive.
Date: Fri,  7 Nov 2025 14:10:46 +0800
Message-Id: <20251107061046.32339-1-ccc194101@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: PCgvCgDHYMFojQ1pXhliCw--.29130S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Zw1UurW8Xr4fZF47GF48Zwb_yoW5JF43pr
	WUArs8CrWkGF1Sgwn7tFWUZFyft3WkAF48GayUG3y5Xr1Yya1kJr98Aa48J347Cw43ZF4I
	gayqvry8KFy8J3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jYsjUUUUUU=
X-Originating-IP: [116.128.244.169]
X-CM-SenderInfo: 5fffimiurqiqqrwthudrp/1tbiQRj+3mkNhLu6qQAAsx
X-Original-Sender: ccc194101@163.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@163.com header.s=s110527 header.b=fwswkhzZ;       spf=pass
 (google.com: domain of ccc194101@163.com designates 220.197.31.4 as permitted
 sender) smtp.mailfrom=ccc194101@163.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=163.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

From: Chen Changcheng <chenchangcheng@kylinos.cn>

The optical drive of ECD819-SU3 has the same vid and pid as INIC-3069,
as follows:
T:  Bus=02 Lev=02 Prnt=02 Port=01 Cnt=01 Dev#=  3 Spd=5000 MxCh= 0
D:  Ver= 3.00 Cls=00(>ifc ) Sub=00 Prot=00 MxPS= 9 #Cfgs=  1
P:  Vendor=13fd ProdID=3940 Rev= 3.10
S:  Manufacturer=HL-DT-ST
S:  Product= DVD+-RW GT80N
S:  SerialNumber=423349524E4E38303338323439202020
C:* #Ifs= 1 Cfg#= 1 Atr=80 MxPwr=144mA
I:* If#= 0 Alt= 0 #EPs= 2 Cls=08(stor.) Sub=02 Prot=50 Driver=usb-storage
E:  Ad=83(I) Atr=02(Bulk) MxPS=1024 Ivl=0ms
E:  Ad=0a(O) Atr=02(Bulk) MxPS=1024 Ivl=0ms

This will result in the optical drive device also adding
the quirks of US_FL_NO_ATA_1X. When performing an erase operation,
it will fail, and the reason for the failure is as follows:
[  388.967742] sr 5:0:0:0: [sr0] tag#0 Send: scmd 0x00000000d20c33a7
[  388.967742] sr 5:0:0:0: [sr0] tag#0 CDB: ATA command pass through(12)/Blank a1 11 00 00 00 00 00 00 00 00 00 00
[  388.967773] sr 5:0:0:0: [sr0] tag#0 Done: SUCCESS Result: hostbyte=DID_TARGET_FAILURE driverbyte=DRIVER_OK cmd_age=0s
[  388.967773] sr 5:0:0:0: [sr0] tag#0 CDB: ATA command pass through(12)/Blank a1 11 00 00 00 00 00 00 00 00 00 00
[  388.967803] sr 5:0:0:0: [sr0] tag#0 Sense Key : Illegal Request [current]
[  388.967803] sr 5:0:0:0: [sr0] tag#0 Add. Sense: Invalid field in cdb
[  388.967803] sr 5:0:0:0: [sr0] tag#0 scsi host busy 1 failed 0
[  388.967803] sr 5:0:0:0: Notifying upper driver of completion (result 8100002)
[  388.967834] sr 5:0:0:0: [sr0] tag#0 0 sectors total, 0 bytes done.

Signed-off-by: Chen Changcheng <chenchangcheng@kylinos.cn>
---
 drivers/usb/storage/unusual_uas.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 1477e31d7763..6d32b787bff8 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -97,6 +97,12 @@ UNUSUAL_DEV(0x125f, 0xa94a, 0x0160, 0x0160,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_ATA_1X),
 
+UNUSUAL_DEV(0x13fd, 0x3940, 0x0310, 0x0310,
+		"Initio Corporation",
+		"external DVD burner ECD819-SU3",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		NULL),
+
 /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
 UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
 		"Initio Corporation",

base-commit: 284922f4c563aa3a8558a00f2a05722133237fe8
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20251107061046.32339-1-ccc194101%40163.com.
