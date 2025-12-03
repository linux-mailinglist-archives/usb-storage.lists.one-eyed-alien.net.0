Return-Path: <usb-storage+bncBDUONZ6J6MNRB2OHX7EQMGQE5XDNR4A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C45C9E069
	for <lists+usb-storage@lfdr.de>; Wed, 03 Dec 2025 08:16:59 +0100 (CET)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-343daf0f488sf5702427a91.1
        for <lists+usb-storage@lfdr.de>; Tue, 02 Dec 2025 23:16:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1764746218; cv=pass;
        d=google.com; s=arc-20240605;
        b=Y9zDaDQCaPtS5Ixm25tMHB4mQ5RrESJEoXQmYXqKyU8GzjGJc60BroDJgjDeyV2Otm
         M2Didr2b/hlW2dfy14Iep0sEhOFxLhyZ56vpnF/RTPPo3qYB8zVVEFAaTVwgfPQWTC/w
         EXoJFg5ew1cOC0j5fruRNAKCXgwm9sa8O9e4ZswDZQuKbmvMBXrCWO8X2A+aX5z90Yqi
         KZ9caz1woOi1dI6oJiaikXd/I1zBTPgz/qvineLgNf/FI0u+/hcWKubnHcK9Z4OLNGDT
         S02CfTl0Vsm+Dh4obie2e/M8q0dxDUDs98k5FHxqgHy2TYppwhprk6VtFHefGUfDkq65
         ocIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=US/eDur6JAcU6+7iWR74eqz6GYlLjhtOOZDrNOTODho=;
        fh=6HTHQZbVlBXkq70CMv8zSdzGLgttrxl5Eo0A3dtPvS0=;
        b=I0+QF8LUEsZelCLfhWPdTr/dqORcPeoYcXruCTiSoV9ZyvLrPUKU4VR+rCDrMbP/f5
         yz7SQXzEzmKrqoNSFXTG96PNAkTpfD/flyCHdJ674Mu1iIluQdY7p/g+AP5aLIFjHo1f
         nHcR972QG2GfxWMP6kEk2R0JrLAb3m9zzQLfLAsVdLkpdINHESZiSXhIMMz+uyxsCApg
         wW5OjblrU+pyNSWd7Ve23Q8WNc/mSBIQdqr+pqZpmReZRaTsbISwuajWZnH5ohHKGE2H
         Hqjywj3FbrnyxE+FlOm2cSI2UEIUkfgPG2LbvB8Gj891owFuesGtD2tkG2IgpccVS+bZ
         npbQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chenchangcheng@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=chenchangcheng@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1764746218; x=1765351018; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=US/eDur6JAcU6+7iWR74eqz6GYlLjhtOOZDrNOTODho=;
        b=ZWTM4r1uz+w/HAxdalhoLp3z1yfjipWCteCbB5Gd9IPRmy3v1xNqpoG5YlJ4UuakJ5
         sHP60LNuumZaUWL5e5S1WcMi6+OuNQVxO1C4sG5rDSpYWhGuFZsIp1W7N9wJKO6L6wdO
         DmCtWaI2s9L9cri4E0434ziCYmoJ7vxjvKia4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764746218; x=1765351018;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=US/eDur6JAcU6+7iWR74eqz6GYlLjhtOOZDrNOTODho=;
        b=NcoLF7IpRfcQu/z0uGnIYV8l2RKDJpSXJsKowj7dIMG4VfToAJD2MYA6juLSVnDB7B
         t0RosW7dESL4PS3AdtmE02XmizoIVxLVPKLTplPPUNqIgYFFkethjAE81jfVyOia0iE/
         3/3W0G0Od18jS7POHjG3U7TXNS/EbiiUpSGDLNEP0s0H41luG2YCQJs/y8EtSPJeX/Kn
         YClAqhc/SF0WLj3XJWghmwJJDBlEuXYV88BGrjfEuBOLK0AdWabPjxk1yK7kd6X0cp7H
         sdaXn/Fti+0CHDzV4qfrELz7xDTdZR+QICDb5ipvLJS6SKBUzJq/AbVDnOwQIa6ImWUd
         UbYQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVwrGN9L5N37M3RtWZWfFmCp7T39EeWnBpgvdC59EYuwPm4T3UsHjiKtHot68BPw3vS58tjNw==@lfdr.de
X-Gm-Message-State: AOJu0YxymaAza50lBOi4lx/aoQv6lVbWhgdm4/B/hsWJ0oTgFxIND3gv
	ONsXee+/AptFb7Fx8IlLJRjtqCWDd7UiiIoaIWId901AkBmD4IzyuoieYkYQ7loFn40=
X-Google-Smtp-Source: AGHT+IFOYaKL4EP6fCUw4LchXR0iJKWDqA2YaiTSdLudtzEq2OjKd/bjqObxC0222V3qziXeri13iA==
X-Received: by 2002:a17:90b:5102:b0:340:d06d:ea73 with SMTP id 98e67ed59e1d1-349126d8008mr1583175a91.19.1764746217973;
        Tue, 02 Dec 2025 23:16:57 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+bvKq0/t9uk0/lVMXOth2TYl1VFwPg6RXHPrEUEjGKoKg=="
