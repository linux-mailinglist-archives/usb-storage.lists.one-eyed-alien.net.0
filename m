Return-Path: <usb-storage+bncBCS25756ZQFBB6XRSWXQMGQED44BERY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 4922B86FADE
	for <lists+usb-storage@lfdr.de>; Mon,  4 Mar 2024 08:32:12 +0100 (CET)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5a032e40f41sf3646313eaf.3
        for <lists+usb-storage@lfdr.de>; Sun, 03 Mar 2024 23:32:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709537531; cv=pass;
        d=google.com; s=arc-20160816;
        b=AgI6QY1zxvevkl2ukP7bV2/ub1RXRoPeRlC0uw2MTrt/WAxT33uq6K4rp6+kKmezbv
         Hh5GHKdxZVvIq5kRi8dxh04Uk+udgBWDk9ECqRNF8ObVL/bJF43/MOny1gx7Q47GkiYV
         nuDvBvj/6dbc8riKMQOa5Tp1zyRQxXPFYbvj1WBY27893VJM1l5lH3CUDndlskl4Y015
         IAbwdSIwt3yQ2CqMGJQTXB4qEtxNR68dCUZtNBkJv6A1ICTvnGxoC4h4ajUj73cSxFeI
         1wXguiQKWPAiE8d2gUnqcdPc2hHQ9swtVx4CZTAWXkmMnHby3DJ4TXcJCPsAAUKWP4Wn
         jz5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=1t3P/fj7GkevANz6quw//HCglGO9a9knOTa0N/e0OOk=;
        fh=S44XHn6fTCLm1E7zKHJEwHKioI5+2au2CWaxOvnRPI0=;
        b=rZtezPliSqW+5miGPuZlDiYgMsQe1eTh25Ewqvw5652YWFjZQYaDW4JCCiJn9hkMWH
         HjyhEemAEOq0z4YusyPn9AzTuurR7IEhz33luRQ5YmC2y3TIZIiiqMaT5BG+j/w9Rx0m
         E+wGSKx8zrRIDKkOi5NFgPYlPsRjaYVmi2yyeH7S7AoFP6e3aKR9pX9Y5B9vjRiiMApC
         sz0yf7t/OeFiIr7Yzgx3+GSGnt+LseBLu8MwkE9h+s2Uo1+8jyUG43T40ij52jmzXEVS
         vlLO+hiE4ZzP8z86VupkwB49WNa1MjmorsLebUD3jZ+4Gmjx0iH/3YtRLbWJ00b1MOI5
         4qDw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of huxiaoying@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=huxiaoying@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709537531; x=1710142331; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=1t3P/fj7GkevANz6quw//HCglGO9a9knOTa0N/e0OOk=;
        b=g06bwflJzYa/G5PhTP1O+NNOlomazGCwjGp+9fhYu25T9I4XvdrD6om0t8Vl6kez/a
         3lgzweB8ps6iWhenLf8gjHA/MKf6E+ptiYOmmoi16wuiHcTBQkXkYA4T0S/Rog6kHLso
         KUTbFYwnKeQ3rq0CnC+XLj3/pH2EgcfnL1Hno=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709537531; x=1710142331;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=1t3P/fj7GkevANz6quw//HCglGO9a9knOTa0N/e0OOk=;
        b=r7UOfxScpSqEZFo6+4rFboE7T3OdIqt+XUeEqnX3YVAqGTiEKnj6IfoRVnHPgIbtVF
         JdTV9vYloQU/WVkIBmT/Q6HLkWDJbE8vzCHjcfKNKh63paqoCYoh74CIgAn30k0Ri4eh
         0UCkegwnrmljxqFHoyjvTcGKQWPcR+yqFv7SnRWhjbrJLvhkoiuYEpq6e+bKL/LCb5Sd
         1KnZQhdP/xvOAMcPH8sVtGvNWhhaPVmaf6JnATJIkZAesYID38FdFnxU7cm8eMHNvc0E
         iDHO970c4JZxPZuJGzvMpZ7jzQi/Xbb3jSfW0WqPFKK+A7fqsjk2fk/iQ6KBa88DaIkI
         VRvQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUCYVtP0z/CkMepOtjY882npbpwXkL3kyipTDidQl+mP2aGdxIai3x6aOCK48CnDiyoVjZgdbqiJmZDzZs2I8MjVyjZ11FfFE3m
X-Gm-Message-State: AOJu0YzX/ETxeTAY9o0pNs9BE1y/BFdMurEGBETXAQvvjGvHHCJ/it5G
	63LRbkyaTPGAbA+UOm0OOgNg+aBEXmJxZ+Q0g9zip1OgzUNOEnb93abV7nq+Ahw=
X-Google-Smtp-Source: AGHT+IE5+ocVa9ufgSVqw+IvFdDJoYzEQGZpl6D4e20FQLVQbMrmJUIz35eNgoTCKOUvLeZ5poyWQA==
X-Received: by 2002:a4a:3c15:0:b0:5a1:1639:97aa with SMTP id d21-20020a4a3c15000000b005a1163997aamr3960466ooa.6.1709537530878;
        Sun, 03 Mar 2024 23:32:10 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:341c:0:b0:5a1:11a7:5d2c with SMTP id b28-20020a4a341c000000b005a111a75d2cls2027471ooa.0.-pod-prod-02-us;
 Sun, 03 Mar 2024 23:32:09 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW7C43NkqFNGageIP2hWXpxGQqNk/LRIxQAB25zzyeTLRsdAuI9BGx9lvBDQa4TVsjmekDQnnbLS1RA2ZmFGzjdV7PtR3E9E8jtwxla65M+R5bLgE8=
