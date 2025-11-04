Return-Path: <usb-storage+bncBC72VNFM2YHRBYVUU3EAMGQE4XQ5RLI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC04C2F6BF
	for <lists+usb-storage@lfdr.de>; Tue, 04 Nov 2025 07:17:08 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-3418ada9e6csf54883a91.1
        for <lists+usb-storage@lfdr.de>; Mon, 03 Nov 2025 22:17:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1762237027; cv=pass;
        d=google.com; s=arc-20240605;
        b=U0zSIZQoBi0yMInGI2+2HG3NfyoBrDONGp80V58M6yfVp0a6rPkEwKmwXyLMaAuMzY
         HKwf7Z7k2Bolooc0s/ZphyYKKHt38PE7pkXluvo9dGQ93S5yeJ56dxFou2NEVbuhoiwY
         IuPJvQvz9C/cceBVkmJHzAsZjg5rKEvegRohgD2QxfVdkbF9QOaBrokiw0SCkD9Ov2g4
         UyQtu4bvujR3n1NEpo0HTGxYa1r3K3ZSHe6zVUeiNtTlGBuAa2OZlaDofRKwbFz/nRy4
         RQwB1jwXkeizZa/ngT1jOp47gBkbxrk0wwAXTvIMp0sRoYon904kxZFTribSxTnarX91
         91Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=05hKRmig93GevYx1vg2mrutlob30bf3zw/KjzvgZQ5A=;
        fh=bzDpyM/MDs8kF1yd0Xol+rJ1iwPfPF3jsRWHgNoL8GM=;
        b=XGpYtWHKWTLnOO6Zu9UdP1CMGTvqpR2V1NOxzkzMLDrD0uMdBHCy5Ky7gLXkLr9gGL
         o2Mdq2vw6T/O1OvB/LXcJypVMNZhK2dX5YZXEQH1AvnhM0wnCx7XcIbEy4EJ0iHX4TaU
         WmYwJENJlaSrrx/JOcjzHHI3J0HgOakqRY2Biqz5aoKIoW70LaRBfhsvuGluRdjZ1N+S
         vETzTyWBhXUkguyYvs9ejECrRHu2QglzlZmt5SEis851Xq8B87t9S1lQxd5gwTayQ02G
         n+4kUGkisv+/YeIDKGJsPHpwu4WQMkZTLHb8RcwXJ871J5zHM0SVdmJHzzifznk5RXEk
         06oA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of guhuinan@xiaomi.com designates 118.143.206.90 as permitted sender) smtp.mailfrom=guhuinan@xiaomi.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=xiaomi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1762237026; x=1762841826; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=05hKRmig93GevYx1vg2mrutlob30bf3zw/KjzvgZQ5A=;
        b=c1hAXtDsIqZJQxr/etlI+Q8hO1Nag+w0xR0Bm7WP3h/S2SMKxOD1U1FGubhueyZQ4d
         etCH0CtqLxYN7Aat5yLnkjiGTo0OghAlLwbY0KKBo8h6LXzuhpIGzYJH+gIRQwWXRPkD
         uSn8SkuMjcdmVoUpXODF3tGvRtyjjb101S+JE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762237026; x=1762841826;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=05hKRmig93GevYx1vg2mrutlob30bf3zw/KjzvgZQ5A=;
        b=fXAPMjptfVx7zNTpF+e6augLGvIXs1Xh0bEIBCHUW3/xF4nM+J9EYjvVW1b5Mv9Ejt
         u+S0m45qlUy/s2D30WtYZgdadOKUKUpqZWpdw4Ypju0Ptz+tr6816D7ckkNlnHCVSMhu
         mFN30uYs83cfG6X6qppJup2Nt4iAiySEjrm2y2xoPYzaQx3cNfZXxAbjTRafmGeDwnuh
         rhly9s+JTH+FNTtA2PePPNsNcXiuWnL74zA4RTieSYoay3XlKWnGUKWmNOT1mDBTT/RI
         F1BCxh/NPOMH0hR2OndK3CWIb536no5nR/x99GdZwj5k20OpaN5WSP9XOyfFUZeTKTWU
         zNfQ==
X-Forwarded-Encrypted: i=2; AJvYcCWhuuEaCGDh5X01r0aFyADU4quKq8Lx/xnphYtSXr8lCIrv1ugnQSngzfQFH5D1psk5KJNKuw==@lfdr.de
X-Gm-Message-State: AOJu0YzCmo1qnjHqqLMdkIxRtV/cYZ6B6ujcQsMx/6/6sCMlQ9SRrtH4
	27rbp2XltlQeoNyVfJC74NJeCOUXKjzpuWLdi1/E9oAmyJrOuDH6GBiadvgKQF9T2BQ=