Received: by 2002:a17:90b:3145:b0:343:88ae:9518 with SMTP id
 98e67ed59e1d1-347771d7abdls6552941a91.2.-pod-prod-07-us; Tue, 02 Dec 2025
 23:16:56 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXMGs5oUgmy9en9XEkEtfEkU5GqSEN0chczZasEOzW+FhDyGZfvDvlb6kWQwZezDQrZQYLMpmSSXiFocg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:ebc8:b0:295:f508:9d32 with SMTP id d9443c01a7336-29d683bb11cmr18516655ad.37.1764746216171;
        Tue, 02 Dec 2025 23:16:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1764746216; cv=none;
        d=google.com; s=arc-20240605;
        b=RvlrrmRMTo5UILf/3zJgY8KzzI8Oc50rQpX4zvw9VNLjNtRT44rRzJMHDsw5vUQIP2
         d4+oI7i+n4aQWaQHqIKCmrAYNKL2D54RO898sCQ18EGsXaCsOHfKWBUutE7XFP07onDD
         WugswWTKfcuCc+aJPlpeeuzRALp4zlxDOZ9ReHS5TDP3No/iBV90OXYwJGCpFDNoFWgt
         kh5RJmG22QiQL8CGL84HemcniF6Tu+bjBh3fDS9M5nS+1lR+IiOowLZxQaK1WCLEKNSh
         GNoAYhNPXXhmRBLt4pYKeOYEjgYknJEW5n5zHOgomuosw7htJgqins6nxGUk+eaKJVlX
         rGtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=fCUYhPaoAfb58b/HMEQ5/NhCFUgOzjCjBMglXqq06dI=;
        fh=Bmqs/EG/nEXQgZV8zqV6IwCCH/ZCzleAdC8Qo89lcCE=;
        b=JiKhQ+6iB4i44PL4KBSytXn2/VOy2/BhVHpG81YefmXUg7CJmD0djdJdz943kFJS/8
         SMAXfUYC6dfWLg3LA3ABYt/+FfJ5EOrrULpd0jbOw2u/a6NQC6NFWYJb5XLij5MTIYQR
         1smpKNM8mdv3/SagksnGrw8awScuuISpYPlJ71196uGcXk74MSry3tqfgPJamEKqUcy3
         KXPIQST/L9f4D7oQRsUi2sxLN6/kUGxftHErWXfyYGApKHgcyZ3wxbWdZr4NFu4wECgf
         Njo9yJX/MAhFItfr1GhrCGguQxt04iEUGEqlyt5ThwsMQtvY4Xqr1HA08E4NP0O4F0Tz
         plkw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chenchangcheng@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=chenchangcheng@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id 41be03b00d2f7-be50806448csi8831797a12.686.2025.12.02.23.16.54
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 23:16:55 -0800 (PST)
Received-SPF: pass (google.com: domain of chenchangcheng@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: 079b3f2ad01811f0a38c85956e01ac42-20251203
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:6a2d5b30-28de-42dd-bfd8-13664d20717a,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:19b5817c2686cdcb81b57fc8d05533c2,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:102|850|898,TC:nil,Content:0|15|50,EDM:-
	3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,A
	V:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 079b3f2ad01811f0a38c85956e01ac42-20251203
X-User: chenchangcheng@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <chenchangcheng@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 615030204; Wed, 03 Dec 2025 15:16:47 +0800
From: Chen Changcheng <chenchangcheng@kylinos.cn>
To: stern@rowland.harvard.edu,
	benjamin.tissoires@redhat.com
Cc: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Chen Changcheng <chenchangcheng@kylinos.cn>
Subject: [usb-storage] [PATCH v4] usb: usb-storage: No additional quirks need
 to be added to the EL-R12 optical drive.
Date: Wed,  3 Dec 2025 15:16:43 +0800
Message-Id: <20251203071643.57058-1-chenchangcheng@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: chenchangcheng@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chenchangcheng@kylinos.cn designates 124.126.103.232 as permitted
 sender) smtp.mailfrom=chenchangcheng@kylinos.cn
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

The optical drive of EL-R12 has the same vid and pid as INIC-3069,
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

For the EL-R12 standard optical drive, all operational commands
and usage scenarios were tested without adding the IGNORE_RESIDUE quirks,
and no issues were encountered. It can be reasonably concluded
that removing the IGNORE_RESIDUE quirks has no impact.

Signed-off-by: Chen Changcheng <chenchangcheng@kylinos.cn>
---
 drivers/usb/storage/unusual_uas.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 1477e31d7763..939a98c2d3f7 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -98,7 +98,7 @@ UNUSUAL_DEV(0x125f, 0xa94a, 0x0160, 0x0160,
 		US_FL_NO_ATA_1X),
 
 /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
-UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
+UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x0309,
 		"Initio Corporation",
 		"INIC-3069",
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,

base-commit: 7d0a66e4bb9081d75c82ec4957c50034cb0ea449
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20251203071643.57058-1-chenchangcheng%40kylinos.cn.
