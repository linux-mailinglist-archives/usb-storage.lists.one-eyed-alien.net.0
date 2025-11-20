Return-Path: <usb-storage+bncBC72VNFM2YHRBXEV7TEAMGQEMHFUCQA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id C21C0C73FB2
	for <lists+usb-storage@lfdr.de>; Thu, 20 Nov 2025 13:34:38 +0100 (CET)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-295915934bfsf15720365ad.0
        for <lists+usb-storage@lfdr.de>; Thu, 20 Nov 2025 04:34:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1763642077; cv=pass;
        d=google.com; s=arc-20240605;
        b=P/V0GEMdxLPaEJiw+EL+SvL4+/264DsEpE0cLE2lmpkissmWmfpi7q1b9oZO9p1h3x
         A9rKmqu90mfOQLArc24Drh6KaFNJYKbvbD9Tt2a4afj/DCZluXQxVKLD068BSvOz6VDa
         2TmnJoNnSndWFLd2hYzsqyyoR3BLlFZHl3fVgCPA+M89CrEcAp5i7qOGX1D+jicv1NOo
         a5hJhXm5TUqj+EKv/OzW7qTNZDYNC6oxaSl3WwQhnLzU7V0tbdUpXm9Zg889a8kQDSkR
         zto80rFDi83QYOVPHBgaI7+Sqn1CoX+ALZILR0/YDCAL25G5hbbLgfROnCmFmDUfUTc4
         QW8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=7/7fqHqg5PYz/WpPVXB8CMXTpwsyn/Cw1tWMsj9btCI=;
        fh=QtAlAQzXDVbf/ZinNWSJFm2uyi3JWr7EUdL19zvJQNk=;
        b=ZClq40jyOqHNBO5EZ/YWLazYdnF2/8bnLRu/+ilSiBQlyMBwAktNxvaM9Lo3/Mkya6
         PGPxzUmrLI0jzrIcTDxJHyq+uFOBPMp5ZmeNcrMa+qWr44bshnrRDKuDDjUnBNnqn0pn
         E5TxOeYTwgRC/YhNzhydskL48aqqwfJH/21k/LN8S/sM78CQUisP9W0o9RqL3bIzXOoB
         7Wl6GpBJMCl70ebGK8vo/igFYMtOa2XA7bJsS74qOYYM1U09liS4RKVM7CH3FNhmRgco
         KYEq0cInydGQAaW2ZQwkUKpB0QrzOyXEf8vbJF6My4P+QfECss6lYKFtdmyNCDJZ4CKP
         yVzA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender) smtp.mailfrom=guhuinan@xiaomi.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=xiaomi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1763642077; x=1764246877; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7/7fqHqg5PYz/WpPVXB8CMXTpwsyn/Cw1tWMsj9btCI=;
        b=U74R+qv/6gzl7bmknuA+pb6tCNDYc1eGePsMtZUcg65UpXfybrQXBloUWgrbDxmCAY
         kqyw75umgXjKzlSDZ5J6nzTlUZtScLfy5xBqWtgf+RYI27V9oOtt5/19VEGHLTQFGV9/
         J4h2JPsTZB1HtMs+m3+sN4tzenp77a7Dv1wAg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763642077; x=1764246877;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7/7fqHqg5PYz/WpPVXB8CMXTpwsyn/Cw1tWMsj9btCI=;
        b=P6NRRehpT4lbAUI7LXVKijkwAmIj292ntbE7PUYOrPz7UOOOzoyEqpsLuEWFKcxUv+
         3K3MIEdmb32MSGd64Ich4/Sh9RpdPcy4j9PpeH7mTKn2sjaIup6uR0SYFYtwVMMvw9vc
         0S5+Xg4ICgB5SDtd9VG7j0LE2tijo1HLRh7diwl+AZU81cAc3hu5KwYx1UEcfKWi1HB0
         Ue2izjpLFz6r0balDMMJhoLx72CT8owHmdnbg1wp1q7lV1L6XGSb0FnIX0042Lki5US2
         N0JfSXn5X704VBret5oic3zyXjK803dJrsjIeZ7ilW01MfnHY6xRUEp67ojj3sFwZFVc
         CFdg==
X-Forwarded-Encrypted: i=2; AJvYcCWYNCsr+eeIp4kLe00Rn+pOZsb8BUGgx/aXGijvAqp3fYyxBtFDJvu/bbtnIgXqnTcc6PKAjw==@lfdr.de
X-Gm-Message-State: AOJu0YwMeLeDgqC6tPv91AXBYUWkefl8/H/MA4HHxDlRJ9/URY+XqOlK
	mFx5sOJKMY8KonY/O4/ZCZsHZjysdzgRrgxNDJkKwhWJSVxIUCP+7sKn79BjgtkXOVs=
X-Google-Smtp-Source: AGHT+IHS5PeufaiazSLdz69bSME9bu3e2wpcbSyDl7en9CsCRQisXCDPcWWsE/QVSfWBvvnpMbdQ+w==
X-Received: by 2002:a17:903:46cc:b0:29b:5c78:8bea with SMTP id d9443c01a7336-29b5c788c84mr39142775ad.33.1763642076863;
        Thu, 20 Nov 2025 04:34:36 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+Z9jAOWvFva9rhTphViaYb7t/BXaTj51E8jrgO0mj/2PA=="
