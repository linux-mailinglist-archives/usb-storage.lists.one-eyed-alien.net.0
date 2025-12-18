Return-Path: <usb-storage+bncBDUONZ6J6MNRBFVPRXFAMGQE3V5EEVA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B54FCC9F87
	for <lists+usb-storage@lfdr.de>; Thu, 18 Dec 2025 02:23:37 +0100 (CET)
Received: by mail-pf1-x446.google.com with SMTP id d2e1a72fcca58-7f89d880668sf207353b3a.2
        for <lists+usb-storage@lfdr.de>; Wed, 17 Dec 2025 17:23:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1766021015; cv=pass;
        d=google.com; s=arc-20240605;
        b=TLUSWcKEUJU6mWpDGuq1IWIko3O//4W1AsbyCW9QVzmPmvJu2HaYhh3aHX3qzTMRDS
         hVxOsLWkQ0rQYWG9OLTMTQ03yQTUONx8ziFKipnf74bxyUQ6Gldx4v5fZouAOwLdUSam
         jp4rEBaRh57z/DEcDBtwto5+aE3qdJ5RReyEvJ6v2THDXdNBxwPDeBffl0y6JjNOtUQd
         rjLy02KVJY1vSFkrejpmX/Gdc/Fa3I0jo3F2thUlif4ep9L+osLVjVRWmSLEBIeavXCZ
         OxDUm4XRs9DBVXM328BxvMcAzVRhMYeBW5zfsmvlipG2gxKqq+ExMzyNSstcEpnPIP9J
         dlIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=/CuEMPigjH6qtJ01lNBsu++cilL/uswlXoyFN0s8cZA=;
        fh=mNTyoRFyyfQRynsbmKrkHpCK8j3YDLKV1K3L3RjZhG4=;
        b=ONmjQKgPtYMiAhUUXEpd6LLGGYGwa/DCFqJqiC62K5i9h0abGGeU10cLoZJq+j/tRc
         iEOi2LD8mxTMoOSf31fmxrTZDFCA4sOboQ1eN8c2Y5FgobI9tLkfm+3wzqmFVA5swAt8
         DVKXBQJsVZbsLtbCoCfgNvOBQlJo3yza2GuT7o+/g8HqrfFv4TiwRGtD+VWDGzIXauVI
         msWw+nnlZEZ11Sd6ZsIMLaqM7WC5fA71kk53Pmu09pX5hvJD7ktGnF+JjL2mPL8iLS/d
         l7E8h30lZ0UTjN62nsGXtflu7vLPbdRXb7p6tCNZyjmxIp6yYm05cMs7s4XUD3LOYmsQ
         Okbw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chenchangcheng@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=chenchangcheng@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1766021015; x=1766625815; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=/CuEMPigjH6qtJ01lNBsu++cilL/uswlXoyFN0s8cZA=;
        b=lZWB0xMW5t8FCVUNAC8vF6VY90u/m6nJJq73u8a7vcQZBL3B+Ux0q9ddC5323Ogzqg
         nYnYRpQyp5YuEf6q0rbcjVnQcZHt/SR7mDSKP9bRI4W3YXEl9sXcixa3AwyW4ZzKJ9ik
         4R78aaTR19tv1Rg2M9QAyULyHcD+1pPCxd3+M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766021015; x=1766625815;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=/CuEMPigjH6qtJ01lNBsu++cilL/uswlXoyFN0s8cZA=;
        b=HgMyfL8JSckot0DACQ3bkacTVBgDOJvHu2NmlU8GWgPOQMvi7ia0kPk5dRVrGmiKCe
         sPkVLs0jRUD3dLJ8c8h0h5u51HshfEGcss7Pt73Ze8KdU0K4sOAIor5E7FbgePAzRY5r
         /tBzHVacEYg1oiBlUwzsBpIKvEqXlEk4foUgYHNjiRgFnO76zvpaaoTazSpAd+a+yh/V
         U6g9dQjJD20KRZWmOthtgDEBOfiMCdOJQGgFbHRn2HsaCEZFpuEW+f7ujylaqP6aqI9X
         dOxb7gp+Vt+/4TgwOvefSE4tzWH93SK1LDIHcpJqIyQHCM5wR+TO5LSbVKnOsaw2vFzY
         hdEw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVSDPS2ZvvUVstrhmBVxOhsUbWlSBs8MTa0+KoWBpB9Oia+LiOxj5GZ3NuX9Rt8B73dWs3WFw==@lfdr.de
X-Gm-Message-State: AOJu0YyU2jX1mm1iAC3p7Wj0uNj491MiA0oftrQqwK1gUihXmwWTy/Ts
	VDsbCQ3t4IhKJsgu+uJ/Oqjx48HOgloMaJLrQHuE/0ZRPI9wiK0EXO9WtbbH9PaiSG0=
X-Google-Smtp-Source: AGHT+IHwSErnALD+gfSAh1mUNcBcLK0jOCh+jNRrJVY5/k1UAQGiCS0K+v/XPKsbb8/49m+VabaPWw==
X-Received: by 2002:a05:6a20:3942:b0:350:b8e:f9a9 with SMTP id adf61e73a8af0-369afdf657emr19716670637.42.1766021015094;
        Wed, 17 Dec 2025 17:23:35 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="AWVwgWZXHNWcH2VMvjkhFS8NWdEWgHwvvUtEBIXwAKhaNA1DYA=="
