Return-Path: <usb-storage+bncBAABBPFLQDEQMGQEZ7UTHII@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 1362BC77B4F
	for <lists+usb-storage@lfdr.de>; Fri, 21 Nov 2025 08:33:21 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-8826fb20ef0sf54908386d6.0
        for <lists+usb-storage@lfdr.de>; Thu, 20 Nov 2025 23:33:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1763710400; cv=pass;
        d=google.com; s=arc-20240605;
        b=SdnyxRjlamVWdfVsttDaIKkglq3aWpRz+rbr8g2mYNv2Cfqlev8Tkqg2XEi0X9Vj2A
         HE8W/ayRCVyhWNlWB+3zAkPfqAoF4dTN2oq4GMMLiiEVymy0VUhjKX9CGzhJ5WRdmyuD
         VDGnzmQXAjOh6sj75GUxmvcLtax+TvhX2F8P+/54tdwBTAQNbEbOjM5pLh11s0axDSPZ
         53QdrIcgjpoF836JFggKm+SjrBl6kZYYqgnkKw2ca3CEv9xVGrqc3TO2UBQIjd5UKVU0
         454jsjbO8ezh66itqn+tqxtI+Yw71AXImS3S0m9YAuJ0E5vO/gc/2yFs4U3j8IcAwz97
         iDHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=sULZ0sjxY35cNvRMsHBzfQ8kdxiYliKPEVQVi2eMSQ8=;
        fh=6nEU+gAMEuVqsmCW/AUuraWvriw2dnYOcp/DWCKdDBk=;
        b=cGo8QL5MTSBM9XHGkmx6oGzAnsDpyJ5JHqiuTKq+zR3ktadYIV4y2DvgGkMq/ABuzV
         eDxgKKbtVXNRg3OYKleFZlLV5ijbMC28jhb+8Bs/blgm364nvsnpFD9Jpe1lA1SuTS/f
         5e2uRI1jIV8HfoEtOJ6rLOnQ5AC9ngk2BZSgdOT8celnDAFgEDQGC0kHj/rsEgsmAIzP
         Egv05C96GCC0gMzTGmJGjMPKWwyiqR6E7R8EtJDOmqEoJTDe/nM2BiJzf5Ihj5mCB+WB
         gwTFfbLLBPvj5IMlySXx+BuYkE0EqzbIKqA9VQLwMnb4PV1nxvDVhLuk95c4bR2PBsCR
         TLMQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chenchangcheng@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=chenchangcheng@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1763710400; x=1764315200; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=sULZ0sjxY35cNvRMsHBzfQ8kdxiYliKPEVQVi2eMSQ8=;
        b=B879N4KwAUtZzNG7nxuQPTUMMwCVfnHWrEPW1r8g8UFNbMZbDcOBH36GjjqvVrpRAL
         wlVTdGLTSoSw2gEWRa1ZJZmChBLtITa3IMZY38wz0o90G3NEJ6TYQfULd14/xuHsEb7i
         e6bUkUlcUcr5I01mqrVS8PlNU6yyg091xOuJs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763710400; x=1764315200;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sULZ0sjxY35cNvRMsHBzfQ8kdxiYliKPEVQVi2eMSQ8=;
        b=ta33ZDjHzN+/SGJ5nn3HIPU/bwFfIHcEqE3ShnEBjLeBsKYRR2iQYCv+LwAU9e274q
         cEPbSZUrtC77qKsb2fEzCd24RRMEE1YrSQobAGLCs5A2fzfZfcU7k3Uc5gwK9FDX4xgD
         GKRZQcFZDRQpjhRkNBXkPpVviheqHvcu5uYjK/jPndlmeYJABDUSJOJFfWk1Ky0JkrVT
         Yv2hLBysb4m85tB2KhP7jdGo9uo2x9XlebP9rc1VTPYvjw+dug7VLvQ66yYNwjspiRm7
         m+r+6BkuI5vD+hTFHqEERGQ5gMhVJUA5jAyeJFHJt1DV/AhefPOCzjE3kwhZBFMxAuJ3
         FUng==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXQFBrVYIYE8ACF1D0E5I22LfyRs/kDMe57Id1ausRdu+Zhzug3Zync4xRRvekDdF8zRghBHg==@lfdr.de
X-Gm-Message-State: AOJu0YwwFcL9YlHJJ6arx6DuKi7niI5vrUju9058u+dWwLqPvWQ47do7
	etS+ErQL/yXHPMj9cuK/dHDRMo+bMcX5l3Cm4gEa0vwCQb9ufwgH6UWRYC5eV67zgEw=
X-Google-Smtp-Source: AGHT+IFLH7TKXHqojczDS5bavT/qM62lakEG1NtM/BZn2AINNJfouLnRkEJ6kRSFcmYkBMMLzZcrIA==
X-Received: by 2002:ad4:5f4c:0:b0:87a:903:17bd with SMTP id 6a1803df08f44-8847c499659mr16556316d6.20.1763710396955;
        Thu, 20 Nov 2025 23:33:16 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+Zn8wywygmsMJY4N+2naQUWGUxOEwfgUfGIaJzEYSQm4w=="
