Return-Path: <usb-storage+bncBC72VNFM2YHRBAH5X3DQMGQE3UD5YZQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F6BBDF639
	for <lists+usb-storage@lfdr.de>; Wed, 15 Oct 2025 17:32:19 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id d2e1a72fcca58-77f610f7325sf8608927b3a.1
        for <lists+usb-storage@lfdr.de>; Wed, 15 Oct 2025 08:32:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1760542337; cv=pass;
        d=google.com; s=arc-20240605;
        b=I2q6e5hqMEXtsX3XHGZnNbElBdXGEC/+rgbW0AIkfLm4YSGmlR9WmhMAMkAQEDHo6g
         QoPIy+DTp6E+IlbZJerVKlrK+s7YB/v1mX4DAEUf4VegNqDVOxE417sXhU00ueZ2FSJm
         zVwO+F59q2S4Jg09qKYIaNQXrGBywXdINYzgLekpluwYY71ysdPW9SvI1EAOhNN6+YUj
         vN9HGobZddqKtXd/df8R1R/ggKNUVdpwgsuPMEwnSJeLozif0lYijzxhKGGT/vpEnqxQ
         jeTEKikmmB4A1JwJg0sGx/Au2WcUXLLlpoxuWfPJcaoON8HjjptLaBsn9xJLlSvc+nng
         ImRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=uIAAy63rw7m8stZVRPd+mVxqJ4JDq9jze48dXj0GNLA=;
        fh=YjuDIBZtTGhCLNMGlswavYI4Six8KPZPJhI828vJu70=;
        b=RTf5b8j7xDMYQyHT+pzzu76oGZqLVA3jAr/z6r9RZTY1TVYEkafqNnSFRe6BdBFDEb
         yZxiuvaoQuF4vgQ030w8xz2U/cPToz7CMLE/aDcCy2Z7esgZ2eeEu9FnN7xT4kCzhOkN
         7YQsnKBAbr/Z2nFnGMjFioZyXMti6B4GZyKUCTnoxWzw1QEa6cxMHPursJyXrPEbMIWX
         0/+wOUDrVx+qY5LvDthoaO3MM0W4AEJIomNVzKMyV8DuFmyz5fpp6RPDSSjKHI24Yy8Y
         1SBW+yP9H979zCHmjVj/DW7TCeGg0R5AkhlEnp9nalOlgJ1uCivtL59m9GK5pF5L9s6R
         /y+g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender) smtp.mailfrom=guhuinan@xiaomi.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=xiaomi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1760542337; x=1761147137; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uIAAy63rw7m8stZVRPd+mVxqJ4JDq9jze48dXj0GNLA=;
        b=OA0ylHM5iXROHO4Bezdei4rUb8uc49lLr06JqIX8GrJzi3FC/aR0Prii1G0c/HdLqb
         8FdwmKnolIG3uIQnDwcjjMFdq/dBr9/43gH0jBGPRPJ7r82vdVT8fB7x1XUPRjUOlLCk
         RrdMGJ22tQqoPqe2c/kONaCnHwPT3KpInCNpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760542337; x=1761147137;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uIAAy63rw7m8stZVRPd+mVxqJ4JDq9jze48dXj0GNLA=;
        b=W6naaD7g5T/l580F9u6SxKMifTYLFN9u1hNRqlowwHWkFxB2SW6+RvZ1R/4APs/4Ne
         vd/qq2+GdNqykwNaEMyqfHIOLv6FxrDraABqPI7j4nnKbIEJk92jW150ggcbLLH++sBg
         WL/t/62QxsVzDwsMluC09V/2tGgX3XCUgEAZ7eNS7WJux95AfxLthxn9n/pa9btEg6bf
         cUol6EJCro6SpmyRFkvXEnfxPPVx4pcn2E9ayKDoDAws51bwfIiDp+/+6pFolSK0LdQ7
         dsqh9E65q8yZ5Xk8rLSTXKUKceAWFksK68GGvJG+y8IMQbuk6PwL71Y9ga6gKQmr2VoU
         AuFQ==
X-Forwarded-Encrypted: i=2; AJvYcCVOL083vbZ65LG3tYkEMTFWIKWCqsx6tJmu9HRjYgxQf8U3kImA9mqgMWu5EJ3EsNqAE4pVEg==@lfdr.de
X-Gm-Message-State: AOJu0YwqDVZjdZDPG6GtgVBAq1Hv1mAOpybDhB8E2IKQu+QGBq39lE4p
	LAeUXBCeWvAJYlCLGYCgXoEwQjOuTIfFGytyF4k1gwcakJ8szK1C1iSc+MyqPpzN974=
X-Google-Smtp-Source: AGHT+IHTRklNgU+dOLtakyDdQ1AWlzvbTaz87aiA7zazCsFgnoy4PiPZQXd9RQB1oRxVpByAEWLIIw==
X-Received: by 2002:a05:6a21:3289:b0:334:84e4:d4dd with SMTP id adf61e73a8af0-33484e4d817mr4409199637.15.1760542337306;
        Wed, 15 Oct 2025 08:32:17 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="ARHlJd7N8YWPhhfPVeFIXeP1+NuAGYNYClVTGEBXOlSAfnhY+A=="
