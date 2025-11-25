Return-Path: <usb-storage+bncBDUONZ6J6MNRBAMUSTEQMGQEHAK7AVY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F72DC8309A
	for <lists+usb-storage@lfdr.de>; Tue, 25 Nov 2025 02:44:36 +0100 (CET)
Received: by mail-pl1-x647.google.com with SMTP id d9443c01a7336-297f587dc2esf116621155ad.2
        for <lists+usb-storage@lfdr.de>; Mon, 24 Nov 2025 17:44:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1764035074; cv=pass;
        d=google.com; s=arc-20240605;
        b=ae0dn9y+G3hiqnyTC2I0a+UmHLqHRlEnUaaAcb0NT/gkFbTxpMyrp5MPFerP/k5geZ
         dug7wqaMGMO3N0g90YE2W+oURk1ayadoJggKEVpis8M/r7IGP6DnecibA3yrHwITq6TT
         BAm+iKJP729jLTdtObUQaZBNk+e4jWrkCCA/OY0rimpE+4rdj7a4ql6cieSsUo/8Sfy8
         SneZVw5FTLs7vfmiT/W1FdRheZg5lAQ0pZhoxyQBORNW7HAZaW2CsAu5ornpxGdONIC8
         WYVkxgIsKRHIw1WuBtuQOesTI5Z5oKz4fIVtTez/7kMOL8se8oI5F1QhaASIk5JbT7T+
         ZVUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=qavlHqZxanxD1ZRf6UB/s/keCxVvrmJCRpEcWd7F1CE=;
        fh=RFdfkooRCAqUgpI9uwIgewlNzzUM09mOmEhdeGgPkFc=;
        b=OvaBoZNaxzHo9uabESQtISOtddyxsKUTRWUj9HaRATGQlLuD9YU0Ih69dxN06Hiki+
         ghAcEseBdpOCkOhXdrGXlXpH15qoE4ThXdAXjnqTGZhfwOTqjjroXsAjXTWY5Hd2VGCV
         /Oc8B+LIADsCXlODWxbJ9JP3LheQZizB8HkBPiiyqzZtVnCkFAajxZE0plhpFCU3A7X5
         DhGUoy6JU6/riN13vDlnmuiLMjaFJRtuz1DsgyAXnCz3AX/DwdVESaL5hlFpcFXTHHD+
         9PBEnPDu6MY9V6Jvl54ZRDd3WP47zXe8kJ56tQDhjsYiyBjJxnr23hqlULQEUKfs4OyD
         /W7g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chenchangcheng@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=chenchangcheng@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1764035074; x=1764639874; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=qavlHqZxanxD1ZRf6UB/s/keCxVvrmJCRpEcWd7F1CE=;
        b=j+8w9iF4mpuRdbYq3f2r6iGyn3uKMTR0bp9yX88Le2w27KjQEuvq68Q9pSQu/UX3H5
         8luPBuo6IkEpodsrVd+DtNByFH0zBzbtuxBVhO1zOkSQr4sTqt8wi51PM6xJddjQAThU
         k9XczyDxB/Pb6vK2FaV/lB+CYWfoPIQwsFyWk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764035074; x=1764639874;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=qavlHqZxanxD1ZRf6UB/s/keCxVvrmJCRpEcWd7F1CE=;
        b=aPcpSCtz0JfHvmpvhLuokgr+g6SiSJSGOe320hKE5K0CjlKjWuEOs+rron312KixyD
         mkFX1B3R2ylaYwr2HKlnHJk74vwLO7vOn0MGrVKDtmzuxHYikEvIwjlLNDghPNlqgEwO
         clyY0HVC3s8QShz9PayD59V0+5oIvG0nmLPvXxFFtWB7G3wVf+YEx9tMGYu05FttfJR4
         h2OIR0JVmUOQmaLb5GUWVRxdeCeWX7i8gp9UsisU4zoxis1OUFqT0Mdsz2ON12fdWZLS
         gVsUrlnH+uZ7gO0hS3RVngcHMuLOsw2mMDRJpLmH2E9g6fnQY7fIxgkikOCq7LpR4L/n
         jqjg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWcnOi3HxtwlNf9f/zBLcB8wS6XwkSqAs0R3IYsHHVNckN+kQRVTXfmfUHXqjHbSTXpPVhQHg==@lfdr.de
X-Gm-Message-State: AOJu0Ywsnf4sg8VODt7ND/xeY//fE4YdfehnKlibu1QRjD6OF8tnu+uy
	OCm4BQENafxbRqwOtTAaPMrqgYFLWQJo3xPm8iXDnMTM17wPgNXIfpOaxajO1t8Lodc=
