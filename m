Return-Path: <usb-storage+bncBDUONZ6J6MNRBXH6STEQMGQEWUXJOQA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6F7C8364C
	for <lists+usb-storage@lfdr.de>; Tue, 25 Nov 2025 06:32:15 +0100 (CET)
Received: by mail-pf1-x446.google.com with SMTP id d2e1a72fcca58-7b89c1ce9cfsf4984258b3a.2
        for <lists+usb-storage@lfdr.de>; Mon, 24 Nov 2025 21:32:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1764048733; cv=pass;
        d=google.com; s=arc-20240605;
        b=lKCtFsPJNq53hwkqAuqpdGI5TcbJe2ymKjvMKVYUDI49KdDEcYNztt1eHR2u47OjTa
         8Dgq02i3wl2eCKjcoBCK8UZXaHN/9e0JHNe9KfU8oCmY1ijDkRJNT/1rOy/GlMgkTSm6
         s4sJ/V0+E6G4Pq3z7e3w3dsirVT6b0zmSUREwAZlzOUNDjnCbUsY65+mm632TyVM333E
         GUuFCx7/qNHnq1+CSXD4XAsnN29zyCLOYQBGWfGPkBQllIaxm4d6we/dcTNOIK4OBDh0
         EKEavLIX49HBjDLehUSY7pZf8fNUbTRyQPmRm2GBfLkqK9ubG5WbGTFNqebUZu2UiPiZ
         9zQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=rQc5uB8tDhLU59TcGmaY4FEP8w1USmCErJwajyXemUY=;
        fh=9W48ulPSwFqHtSNG4Kb5y+UuYNb0ZZ3XX7kf5zOoPGY=;
        b=PBwzsl0xoSHqZH/1fprFKIMnrMTmLOS7qDy8LCffFnlcXOU4dqOptMh5BIYhopwCYX
         ky8cLJhYz8/21ulFpW/3KVv6fRqX2JBaA5BN0uGz8aey3BcLsbGuDaNjKgN4TXM+9DCd
         NspdcDZS4SAui+dYBXHytodqEDXNaIoXOOF9PB3uLNJZJDEAhL/0JC7Lm1rnEheJPJMv
         Xof1SmefH1TyOh8y/7uCeqrNzYFL1kLXfxrGIRa1KWWCc0qRfrZuDLcDqcwVmtoRZOuN
         kPasb6NlOemzW0BIDQzaL1o4FWmFiwF9fM/a4Rx+s2Q67ciARvbohhF5FZEtyQw0kQfW
         ecNQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chenchangcheng@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=chenchangcheng@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1764048733; x=1764653533; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=rQc5uB8tDhLU59TcGmaY4FEP8w1USmCErJwajyXemUY=;
        b=NytU4VXFejW+i3kWisIkj6fGbrC43soNoWrcWHukrKfd4KZ6ke9846S/SRFJpJ6b1X
         a3GFTmH9ZGWZ32qjeNTVxqJE0fL+u5C1/7XWJoBj0NyvglmaWb2wPbCIaLozbC0fI62I
         GqAR8gZ2FzCdU6rmJh6HdXPqYboQ3KnKa6tb0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764048733; x=1764653533;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=rQc5uB8tDhLU59TcGmaY4FEP8w1USmCErJwajyXemUY=;
        b=Su5W9gYZKZUvWljasOeZQyqA0iQ/h1uujsm2/YxCTZVUMQr+TAGXC7qnHKcrbf5qqA
         NEPP4j4odJ1bV0LDEO3LWg1Du9hg+U6N2x4mcPwOu5H6MnfZ2y/PPfH1zf8FWscNKlMm
         1Sai4DuBqcs+PaGWHu/Vu+q9Xuj7meZ7NXYURpGACAPTBvIZQIggEotzk9BjRtS/M76W
         Flbxi2dkNr1y+WUxgidsuAT1wVL0VyMNxQCvJabWx4WSx8ibmFOx289BXEumI6sNCnzl
         Rdo2BWhLAAxop+dKF5sfae+EjVPfdNT5ovCvmsBWuQSLOncmo0IKMihE03giqbqnVQIt
         mz3A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWx9nmnfzFER0IMZbSpQNSVHO3P34zlcl0UFOlJoTDD+oJb7Vketklq7DLxpDMRHAaFHE1YeQ==@lfdr.de
X-Gm-Message-State: AOJu0YwiQIRjOI8NTlhDUuqF6h5kTdCVg36HoVXjk2Tv8hKF6AUNwh9L
	nbqlEQzA8A9CXqMMQVOKVGx3VymRZKTu9hdM/PwqNpuY7vVYebHcHZvmqpSGIpc1tqQ=
