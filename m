Return-Path: <usb-storage+bncBDVZHOPX5EOBBGVCZLEAMGQE6HYOTZY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3C0C4A76D
	for <lists+usb-storage@lfdr.de>; Tue, 11 Nov 2025 02:27:56 +0100 (CET)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-341616a6fb7sf4635862a91.0
        for <lists+usb-storage@lfdr.de>; Mon, 10 Nov 2025 17:27:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1762824475; cv=pass;
        d=google.com; s=arc-20240605;
        b=edfcziVZz5PS2P+HVW7L+BVMo4askLobRZg7gkUaV8m7QS86DjQdAkEH1yJVDIoOAa
         4XVqm1RbIrws4vyX7wC2k/EHKS+B4mM9YiMGgFl8qxNvtTH7fB99jRcZyt8VUNGbXKEy
         GrtLSGnEOD4xdFd5dMmvNa9haVEdtpq/xkaFpNozJTh1n/j3sjqOGedcYOy7gQcUQ6LS
         yIrbUO/ih8y1aTxvjEYwFJfemGbkSZf45GjEMHycEFmz33yrXNPKovIQ70g33eijNWip
         MZxgRNC6/E9gpeAHyOPX7sopY+FyIRL4+kAc/7TKJPITBqqlq/ZJj1pbSHP33EGLfF7Z
         dJqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=l/vOr5SG8jL0y16LfT4mjpmbn7M0JkFQ24wjBItf/pQ=;
        fh=au4RZgS5dyHHpAV7IhfzZ8mnSAxy60cecBCpX7jtKmw=;
        b=NexUg8sS/tzy6FCq8gRg9SOIYMbGTJbxVugIHee5Efn0xKLa1qsBx2skm1p/RoGx63
         1Y94JLUC/dXqv2HRc3JZDoxjo5nZwMgTUjaQf7U2eyCdsRcP2pdVVUt5+KR5tLhg/Wdl
         jChxvmiIDzTY2i5j0mB4G2WRyM1sbMBAFg20FJLSREqJ/iqODsKZoaQyufM7BtgOM1cZ
         WjVTueCf9QjEqPyRBvQcqOan/ib4Lvaio+wcZ3X04HD8il9QM3OZAy30F6yfMiUemehA
         RpAIIUvU/JL2PNQ6T2OPY41y5DAlauCW/es+O925JxA3rWHguG+7so9uD3YHbnhlr+rO
         I2Ig==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=Y8HyvojN;
       spf=pass (google.com: domain of ccc194101@163.com designates 117.135.210.4 as permitted sender) smtp.mailfrom=ccc194101@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1762824475; x=1763429275; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=l/vOr5SG8jL0y16LfT4mjpmbn7M0JkFQ24wjBItf/pQ=;
        b=YrWKwvXxICcpCcqKvw6CXw+gLbjV7KtA3QsOfQzg9eUKVU7ckpGdK71iq4Cb8hV1VK
         sW7MQ3sxYqYleOmwojtHAZ/tjs/wmwHbfW5XF0BZKZtdzTrGxIa8lghXxbMndmBsM1pd
         H4dT70XbTZNq0wtYvDkDhCME756en0EHPiRJg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762824475; x=1763429275;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=l/vOr5SG8jL0y16LfT4mjpmbn7M0JkFQ24wjBItf/pQ=;
        b=pfE9jGwRTsvbbHvlC7tsgl+4LvrO/cp9JhsqDmsIDu41hPOtVhMdcLT9hZpy/yvejH
         OnmQxMZcj3mwd9BV1T8hiV6FlGBeSav10f+sgVbFIVOoia/FRfjQ/jEz0giLcvIx2dBp
         TOPktz02N9qDQWhVP3F/lNeo1Sy538YDip14DnJyAjbNrEzcTZ+97D/nhiL+gpKUiFan
         c+F8OS3WlhFqfkXClB9Nvipjz9rthY2ma6I7uvCaYIA7UG5f+c1gV1Xk1gGM7Gp19e7V
         dHcSf8WdRucx/fRRnma4NVdhbIiJ/jR8D/fzBjNr2h3y9+kw7hvFp0FPW+VpTB48ZL15
         ArPA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU5Kd4TustAQMbpUlfj+e/RiYdITQjk1QCcs5TZAFFFPqXOCD7lxV8L3gM0pbvleYgsEJKjpw==@lfdr.de
X-Gm-Message-State: AOJu0Yw78zjMsxm82xCkccjh5D84MFweK7Ai4GnTPUwGIcjPdwcUfRyr
	FiJ6rIxHBUcnJ0Z1D5ry5tIu5hksYUkA2HGLWFwlA+T+Ldz3zvBwfaZgbhn4A/suaMg=
X-Google-Smtp-Source: AGHT+IGsY4vr4TjMXfvDDPI+nCu46io/q6Z0quocJMbK3FT2VruwLELYzWuWnh/oGa8UtRHsr/9m9A==
X-Received: by 2002:a17:90b:3bcb:b0:32e:7c34:70cf with SMTP id 98e67ed59e1d1-3436cbc7faamr14068701a91.36.1762824474966;
        Mon, 10 Nov 2025 17:27:54 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+aWXIJxX2kWLS7VNqjpDnb7sMZ6S7ceUFm1rpURnadCkw=="