X-Received: by 2002:a05:6808:6509:b0:3c1:d388:3d65 with SMTP id fm9-20020a056808650900b003c1d3883d65mr11567692oib.39.1709537529714;
        Sun, 03 Mar 2024 23:32:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709537529; cv=none;
        d=google.com; s=arc-20160816;
        b=KwMgLUxxkuEx7GNyRJFgVB7z5eojWS4qDevwGHml9en4QUHoaFoixNd7L6NWi1K7gn
         jqzNi739Er11B4jYNssRykePjz1gFUa+e4M1Wc/e3servm2bmNi7rz9cBsoQHsGNL2os
         goHKBhAgJ3G/Qm+GhL4T5ODl5j4CGkt3DXHFT/kp607mqsgLoDBjrr6YjVDK+NOkvEep
         uLjWUyDtfrk45qXb4P5dP3dU25PVImzqvmh0FjzeLF3hHlXkDqzppYGNbYasLtQ3axo2
         MCx8vUJjeF6vPY9YNC9oUnxeXgFMtenAwZ7yBdGCtoytlUsiA1C+WMA4gdPyMrb82b/X
         WbdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=kbhL+AJLsA4E7DX98qRg2Mi5VviBxxVqwkSELVBeBYA=;
        fh=FAooH7GKYYyIXakJ97bU/D9yPwMuBGyjp3/Wi/5Lzlc=;
        b=WiB3yK42s4/8H3SuGqwQ9h/zy56CDhiuRI0eSb6HkQJW/hSxAngLR0/p2Tp5mn/6it
         w0fBpkYMFFa1x8FVZDm4i+9ti6ORFSZ6vr42GPiU5Gb0qsSPAAAP0zdcIZ23ezqpiCXN
         aJI1tK79MnM2KzhGAv6KtBS7hAxmO+zyZiqTopsaz+goO1BatfxDwxv+f6aqkGDRCWBf
         mkfUR4M7nAdvxf8iDlHvMqMtxtvC8BPMEH1cOWkHy05GyT3FGnWavSR/xWhoX3yH4nK+
         L0ECwhld1Vc6GN+APzSJhsLcRzEygcV4S0c1oZicM5PfUxB3W5Uboz4I4c9av6SfUHuB
         FLkQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of huxiaoying@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=huxiaoying@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id t184-20020a632dc1000000b005dcd64e8467si8063470pgt.59.2024.03.03.23.32.08
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2024 23:32:09 -0800 (PST)
Received-SPF: pass (google.com: domain of huxiaoying@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: 6f1873923ca1490ba3bc406d5f42efba-20240304
X-CID-O-RULE: Release_Ham
X-CID-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.37,REQID:d5def658-cfa3-4510-acc1-3599ecb64312,IP:20,
	URL:0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTI
	ON:release,TS:5
X-CID-INFO: VERSION:1.1.37,REQID:d5def658-cfa3-4510-acc1-3599ecb64312,IP:20,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:5
X-CID-META: VersionHash:6f543d0,CLOUDID:0c6e79ff-c16b-4159-a099-3b9d0558e447,B
	ulkID:240304111709GTSTWZ2V,BulkQuantity:9,Recheck:0,SF:17|19|44|66|38|24|1
	02,TC:nil,Content:0,EDM:-3,IP:-2,URL:0,File:nil,RT:nil,Bulk:40,QS:nil,BEC:
	nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_FAS,TF_CID_SPAM_FSD,TF_CID_SPAM_FSI
X-UUID: 6f1873923ca1490ba3bc406d5f42efba-20240304
X-User: huxiaoying@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <huxiaoying@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1626496290; Mon, 04 Mar 2024 15:31:59 +0800
From: Tom Hu <huxiaoying@kylinos.cn>
To: linux-kernel@vger.kernel.org,
	stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Tom Hu <huxiaoying@kylinos.cn>
Subject: [usb-storage] [PATCH v2] usb-storage: Add Brain USB3-FW to IGNORE_UAS
Date: Mon,  4 Mar 2024 15:30:31 +0800
Message-Id: <20240304073031.225422-1-huxiaoying@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: huxiaoying@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of huxiaoying@kylinos.cn designates 124.126.103.232 as permitted
 sender) smtp.mailfrom=huxiaoying@kylinos.cn
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

The UAS mode of BRAIN USB_HDD is reported to fail to work on several
platforms with the following error message, then after re-connecting the
device will be offlined and not working at all.

[  622.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
                   inflight: CMD
[  622.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
                   04 00 00
[  622.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1
                   inflight: CMD
[  622.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00
                   00 08 00

These disks have a broken uas implementation, the tag field of the status
iu-s is not set properly, so we need to fall-back to usb-storage.

Acked-by: Alan Stern <stern@rowland.harvard.edu>
Signed-off-by: Hu Xiaoying <huxiaoying@kylinos.cn>
---
v2: remove junk information from patch.

 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 1f8c9b16a0fb..98b7ff2c76ba 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -83,6 +83,13 @@ UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_REPORT_LUNS),
 
+/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
+UNUSUAL_DEV(0x1234, 0x1234, 0x0000, 0x9999,
+		"Brain",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
 UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
 		"Initio Corporation",
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240304073031.225422-1-huxiaoying%40kylinos.cn.