X-Google-Smtp-Source: AGHT+IELoULV9CPSoaaq8dPojOMLNO/IY8Knob5I568cHCYXCwfxchj0tdJSWYHwfLdFuN/1cYsNlA==
X-Received: by 2002:a05:6a00:1a8f:b0:7a2:8308:3c8b with SMTP id d2e1a72fcca58-7ca879e80a7mr1702583b3a.10.1764048733162;
        Mon, 24 Nov 2025 21:32:13 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+Z/IY7DPjW90RxkV2YNoZpINJyLucbdA7bldwW2WXkiBA=="
Received: by 2002:a05:6a00:2ea7:b0:7b0:967b:e178 with SMTP id
 d2e1a72fcca58-7c3ed2788d9ls5320954b3a.0.-pod-prod-07-us; Mon, 24 Nov 2025
 21:32:12 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVbokMeX6v5O9dgJR2JrYgCyTGMI+E5Vyt8J9U/qsquoF8fph0eZvS4jBf4kits9F6HwuHLN9M2TBzsyA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:7f8a:b0:35b:4f5c:4adf with SMTP id adf61e73a8af0-3637e0a0ba0mr1597073637.43.1764048731618;
        Mon, 24 Nov 2025 21:32:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1764048731; cv=none;
        d=google.com; s=arc-20240605;
        b=jiYrbjo2gg2Q00vO1tzKhju1fqSK0oUBEO/mdj4mLwp/eBjblEowm3j3jSRW0QHju0
         Ssn/ltdLQdwVcyr1NwR0jmhKfREd1lexy3Ckd6pW8PFoVXF0d00OvKXJEj4uZTH2acVN
         wJQfFUj8hUuy6uj3DH47rDY5eFE/yNQdjeoBrIoSoMyOeXnUbJtLKS3afwDHMBBQC0EO
         rQHZHZd5e7K0ihdWj0OuKMgABDv7QW8OgxsTrgjC2N2aNpftIG91srDcm5LBsfO2SAsM
         zKUtbGPYgQ5cWVzLeWOnyAQuJqvwKlsLPcASwcSUKdervuj3IeqLA+UrweKNGvPzrX0s
         MviA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=OB9MiDz3RgNHsMUB/u0gYd5kEOgGn4EApudUVGzUygc=;
        fh=Bmqs/EG/nEXQgZV8zqV6IwCCH/ZCzleAdC8Qo89lcCE=;
        b=N3Q1iVhYYc+0IY6le6pcX1LwqroAjRqVx3kYeks0uiLKKCYTFwRqo3FbSkQfP/t8EU
         oQoGz2DT9PIjt5iGYJXp4aslW7l2mkOSW94NaHoQIStbdBM6PSf0ld5V6B4XOJd1Yu5y
         4oWUrKJ8XeKWCTK4DUIBl9FJNfEMhHMJRlrfYavUsdk/x2HJ+FxwHQlIJtqqYQP+Ao2j
         owYsxfygNd6D+rHxERxWHfRAZb09ZiwZoDZALhWSRJE5lMnl7QxR6Sth0UjK7HqkiiMF
         BqM6f3YRkqhhalh9kEhhvH/gFCVcMZyNqbSYYKaChXKfCLpGT8InDsWCYXYQoJGThfDx
         MHEg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chenchangcheng@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=chenchangcheng@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id d2e1a72fcca58-7c3ed07622esi7658789b3a.134.2025.11.24.21.32.09
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 21:32:10 -0800 (PST)
Received-SPF: pass (google.com: domain of chenchangcheng@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: 14566bbcc9c011f0a38c85956e01ac42-20251125
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:c276c7eb-facb-4905-b06d-14fcaa596025,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:c1720402816d83c615beab25c3c543c1,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:102|850|898,TC:nil,Content:0|15|50,EDM:-
	3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,A
	V:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 14566bbcc9c011f0a38c85956e01ac42-20251125
X-User: chenchangcheng@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <chenchangcheng@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 1266607559; Tue, 25 Nov 2025 13:32:06 +0800
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
Date: Tue, 25 Nov 2025 13:32:01 +0800
Message-Id: <20251125053201.31955-1-chenchangcheng@kylinos.cn>
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

base-commit: e9a6fb0bcdd7609be6969112f3fbfcce3b1d4a7c
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20251125053201.31955-1-chenchangcheng%40kylinos.cn.