X-Google-Smtp-Source: AGHT+IEN+gcBZaAuUgx5vP/j5qzfsEpcYT/TJi10beGJE0A9qhVlufoRLPxoW1rb1GHzd6RVNnCpjA==
X-Received: by 2002:a17:90b:3903:b0:341:34eb:1be6 with SMTP id 98e67ed59e1d1-34134eb1d81mr6695244a91.27.1762237026452;
        Mon, 03 Nov 2025 22:17:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+YpMlfkVn/dQlgUC0zEArJZZKcHygPyPeU05tobL1y+YA=="
Received: by 2002:a17:90a:db56:b0:340:bec5:e9eb with SMTP id
 98e67ed59e1d1-340bec5ec53ls2697665a91.1.-pod-prod-04-us; Mon, 03 Nov 2025
 22:17:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW7UvT/w7x1P3vlFzzXcxfEEU0wOmclzCCYpugukIoWYoDLUbNXK5XLrylSt9bC+w+JgHR49LBgmHSVlw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:a123:b0:340:c5e1:a1fb with SMTP id adf61e73a8af0-348c9f67060mr19608496637.7.1762237024797;
        Mon, 03 Nov 2025 22:17:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1762237024; cv=none;
        d=google.com; s=arc-20240605;
        b=Fm8cXCnABxw5ClNNMAKPGU3PmJsgtmOLSgAndY01iNzw6TyptNjJwOPd2mrFps/tKp
         updp0oK6fp4kLXeIYYDBsCMpQS6xcw8xAtnkox5vHqESlAe2sp42qXKv1dNQdWzZZm3H
         84k2EauJEe12WxcbO7OQXTtoY/JtuyZC7yJzAKfTUQCpVDWYrpX6JrmmVMnuUOqJum8d
         llEOjVdul6vXepJTo64AvDYN+EcsEX/BdrdIEhwrIA7jY2boITUXr4JBndFCPQqvaJUf
         ueWTAw36cX/avlXEUtMwTh8ltO+/JYj0NscI3JZtHqj6hCfs2Hlo0PPp5Oe4fAQGcT/G
         uHFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=1T2/UsUr2FnN/QuK3MXcGkKMDqJSTsEo8aBA5sC6awM=;
        fh=LpPz3O26DFT3N6SgV5rpSZQbv1j5P8r/8euYb2Ay71g=;
        b=WHGjARgAwmHXihgKZ69fVYvkCCESksz/s8X0I7y4Dyt+79BD/Wd8we9GhukvukvbMa
         BTQEKzX0zwp51/BL6eZ3GIb6gpEpx/2v4Ndu2r4+0094VAsw5UDvnDwtPrHmYspJdLfJ
         ykywsw6BKjv8BLwMtslRdoTR8vDuLDcZuFvUJqZrC/DkJpvRU96tsJlbdF2nZPM6EuXS
         MQMQLl5W3HBEpjB6j6iO85CV36fylwAd1RdP9pCc+VlDVEvkcM30zm64dlUYpy2cWW+n
         W2mzKzsXtbm9cimGBUSu/5y6Vja8oRkrG8DRyWbK9Doa4TtdHmdOzBPw6hOePjnTxnmY
         MOrA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of guhuinan@xiaomi.com designates 118.143.206.90 as permitted sender) smtp.mailfrom=guhuinan@xiaomi.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=xiaomi.com
Received: from outboundhk.mxmail.xiaomi.com (outboundhk.mxmail.xiaomi.com. [118.143.206.90])
        by mx.google.com with ESMTP id 41be03b00d2f7-b93bf4552e7si6266810a12.882.2025.11.03.22.17.04
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 03 Nov 2025 22:17:04 -0800 (PST)
Received-SPF: pass (google.com: domain of guhuinan@xiaomi.com designates 118.143.206.90 as permitted sender) client-ip=118.143.206.90;
X-CSE-ConnectionGUID: uTZkr/3MQUG+47Bde253qA==
X-CSE-MsgGUID: ntsweP9lTCCwZ0Kzgx7tzQ==
X-IronPort-AV: E=Sophos;i="6.19,278,1754928000"; 
   d="scan'208";a="131456660"
From: "'guhuinan' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Oliver Neukum <oneukum@suse.com>, Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: <linux-usb@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>, <linux-kernel@vger.kernel.org>, "Yu
 Chen" <chenyu45@xiaomi.com>, Owen Gu <guhuinan@xiaomi.com>, Michal Pecio
	<michal.pecio@gmail.com>