Received: by 2002:a05:6214:2e8e:b0:729:c1d:d07d with SMTP id
 6a1803df08f44-8846d921ee7ls18478016d6.0.-pod-prod-01-us; Thu, 20 Nov 2025
 23:33:16 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUB8lK7CWTxJzbWhE2asypVqb1J+y05nGPc2sFuHiJAnSRzftyyk/PlPNTGCYWmkXGgXhHg7HQROky0sw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:3711:b0:891:3606:7f3a with SMTP id af79cd13be357-8b33d268179mr110985785a.45.1763710396440;
        Thu, 20 Nov 2025 23:33:16 -0800 (PST)
Received: by 2002:a05:6808:6892:20b0:44f:fe66:38a2 with SMTP id 5614622812f47-45111040f03msb6e;
        Thu, 20 Nov 2025 22:41:37 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUPSdIgtaUa1IFbg2cYQbS/hOdvDM8yIQ3u9zppLRx8RJKG+b3i7H9AUBbvVPvqUwQ4kuUQfz4d0nYBZg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:7301:da0b:b0:2a4:4f6c:53b4 with SMTP id 5a478bee46e88-2a7190a5f6dmr331795eec.11.1763707296609;
        Thu, 20 Nov 2025 22:41:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1763707296; cv=none;
        d=google.com; s=arc-20240605;
        b=FTO0mnh4wNa6VuOweqxNfaNd7ZkHZqIq/VDhG93qzo8CITE+FqN+AmcUJJD+O7EFud
         el56Xl9N9dE2Pp4Hs6x+VhoYNrsxsIHw5/g+S5YlMbLaKXvzULTFHRN9FnDL1P3yJAAw
         +ijU6LcKvD8pY1oAI7qf6W8FbK/+Yz2rPEzveg2FojDjKSbl43G2PFuGC5iyhaURv/vi
         eHjsE8bVuf9W8nxcZd5pYQPK4MH2w++kFVeE1M4lk1IO2bi/oK67XSMHUTv71rGzpYZ5
         ktL67jrxzdgM0+NWG1UFMOv+TWpFzfepXgLj0lzOZrBaw/0gquvW5mgAZsS85ZaaR4jI
         Lc6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=1b16TxMDpurSqJW3hTWdYG4STQdYKJbJ+HIQfCZFC3Q=;
        fh=Bmqs/EG/nEXQgZV8zqV6IwCCH/ZCzleAdC8Qo89lcCE=;
        b=d6/Sgq7qmElduGklNA3q48OXBg5pjRyd2gGOqMyJk2fxP99Fh+JOobyJG3Sl/z/5vM
         OMVoJ9o4qBCuWNtWknwvO1Ne7WWgulkCDzcLuMgU+qoFJ6eYmxhW2DqFY7W30iFaN2Yg
         fahQ605HNgCo85P1MyV3G+yRIEYlGQOPHZFt3OlxtkkltRefIwTtZ3hYdrQ9rfBgKxL9
         sxYaIHfwdPfpeyZojvV1SW4oIqzdTCKHqKZmPx1dditS8EHBETU08qwcpqYi1ks1xCje
         oDtFbTg1QhD5FDq4LzaoyPrQ2+kdVUvvGcUo1uaLXRUfuZRWlXJEjad/vHT/u6o6pIHS
         ALWQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chenchangcheng@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=chenchangcheng@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id 5a478bee46e88-2a6fc4cc8d4si6559245eec.77.2025.11.20.22.41.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 22:41:36 -0800 (PST)
Received-SPF: pass (google.com: domain of chenchangcheng@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: f55625c2c6a411f0a38c85956e01ac42-20251121
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:e1985838-e218-4480-b173-2d0f3a9cf716,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:0f7920cd46c596ad0083dd4e52695bdb,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:102|850|898,TC:nil,Content:0|15|50,EDM:-
	3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,A
	V:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: f55625c2c6a411f0a38c85956e01ac42-20251121
X-User: chenchangcheng@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <chenchangcheng@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 1478271380; Fri, 21 Nov 2025 14:40:24 +0800
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
Date: Fri, 21 Nov 2025 14:40:20 +0800
Message-Id: <20251121064020.29332-1-chenchangcheng@kylinos.cn>
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
index 1477e31d7763..b695f5ba9a40 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -98,7 +98,7 @@ UNUSUAL_DEV(0x125f, 0xa94a, 0x0160, 0x0160,
 		US_FL_NO_ATA_1X),
 
 /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
-UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
+UNUSUAL_DEV(0x13fd, 0x3940, 0x0309, 0x0309,
 		"Initio Corporation",
 		"INIC-3069",
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,

base-commit: e9a6fb0bcdd7609be6969112f3fbfcce3b1d4a7c
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20251121064020.29332-1-chenchangcheng%40kylinos.cn.