Received: by 2002:a05:6a00:b84:b0:781:bfc:a449 with SMTP id
 d2e1a72fcca58-794ffeab44fls7936695b3a.2.-pod-prod-05-us; Wed, 15 Oct 2025
 08:32:16 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVjDjQm93aKcuqLZa0NVl1zEo6dAJS/3aO5P5ECljhadfuq392x8SMnYbKeFXMia5ZRdYuqWDIF8KNqhg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:2585:b0:2dc:40f5:3c6c with SMTP id adf61e73a8af0-32da8462b36mr39330043637.54.1760542335765;
        Wed, 15 Oct 2025 08:32:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1760542335; cv=none;
        d=google.com; s=arc-20240605;
        b=htQklGyszrnRiS6JdnzS8EbB3bdPI6AyLOcDsHKSCRJGSE6d+rGzcCHkYWwPyfpQy5
         W70yMC0Cv3MzVkgogl2QH9OcJnttygF4RAMFfzYg1ovkTA0KiotWNLfA6hERiobB7u/Z
         aZ/ZF0t5yOSiAYCheWWNRphgfjC07nXSkVZMxSFcVoiOgzksksdDN/qaI5+y73Z94gOR
         LmH8gpE/2Fuz4kWGwZI9Cucr5dMIVo9WZxUYWk9xfhnfbdCpZTGnh1tyaWkQS2ajLq1M
         yrYrPI4ROnF2BaS7in6ELvp3DGEWRKwL7irgg5ePPa14xZ1e7T82brey4MLWRTseE3I6
         3COg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=mTYZCjlwVvQC62ljzTypACuzBbfmpUKOOc3bfptrz/o=;
        fh=LpPz3O26DFT3N6SgV5rpSZQbv1j5P8r/8euYb2Ay71g=;
        b=ULtsup0wxr4rcwhlBt4BZcIyvYwgV0OBR7sJ8Qx4SomuH4Ar4oaZd/oT1t+TdUndVB
         LCIzhEXQw3ev2L78+/N+GG3TTcPGPFMyP9efwShBGHff2iQ6Xisx5K4SHkSpHTRAij2Q
         k7vrFWoJaQ+IxRPdUZBeM28tcLbD4icgFRJpww3FlkchTN5jYK3xN1Wl7DJ1hLX/AFoj
         yT+mKRA3yzlJ7NCUSscfiGOJksEjcmDCPpABRwaXETMgyhsgSQXxEZS1sEXlg4ilxPCq
         TygL5w1+bepkFU66lSf1LbZcbKlTUVZD+J7eN1ytUISs+mCxbnxpmae/lO9v1ARfCJbx
         htZw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender) smtp.mailfrom=guhuinan@xiaomi.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=xiaomi.com
Received: from outboundhk.mxmail.xiaomi.com (outboundhk.mxmail.xiaomi.com. [207.226.244.123])
        by mx.google.com with ESMTP id 41be03b00d2f7-b67904a46d0si9191231a12.1463.2025.10.15.08.32.15
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 15 Oct 2025 08:32:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender) client-ip=207.226.244.123;
X-CSE-ConnectionGUID: GjiV+sT8QtucxSoaq8d7bQ==
X-CSE-MsgGUID: i0SVS0lTTu2qE0nuwMSogQ==
X-IronPort-AV: E=Sophos;i="6.19,231,1754928000"; 
   d="scan'208";a="155387784"
From: "'guhuinan' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Oliver Neukum <oneukum@suse.com>, Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: <linux-usb@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>, <linux-kernel@vger.kernel.org>, "Yu
 Chen" <chenyu45@xiaomi.com>, Owen Gu <guhuinan@xiaomi.com>, Michal Pecio
	<michal.pecio@gmail.com>
Subject: [usb-storage] [PATCH v2] usb: uas: fix urb unmapping issue when the
 uas device is remove during ongoing data transfer
Date: Wed, 15 Oct 2025 23:31:57 +0800
Message-ID: <20251015153157.11870-1-guhuinan@xiaomi.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.237.8.163]
X-ClientProxiedBy: bj-mbx11.mioffice.cn (10.237.8.131) To BJ-MBX05.mioffice.cn
 (10.237.8.125)
X-Original-Sender: guhuinan@xiaomi.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender)
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
usb_kill_anchored_urbs(). The uas_zap_pending() iterates over
devinfo->cmnd array, invoking uas_try_complete() for each command to
finalize their handling.

Signed-off-by: Yu Chen <chenyu45@xiaomi.com>
Signed-off-by: Owen Gu <guhuinan@xiaomi.com>
---
v2: Upon uas_submit_urbs() returning -ENODEV despite successful URB
submission, the cmnd is added to the devinfo->cmnd array before
exiting uas_queuecommand_lck().
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20251015153157.11870-1-guhuinan%40xiaomi.com.