X-Google-Smtp-Source: AGHT+IFDjy9ULoTKJr6qAj4qQnMjORS4v9lfHNq18oewiGGOl3TWd0gIie5rRE3Ua7OxCSKltXiK7g==
X-Received: by 2002:a17:903:b84:b0:27e:ef96:c153 with SMTP id d9443c01a7336-29b6bec45b5mr148204105ad.19.1764035074205;
        Mon, 24 Nov 2025 17:44:34 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+bTFdht3KYtj0rj+pPxK1gvz0NyEHgbZeXx+xS1bP8goA=="
Received: by 2002:a17:902:bf47:b0:295:3ea0:cf8b with SMTP id
 d9443c01a7336-29b5b18f03bls34916425ad.1.-pod-prod-02-us; Mon, 24 Nov 2025
 17:44:33 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVlw5KBxGI5NcNMzvyHdtaKh5TPSTX2q7yf6ZVTy5i/DLoV8LXMs3XSXq5HX5t/q2A01JYFSkBMfUIvpQ==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:dac7:b0:296:1beb:6776 with SMTP id d9443c01a7336-29b6bf9232dmr140239345ad.58.1764035072833;
        Mon, 24 Nov 2025 17:44:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1764035072; cv=none;
        d=google.com; s=arc-20240605;
        b=XpirdM3ToJLPvsN9oeLECnAmwJxcdvC1PPVewngmn3AQSwrx39MZAsDGRGy9yPgloa
         uffsi/hRg5AaTGqCOsDqXnag4Er6UCdw37Bt64v8AGDufHmmWQFoDP28592QbFQz6opK
         BurVueGpi5YLV5iYL03/cGidKglAdMtwVKq4S6LhtbErdmdZogQoR4s/1pT4rr2SaLL7
         GEjBbAXjji5xg/hvyCqIqKHFlPkcEYpPZCm33xR3HIumGgTcTrThCxKb1Pdx73PzNbpx
         40z6FHe16cSjlKYA9q5oHGIM+ZhBifR327PzEREBr1WZ1BEm2X/a/v513UiDNTTIa/PB
         5yLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=OB9MiDz3RgNHsMUB/u0gYd5kEOgGn4EApudUVGzUygc=;
        fh=Bmqs/EG/nEXQgZV8zqV6IwCCH/ZCzleAdC8Qo89lcCE=;
        b=e3XjadgmXm3YiXRA5TmQ+qNClPA+z2aBYYHyEP53JS0NEBW2nCE2pVsLqY3x5o3fJV
         CpW9+y91hVI09Ib4O6OWuN97nkXMxPMIE3XZv/IImhmv/eGgtTwSn3EdU95lGzxDHtb3
         iR9h3UbxHBJuhCZbqfD/7CKmkfcgptvj6c0cx+6q1jzLO1owlQCFt7MlQ03w7UGM2lU2
         pBsh/yss8bzVOXKfOeiyRqItKEuInbT6tgh8XSSS5JKl+YBGqbe4B1xSv/8T6pflifCU
         269W0TcOulD2cdst96juZ1C3x7arqE938Bd/nr5hGaB1mWs0xx78GPmHKKh3zrBAP+7E
         I3AQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chenchangcheng@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=chenchangcheng@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id 41be03b00d2f7-bd7603e7697si6636546a12.830.2025.11.24.17.44.31
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 17:44:32 -0800 (PST)
Received-SPF: pass (google.com: domain of chenchangcheng@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: 4670a1aac9a011f0a38c85956e01ac42-20251125
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:67c66d7e-412e-4a53-b9c6-df7e943d76b6,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:16152b78a9394bacbdfe02a23d67e84a,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:102|850|898,TC:nil,Content:0|15|50,EDM:-
	3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,A
	V:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 4670a1aac9a011f0a38c85956e01ac42-20251125
X-User: chenchangcheng@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <chenchangcheng@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 73763576; Tue, 25 Nov 2025 09:44:26 +0800
From: Chen Changcheng <chenchangcheng@kylinos.cn>
To: stern@rowland.harvard.edu,
	benjamin.tissoires@redhat.com
Cc: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Chen Changcheng <chenchangcheng@kylinos.cn>
Subject: [usb-storage] [PATCH v3] usb: usb-storage: No additional quirks need
 to be added to the EL-R12 optical drive.
Date: Tue, 25 Nov 2025 09:44:22 +0800
Message-Id: <20251125014422.12721-1-chenchangcheng@kylinos.cn>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20251125014422.12721-1-chenchangcheng%40kylinos.cn.
