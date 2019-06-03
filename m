Return-Path: <usb-storage+bncBCUMB4EN24LRB2MR2XTQKGQELXXOZWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x348.google.com (mail-wm1-x348.google.com [IPv6:2a00:1450:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC06334C7
	for <lists+usb-storage@lfdr.de>; Mon,  3 Jun 2019 18:20:58 +0200 (CEST)
Received: by mail-wm1-x348.google.com with SMTP id b79sf6353981wme.5
        for <lists+usb-storage@lfdr.de>; Mon, 03 Jun 2019 09:20:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559578858; cv=pass;
        d=google.com; s=arc-20160816;
        b=m8Uv/FIaJAAN7xjyEkY9esGaLNz8V7kxG3aUKMvd/qLvJNrgmWYlFsOuy9htFyP23H
         0gYQn6RcuUiGaD5fsbZcLolpPCQ6a4uz712JWTjYIiQ1qvJtDfcIMWvnRpQPbScDzUPW
         dJTXhJ0F2Y0W5mCz4EfAGqvLjoNe2BjU3X6uf1BsZmW0oo6VLUMlPm96254rpeIedt5r
         GgufFqnAIDYjtCRN1YgbxFLZgglsizJvn+eMEG70U5mT6C/3WXYeboWqUAB2hnyBmr8I
         7VUFamlkk9o1FjU24XGFd0L+kE9pOGpmF0LqcpnsDIR374l4WspUCxAhaqa24Ht+6Hfh
         oVUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=wEZjz0GD29YCtGXDYt2+O8P51IVmVJISEqbqdTIoDFI=;
        b=n2yruTDeRe5lijsPTK/gt/QmdAlcEod92JgA+gxfjGGWurmX/tY2s8jQWilrjzl2gu
         yZYh3rhLdeREaFAukEl8/fKPXcreTIG4KMTBSB6d6d7rQL3M95g2IEliqVob0FzDvIFa
         ej7DQUS5mLaheUoXhhcySW0q2uWoamoGPKjuZeVaOl7ZkzNd1Jg1WtJaZqnnyZ1vjals
         hOIcYxRQgIe4kUzBiprTQfjrq9gvukUwVJ+uUX2YH5VwpHfB+n5/qrZlCaTlVVafOubH
         b74DSrm7tMO8Rci6yJJjyuOVua73wGkq9I15hsVe0btb9da1aZbwnFUVvBoUwW/qIVOo
         I30A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wEZjz0GD29YCtGXDYt2+O8P51IVmVJISEqbqdTIoDFI=;
        b=J0j01lxRlXiTSGML05rdZyFCXSFFBptcqqTOgJ3HGSfqOe2VyFcViCUje2E9RuIeTG
         0qoMXMSD7LXvD1226cgYS0OeHDXydIca3xHuEdqxYixhhrhyA5rgJ+MUs4miwVc89UW1
         RM4TUlnzWS6yzHHD6GcCfraAm69LngqCU8qyk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wEZjz0GD29YCtGXDYt2+O8P51IVmVJISEqbqdTIoDFI=;
        b=CNGlrYH51Wcew7FbjvsFqJ7JtkzYGlI3qfTEOvJQqv0BZVh6pYQmQgj+E+hZqEOMH4
         KgkdeD6igOzo6ASM3DP+as9r/47blMIo6pRSnYmwgsYIFW604Cdd5e7CU5BN0QI+1UIQ
         i5bcFqChSrZ2t5+PtvngXkdenUMWi/Vo4n8wLCxbo/jf1tqE5zFobVo+q3Iqrdt7F0mG
         Kr74F9+SiGCfOgc6ijl2FMaZsmkb7V69PNPA31q0uuiqVCzjrxPitpsU31M/zgP0CKbY
         aSpqQr2Ddqvbc2SsoJ2j8dt/Vc5mDpeCDX/WbjqD+qYWajitKvGGFueU39UVITCA6g4+
         nUsg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAW7JqyWHG7VSa9hsSIopv6QGEaQ/F7tLA3JX3yuSYoLg9ZHOZ/A
	ZbP/S3A05b9/QEiuNPAEEkd8Cw==
X-Google-Smtp-Source: APXvYqx5QPsMX3oz1ZubgiyisIqFN4SZQh8PnzTf6MaD9jsOnqMZKXT7mSM/esnCLSlEulZluXih5w==
X-Received: by 2002:a1c:c74a:: with SMTP id x71mr14798906wmf.121.1559578857839;
        Mon, 03 Jun 2019 09:20:57 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:4d89:: with SMTP id b9ls1258319wru.0.gmail; Mon, 03 Jun
 2019 09:20:57 -0700 (PDT)
X-Received: by 2002:a5d:4acf:: with SMTP id y15mr2081187wrs.32.1559578857066;
        Mon, 03 Jun 2019 09:20:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559578857; cv=none;
        d=google.com; s=arc-20160816;
        b=ETAaIPrewt988VkEKZVFjsCCtiM71qKYI54g2yw1qdyjmVoPVrxCk3ocT5BtoLb5SO
         jkUBeKPNKpCKQYAEeOvEDeK8atxvxCcT/bdkPhcpMjSxoasCmvn1KD0GpYfljfjXFHYr
         Ux05HUwvdjibLudE3BCSxBb467hqejlA3uRZnXxCLq1jIJJ/AP5lxhnI8N2JhR1c3Hjk
         ycDxy23Sc5csxwYKWkxxS5Rak0v66WufQBBcBRF3K/jPJfRnbUF+NiM8KMQ0EfsOzq9D
         +NylaKVsb/2Ks66q2F/EGzf8bNEEyf9+itEtjES3X5OYPRXYy2IJneZwGeJIsFiILrmu
         gZ9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=Q9xifTutJdxwNtngUFP6fzCEJqqtn3NOoU6ShQ3SrEw=;
        b=G+710LFCMwAMOIqOafVODGITVCurb+fkoLnJNI4PSUClPe4MVPMsXU7zk7I31XP576
         LiBikXVpUqRqTbTF1PbkxGmys6Swn7EV37eORHx/Z3WY56fybwJxe67IOvNCz1Vc0JC6
         sNa7zrUqdoBprC//fT8iOnbNCaZSZ5Dv+gchu4GAT3eam31ZnHLMpra4Md64V3K7qxcB
         GTl08R/Wk+qp+e+AhRFkMuUBDl4sUuXLWHKPQuhBK0ItLasi6t9uxUia5CIzcp4nm3ya
         BVMcNMoiIDwsKmBBJfh5V6MZrjmq/+TMEa262D4aqCG9xEuaGbLUdw+wzFdyeqG+Nc2o
         9B3Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by mx.google.com with ESMTPS id u9si9355882wmj.75.2019.06.03.09.20.57
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 03 Jun 2019 09:20:57 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 61-220-137-37.hinet-ip.hinet.net ([61.220.137.37] helo=localhost)
	by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.76)
	(envelope-from <kai.heng.feng@canonical.com>)
	id 1hXphc-0001ur-Rx; Mon, 03 Jun 2019 16:20:53 +0000
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: [usb-storage] [PATCH] USB: usb-storage: Add new ID to ums-realtek
Date: Tue,  4 Jun 2019 00:20:49 +0800
Message-Id: <20190603162049.1863-1-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: kai.heng.feng@canonical.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of kai.heng.feng@canonical.com designates
 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

There is one more Realtek card reader requires ums-realtek to work
correctly.

Add the device ID to support it.

Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/usb/storage/unusual_realtek.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/usb/storage/unusual_realtek.h b/drivers/usb/storage/unusual_realtek.h
index 6b2140f966ef..7e14c2d7cf73 100644
--- a/drivers/usb/storage/unusual_realtek.h
+++ b/drivers/usb/storage/unusual_realtek.h
@@ -17,6 +17,11 @@ UNUSUAL_DEV(0x0bda, 0x0138, 0x0000, 0x9999,
 		"USB Card Reader",
 		USB_SC_DEVICE, USB_PR_DEVICE, init_realtek_cr, 0),
 
+UNUSUAL_DEV(0x0bda, 0x0153, 0x0000, 0x9999,
+		"Realtek",
+		"USB Card Reader",
+		USB_SC_DEVICE, USB_PR_DEVICE, init_realtek_cr, 0),
+
 UNUSUAL_DEV(0x0bda, 0x0158, 0x0000, 0x9999,
 		"Realtek",
 		"USB Card Reader",
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190603162049.1863-1-kai.heng.feng%40canonical.com.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