Received: by 2002:a05:6a00:6f2a:b0:7b8:4330:bc3b with SMTP id
 d2e1a72fcca58-7f644654921ls4958328b3a.0.-pod-prod-02-us; Wed, 17 Dec 2025
 17:23:33 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUH9L8eQWjo4+njCleGmSP80a0gQfJx/p8T6zGwKxyOWOdl8IyQGEtm9xVXPXMaeNI18jv0HTMsz9E5gg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a00:368c:b0:7b8:383d:8706 with SMTP id d2e1a72fcca58-7f66792dc5cmr20731429b3a.18.1766021013183;
        Wed, 17 Dec 2025 17:23:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1766021013; cv=none;
        d=google.com; s=arc-20240605;
        b=QJ3fn8aZj8LNUBAcHQbJKuCRua5Yy9RCsJw6eLv26rRZfXPp8ePTWUvu4Pbz+Z5x9z
         NKw/o4O2+/2xqOTCvUBqdn1QXuSho+lnRO3j1afTNMCFWgUAlEWEL4RGH8SORnJHNjeC
         q6Uz0OSCLOlTbEOf03MSTudyvEDkuVlTTGLm/0cgqSEKqdxPP2BXj5XNRaZOsSSFZWzl
         ijqlmq2HCxJGxOiqJqLVNM2Oia+bmSpzyCOt3LmAKA/odI63z06iWmqi53CsSgwGOu75
         O7YEuk4VWtB63U94gxVsat1mCsPX2UtdA+hdOKy6O5sXCAAe6JtUL6rdURKZAsRe5jHR
         XUDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=1A4DqnXjQgLMn7BeDAiRcIMb2YgZZRQofU9pAsfiiQw=;
        fh=Bmqs/EG/nEXQgZV8zqV6IwCCH/ZCzleAdC8Qo89lcCE=;
        b=R2cZ3Yr3z+u/EeRP2KP57dCltP3Gz++4DJR+gqWeuX/j/0L257MmLZRv9JZnsUN0Iv
         nTuKnHJX1KAgBM9dl49C4jiStUc7IFq/Svfz54Izm+vIsYdW/N4EO1t79tQ4N8PrllBc
         Yq8aRdag4dKgEiG7053zAa5Oa5GSUR15j6Euz1KAGFJnfVBDaNkgEk5u0ZN8K7ljt9Sy
         X9mJ/pGlgshiGfFPyC2WnnYzopZzzhHwAIzbqF3aHYvt/B+VxguzvAiasxf6zwoBsERy
         UloF6l/huIklCqcq2/degQVH/rn+hIzxFfTkdtFJjp23q3+eu0QLzNtdpm4lUatEtNvu
         3eLA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chenchangcheng@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=chenchangcheng@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id d2e1a72fcca58-7fe14e449f0si2112335b3a.272.2025.12.17.17.23.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 17:23:32 -0800 (PST)
Received-SPF: pass (google.com: domain of chenchangcheng@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: 26851a0cdbb011f0a38c85956e01ac42-20251218
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:ae838289-0e07-430a-b776-d16e64193318,IP:0,UR
	L:0,TC:0,Content:0,EDM:25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:25
X-CID-META: VersionHash:a9d874c,CLOUDID:efd1571e05068cb2657850fa52ef3274,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:102|850|898,TC:nil,Content:0|15|50,EDM:5
	,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV
	:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 26851a0cdbb011f0a38c85956e01ac42-20251218
X-User: chenchangcheng@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <chenchangcheng@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 695676132; Thu, 18 Dec 2025 09:23:25 +0800
From: Chen Changcheng <chenchangcheng@kylinos.cn>
To: stern@rowland.harvard.edu,
	benjamin.tissoires@redhat.com
Cc: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Chen Changcheng <chenchangcheng@kylinos.cn>
Subject: [usb-storage] [PATCH] usb: usb-storage: Maintain minimal
 modifications to the bcdDevice range.
Date: Thu, 18 Dec 2025 09:23:18 +0800
Message-Id: <20251218012318.15978-1-chenchangcheng@kylinos.cn>
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

We cannot determine which models require the NO_ATA_1X and
IGNORE_RESIDUE quirks aside from the EL-R12 optical drive device.

Fixes: 955a48a5353f ("usb: usb-storage: No additional quirks need to be added to the EL-R12 optical drive.")
Signed-off-by: Chen Changcheng <chenchangcheng@kylinos.cn>
---
 drivers/usb/storage/unusual_uas.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index b695f5ba9a40..939a98c2d3f7 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -98,7 +98,7 @@ UNUSUAL_DEV(0x125f, 0xa94a, 0x0160, 0x0160,
 		US_FL_NO_ATA_1X),
 
 /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
-UNUSUAL_DEV(0x13fd, 0x3940, 0x0309, 0x0309,
+UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x0309,
 		"Initio Corporation",
 		"INIC-3069",
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,

base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20251218012318.15978-1-chenchangcheng%40kylinos.cn.