Subject: [usb-storage] [PATCH v3] usb: uas: fix urb unmapping issue when the
 uas device is remove during ongoing data transfer
Date: Tue, 4 Nov 2025 14:16:07 +0800
Message-ID: <20251104061608.1336-1-guhuinan@xiaomi.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.237.8.166]
X-ClientProxiedBy: BJ-MBX17.mioffice.cn (10.237.8.137) To BJ-MBX05.mioffice.cn
 (10.237.8.125)
X-Original-Sender: guhuinan@xiaomi.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of guhuinan@xiaomi.com designates 118.143.206.90 as permitted sender)
 smtp.mailfrom=guhuinan@xiaomi.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=xiaomi.com
X-Original-From: guhuinan <guhuinan@xiaomi.com>
Reply-To: guhuinan <guhuinan@xiaomi.com>
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

From: Owen Gu <guhuinan@xiaomi.com>

When a UAS device is unplugged during data transfer, there is
a probability of a system panic occurring. The root cause is
an access to an invalid memory address during URB callback handling.
Specifically, this happens when the dma_direct_unmap_sg() function
is called within the usb_hcd_unmap_urb_for_dma() interface, but the
sg->dma_address field is 0 and the sg data structure has already been
freed.

The SCSI driver sends transfer commands by invoking uas_queuecommand_lck()
in uas.c, using the uas_submit_urbs() function to submit requests to USB.
Within the uas_submit_urbs() implementation, three URBs (sense_urb,
data_urb, and cmd_urb) are sequentially submitted. Device removal may
occur at any point during uas_submit_urbs execution, which may result
in URB submission failure. However, some URBs might have been successfully
submitted before the failure, and uas_submit_urbs will return the -ENODEV
error code in this case. The current error handling directly calls
scsi_done(). In the SCSI driver, this eventually triggers scsi_complete()
to invoke scsi_end_request() for releasing the sgtable. The successfully
submitted URBs, when being unlinked to giveback, call
usb_hcd_unmap_urb_for_dma() in hcd.c, leading to exceptions during sg
unmapping operations since the sg data structure has already been freed.

This patch modifies the error condition check in the uas_submit_urbs()
function. When a UAS device is removed but one or more URBs have already
been successfully submitted to USB, it avoids immediately invoking
scsi_done() and save the cmnd to devinfo->cmnd array. If the successfully
submitted URBs is completed before devinfo->resetting being set, then
the scsi_done() function will be called within uas_try_complete() after
all pending URB operations are finalized. Otherwise, the scsi_done()
function will be called within uas_zap_pending(), which is executed after
usb_kill_anchored_urbs().

The error handling only takes effect when uas_queuecommand_lck() calls
uas_submit_urbs() and returns the error value -ENODEV . In this case,
the device is disconnected, and the flow proceeds to uas_disconnect(),
where uas_zap_pending() is invoked to call uas_try_complete().

Signed-off-by: Yu Chen <chenyu45@xiaomi.com>
Signed-off-by: Owen Gu <guhuinan@xiaomi.com>
---
v3: Add some commit message.
v2: Upon uas_submit_urbs() returning -ENODEV despite successful URB
submission, the cmnd is added to the devinfo->cmnd array before
exiting uas_queuecommand_lck().
https://lore.kernel.org/linux-usb/20251015153157.11870-1-guhuinan@xiaomi.com/
v1: https://lore.kernel.org/linux-usb/20250930045309.21588-1-guhuinan@xiaomi.com/
---
---
 drivers/usb/storage/uas.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 4ed0dc19afe0..45b01df364f7 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -698,6 +698,10 @@ static int uas_queuecommand_lck(struct scsi_cmnd *cmnd)
 	 * of queueing, no matter how fatal the error
 	 */
 	if (err == -ENODEV) {
+		if (cmdinfo->state & (COMMAND_INFLIGHT | DATA_IN_URB_INFLIGHT |
+				DATA_OUT_URB_INFLIGHT))
+			goto out;
+
 		set_host_byte(cmnd, DID_NO_CONNECT);
 		scsi_done(cmnd);
 		goto zombie;
@@ -711,6 +715,7 @@ static int uas_queuecommand_lck(struct scsi_cmnd *cmnd)
 		uas_add_work(cmnd);
 	}
 
+out:
 	devinfo->cmnd[idx] = cmnd;
 zombie:
 	spin_unlock_irqrestore(&devinfo->lock, flags);
-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20251104061608.1336-1-guhuinan%40xiaomi.com.