Received: by 2002:a17:902:9042:b0:268:589:fe0b with SMTP id
 d9443c01a7336-29b5b022969ls7568795ad.0.-pod-prod-06-us; Thu, 20 Nov 2025
 04:34:35 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXue2O/KhLrecubr8WH+MufhJRRHEEs7yTyhGMHxCenZcmF1P8ETHJZyMBz/TaEjO9BWnaESS+RV7W7sQ==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:1b47:b0:24e:3cf2:2453 with SMTP id d9443c01a7336-29b5b15c739mr41661775ad.61.1763642074757;
        Thu, 20 Nov 2025 04:34:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1763642074; cv=none;
        d=google.com; s=arc-20240605;
        b=fKHnymRcSczCI+rfz01CJoGuMJUZUBmLN2Afptkwns127UuHvj4SaaCIpUGn9XzvHE
         5Ykf+q2wNFGh8Vxf8JszPILEBwL65pdtOvqQtlrMyhD7nFvg5DDqxSPKrgsgjjcvhOkm
         X4Yn4lxlzLqVIgmbfDzl7/M3TweHiZHYTbdBqPAaxk1QzbWbBBasy+PpXf7pYYTcmLSf
         H5jyHsHNSoMikFb4Rg+LmNX7J9dAP/fhCNBWFeuvaAIKAdpLOyLtAC9oR2ppxe5oDvw2
         11e1ut2drSNuuHxIFkTGFInVFC6d9NtyftJv03JgTjtxY6Bo9U77vP/p+zshD+AV+Qj2
         BfUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=IDEGSXW3l+CkiMo+wSMLFxaY3Tyw/l1Tehw8Ay7RSxs=;
        fh=v94FNRvBb47LgOkR97WCva0nH0KLqJ0TgbG7t56OpSA=;
        b=a9xOPOk2ocdT6C///xuBLT8kp/7a6DvQ87KoJUwlEkI5NidZ9Mb5HHQTycNY5uNOun
         HwVD9PJgWOoRVyDWEWKr5akK2uQk27wpTJovGtqXY0NI+YcSh1CTlz9SLs+mHQOhkcjB
         zG3J/Rmw0/2Z9G/qCA6zFnRtrAQtMjmer8PX0BugpQrfgcsHpK+tsuaUAYdH59nbhfsr
         UvNI1XH3jzyUEW2y6RJPoG4c3cLIioIMMxI//p0fTV0XNNFhmGGGfQO+ptNWqDJ2GX/0
         LzqRCBxFMAXZz+xj6T6rLxmNhNZKrFf5yGSGdSjuqiPwmKiaP1S4eW3JcjgQTQYLVmBs
         aSIw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender) smtp.mailfrom=guhuinan@xiaomi.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=xiaomi.com
Received: from outboundhk.mxmail.xiaomi.com (outboundhk.mxmail.xiaomi.com. [207.226.244.123])
        by mx.google.com with ESMTP id d9443c01a7336-29b5b1c93e3si12593575ad.252.2025.11.20.04.34.34
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 20 Nov 2025 04:34:34 -0800 (PST)
Received-SPF: pass (google.com: domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender) client-ip=207.226.244.123;
X-CSE-ConnectionGUID: I9S4tjiGQ7WW3GG6Ca6ONQ==
X-CSE-MsgGUID: JD2+mL9rQqCt5e1vO6uGnA==
X-IronPort-AV: E=Sophos;i="6.20,213,1758556800"; 
   d="scan'208";a="158953641"
From: "'guhuinan' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Oliver Neukum
	<oneukum@suse.com>, Alan Stern <stern@rowland.harvard.edu>
CC: <linux-usb@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>, <linux-kernel@vger.kernel.org>,
	<stable@vger.kernel.org>, Yu Chen <chenyu45@xiaomi.com>, Owen Gu
	<guhuinan@xiaomi.com>, Michal Pecio <michal.pecio@gmail.com>
Subject: [usb-storage] [PATCH v4] usb: uas: fix urb unmapping issue when the
 uas device is remove during ongoing data transfer
Date: Thu, 20 Nov 2025 20:33:36 +0800
Message-ID: <20251120123336.3328-1-guhuinan@xiaomi.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.237.8.164]
X-ClientProxiedBy: BJ-MBX19.mioffice.cn (10.237.8.139) To BJ-MBX05.mioffice.cn
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
usb_kill_anchored_urbs().

The error handling only takes effect when uas_queuecommand_lck() calls
uas_submit_urbs() and returns the error value -ENODEV . In this case,
the device is disconnected, and the flow proceeds to uas_disconnect(),
where uas_zap_pending() is invoked to call uas_try_complete().

Fixes: eb2a86ae8c54 ("USB: UAS: fix disconnect by unplugging a hub")
Cc: stable@vger.kernel.org
Signed-off-by: Yu Chen <chenyu45@xiaomi.com>
Signed-off-by: Owen Gu <guhuinan@xiaomi.com>
Acked-by: Oliver Neukum <oneukum@suse.com>
---
v4: Add the fix tag, cc stable and acked-by tag
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
index 03043d567fa1..02fe411567fa 100644
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20251120123336.3328-1-guhuinan%40xiaomi.com.