Received: by 2002:a17:90a:1049:b0:340:f807:a7b2 with SMTP id
 98e67ed59e1d1-341cd2b6468ls4293161a91.2.-pod-prod-04-us; Mon, 10 Nov 2025
 17:27:53 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXjiAeqSZb6iqopxaCg3597t9W0fojZffoIgtp3xpVJCeG3C39MHumMersc5tkIgtM6q3NqtsL9BDydXg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:3d96:b0:33f:4e3d:b003 with SMTP id adf61e73a8af0-353a20d3fbdmr13996465637.25.1762824473018;
        Mon, 10 Nov 2025 17:27:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1762824473; cv=none;
        d=google.com; s=arc-20240605;
        b=TaKcD/NkU/MS0xSjHcVvqcc9yyTNKMgjRfGty8AHTP8slbzZqHeAwqNpYDpc2lqocc
         v+PUEc8fB2JOhcNFIVVmtOaQ9lGbBUmcpfTBZNQjMRJMinPKKn+rmvnkWTOTZUQY90hr
         moXPnGEh3ouWW4CeAl8YL6Qy91/0/YFJEKMm0OUW1F8RdssWj5A/AO2DjihK35mysH9A
         Z7+2hZIK5eE63AIrqAeRLro4q8gPmmClicKuiUXx59aA/nH7YIe/FZ7GSRZcXV4f84Gz
         rNdDoafCNkTP5bYQU4aU2MB7Oc/OnoVSvX9fY6BpWK4zkXzZMwaDzGltZswfDrVLSkxS
         w5Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=aNBX9NEEMgRbUzZGrmxI1h1qShk0I+ZbWYOrtv746pU=;
        fh=Bmqs/EG/nEXQgZV8zqV6IwCCH/ZCzleAdC8Qo89lcCE=;
        b=NqeM3YIWpm5FE+TYM9wwfJXRpJNQE0PYNj1j0w81MfArNrxf+hCNXI7R/iDBs/7At0
         8AhAjLhE65DzlXOdxuo5T79qNdFfIKE6fsNb6VbbEQEMGQiFo20YXPJ4Xj5/WR4ji9jb
         /dXXjCZyP2c6u8Z6bFg4x+5SF7Dq4hjW+spGKWiYcTvUq38dXh5uouK9A16JDTT3BZIt
         zFQuJMW069TSowCNGV94HoSfvFNXaM/UcPT2DDdaNm/MHm4RM9ncGT6MxKxwgu7vDKNt
         qIBH47n7ZAun5OTELjQaPHlwXvnUSDhhN6ZofMDSnGS0S++ZKDXF1k4tSuQFJhDSFj/E
         aJjg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=Y8HyvojN;
       spf=pass (google.com: domain of ccc194101@163.com designates 117.135.210.4 as permitted sender) smtp.mailfrom=ccc194101@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
Received: from m16.mail.163.com (m16.mail.163.com. [117.135.210.4])
        by mx.google.com with ESMTPS id 41be03b00d2f7-bacf25ca677si6363048a12.1300.2025.11.10.17.27.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 17:27:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ccc194101@163.com designates 117.135.210.4 as permitted sender) client-ip=117.135.210.4;
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g1-1 (Coremail) with SMTP id _____wA38ZsLkRJp47bnCQ--.61S2;
	Tue, 11 Nov 2025 09:27:42 +0800 (CST)
From: ccc194101@163.com
To: stern@rowland.harvard.edu,
	benjamin.tissoires@redhat.com
Cc: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Chen Changcheng <chenchangcheng@kylinos.cn>
Subject: [usb-storage] [PATCH v2] usb: usb-storage: No additional quirks need
 to be added to the ECD819-SU3 optical drive.
Date: Tue, 11 Nov 2025 09:27:37 +0800
Message-Id: <20251111012737.13662-1-ccc194101@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: _____wA38ZsLkRJp47bnCQ--.61S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Zw1UurW8Xr4fZF47GF48Zwb_yoW8Kw15pr
	WUJ3yDCrZ5GF1Sgwn7tFWUuFyft3WDAF48CayUGw45Xrn0y3WktryDAa48J3srCw43ZF12
	gayqyry8KFy8GaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j2eHDUUUUU=
X-Originating-IP: [116.128.244.169]
X-CM-SenderInfo: 5fffimiurqiqqrwthudrp/xtbC0A5GJWkSkQ5eLAAA3r
X-Original-Sender: ccc194101@163.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@163.com header.s=s110527 header.b=Y8HyvojN;       spf=pass
 (google.com: domain of ccc194101@163.com designates 117.135.210.4 as
 permitted sender) smtp.mailfrom=ccc194101@163.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=163.com
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
 drivers/usb/storage/unusual_uas.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 1477e31d7763..352e9d7324a4 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -98,7 +98,7 @@ UNUSUAL_DEV(0x125f, 0xa94a, 0x0160, 0x0160,
 		US_FL_NO_ATA_1X),
 
 /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
-UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
+UNUSUAL_DEV(0x13fd, 0x3940, 0x0209, 0x0209,
 		"Initio Corporation",
 		"INIC-3069",
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,

base-commit: e9a6fb0bcdd7609be6969112f3fbfcce3b1d4a7c
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20251111012737.13662-1-ccc194101%40163.com.
