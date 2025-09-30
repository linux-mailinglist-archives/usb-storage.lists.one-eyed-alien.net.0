Return-Path: <usb-storage+bncBAABB2OS5XDAMGQERLTUHHI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 011B1BAB771
	for <lists+usb-storage@lfdr.de>; Tue, 30 Sep 2025 07:23:54 +0200 (CEST)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-78efb3e2738sf109581696d6.3
        for <lists+usb-storage@lfdr.de>; Mon, 29 Sep 2025 22:23:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1759209834; cv=pass;
        d=google.com; s=arc-20240605;
        b=ZxRcv39nIKSrtwpncPpvOldcRnKXqvZ9bmZPiLZywhKzzgf8+cEvJnF+GNB7yAV795
         YKH8pgDpT3GivP6AacAEAZz7c/zcVonSITqTyBEAU8wrwxp3b4Aw2t0VR/mSX8V6yi0X
         jEy0ym4qUEQc2y+m4IsEKUvki+MsAxK3zoATu+rZ6KAwTr6S2yD/xXMMoUyGzkuHufTf
         BPRHYQoPy+vuhLzjSmVePKGI26DPngykvYeOLrGRMpHnj9arY35HWDFAm+GLRUBy68Ya
         1Sq9uvfw8jUyhwSxtCAwcZjtHhBd/lI+E8ElLX1zfcpy1rBaZHAQviKhpuGRAuEktgjK
         teiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=i/i9tP9z+DtCoeqR8ermuAGNrG8k4k+g7o2KPsmRD64=;
        fh=wkl9IDcz+h/Ox/HfA+aQzT8guMdw/BRS1xWIPec81is=;
        b=cHtXZChc7ABbF9tt3xqlLyMbnIzCpSN6hHNY2kUrpolDUhZu00rCJMKHCWgZJ9YddU
         3p5f0rNhl/LENWGazUUDjIzWtFeJF32GjzXRLCn+JKNCIg25kF9zhGPYGZGmwvTwkIaj
         +Wmc44IUQnT+S471Hxqure5HgO2+CfYhIeijPUg8nUbgBuBo+F7TwsQTaOY+iNUnAxmU
         j0ZsIi6YInR4lxV9ezCQvMdztezHHHFi6Ot5OBFmsd5akoxEz8Z7HJ+bXOB6MfpYqKIU
         QMyaepgRAofu5aKEhZ2YjOOhHRUdLmnYrk4TOh08uKvVLhhRbr/awfnZS92T/eQC3T7w
         mjCA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender) smtp.mailfrom=guhuinan@xiaomi.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=xiaomi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1759209834; x=1759814634; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i/i9tP9z+DtCoeqR8ermuAGNrG8k4k+g7o2KPsmRD64=;
        b=fn7eiiIGHnUJ8xGXFXT4ostidfS5o/dv9WwtSur7bGc/KT7/nYSwk18yADCLtkwk4+
         Tbc3VLohlBGjkGn5LpBBNi80Etkb6gbwDCR4/ar2r8DwVhgxk0FoozMnNMAI/zrXFDf3
         sbvcbQVcDyUqZUpYPAVl8uCkVo5yNpv2MDzOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759209834; x=1759814634;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i/i9tP9z+DtCoeqR8ermuAGNrG8k4k+g7o2KPsmRD64=;
        b=Dxt/2MB4bDXVcDfnfR48P3dh0hyP+DS+5YHeYsqGidJZ/XA7L5t2v7WkPZYBuiFQcM
         H+UcNRXfrEIqkbRj+xNeSjWoJmLI2wBA/7Aj+Pa4R49Cl1Fpia6ayxlBwX2VwQuTJFdz
         EkZdVJoLRsISVkD76Mfl7ADbRE0X13/hUEWHXJ8dwfTZT9EjEGiBn80f3Hu78hJwUMyg
         OtxOFjrpxRPZAfUb1cb/4gJEDFvxyqiKtMsU0fZcnZZxhhSjLeBG3C4JsQ5kZ0y7Xj5V
         CkYt7m/wM94VQHM2EIDNhBpnnoUcnHYUJrB5KZOJoWbZ4WjEpCTQZlpqLytA5WZHa6p2
         yGgw==
X-Forwarded-Encrypted: i=2; AJvYcCV86RejP4dHeOepJKQVbXZ+ThDTj/34me5d0eu7CWG91SJAHmqmZ/+z48s0oVvA0bmibdY6Gw==@lfdr.de
X-Gm-Message-State: AOJu0Yzl6SyK7MfjJ5WRr06IxkM0oe9U/n0+7tjfFk8DUe5TFBMSc6gd
	45AYF8+7ZKBIZD6pFg7jCtjupgvegQaw6M791cQ68UCUbZlruNaWhwPd+ikNln2luKs=
X-Google-Smtp-Source: AGHT+IFgpCKUQcSc704XAchYis+0ibDUEK1cQSM0PEKuY7EaR5N2LfqFHB6LgKnQqJ4k4Kxoo2FxuQ==
X-Received: by 2002:a05:6214:230b:b0:70d:f9d0:de72 with SMTP id 6a1803df08f44-7fc45d11cabmr159703896d6.61.1759209833667;
        Mon, 29 Sep 2025 22:23:53 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="ARHlJd5YtsF8Hm/cBS9/Ab6/9T2gR+LuKCgJbksv6tjaBe+H2w=="
Received: by 2002:ad4:46c7:0:b0:70d:b7b1:9efb with SMTP id 6a1803df08f44-7fd7d04713als16740176d6.1.-pod-prod-07-us;
 Mon, 29 Sep 2025 22:23:53 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU9eldUjo1Q3xIIMLvOujD8LofAB4HA22MdjhsTqA+Wakn3n9uznJ4sr3fey+DIVVrP5sdYpRvaDs7Jag==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:28d1:b0:863:696d:e368 with SMTP id af79cd13be357-863696de6acmr1444848385a.83.1759209833193;
        Mon, 29 Sep 2025 22:23:53 -0700 (PDT)
Received: by 2002:a05:6808:328c:b0:3f9:f009:458e with SMTP id 5614622812f47-43f5e29f285msb6e;
        Mon, 29 Sep 2025 21:54:27 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVAXtkPGgUmlPM59OeAHq81YCFIQiQCx2f0Q4JVNAJG8TC510B56EDjK1fOXmFvWD8C8/MQkpTioxxxog==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:d60d:b0:269:8edf:67f8 with SMTP id d9443c01a7336-27ed4ab6084mr207281355ad.52.1759208066483;
        Mon, 29 Sep 2025 21:54:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1759208066; cv=none;
        d=google.com; s=arc-20240605;
        b=YM1nsKF4jZxGOD4IZf9TmYN6bPLLKgfo+6SjTsQPsiogAvM6WJps8ZsWWRDKzjAVYo
         ky6tkfHZ0nZhpiagDppbyxkA6SQWlnVAi38sS6pd08j95YMma545NcGRr80afAKh9gyt
         AtT6KKLVatTln1q2I2VdTF/o9OynI07jeW4LYII+OO8KF8GVCuUb2ci2VQN3c2ly2ydH
         +4IP6PD4kF9nSB4sYqZIUIQFWjzfcSBFcDH71g1QVSdTrChT2nSqoRtouG9k9/8i4X8v
         8e0qHvL0xmDyz2nH9inH8OJZ4TAETfDr95PW6s4O8PlAWI6kD4RKE5fuJXvO+8/nhJgi
         rONw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=6VUYSwjpXxJIGCD2L+Qr8xVqGWK/5r1g4jMGHhwpfQc=;
        fh=ISUAvlSvFAl1UJ5K6zMkN94NKief12SkMTtfy9IQSC0=;
        b=iRkn6VF6cC84t5d4zaHzkVBnvHWm5SzJF9uY+BZV6OZ7iNYIwYPNtjcGR/fLot0ovS
         E+Xm0AoY3pT9v5M/WtCFKU7sKZ4qXk5OTkeDdrVPkCoMWIIaz+QMBu2bNeTMMzv+gyCS
         eI3+ApcUBEbXlTho3fyn3N9ZE6wPpYeWjZ4jcUUamfDa2+xAcUZpdteZwOpHKgCnSfcB
         my55YGisjmQlEsvVKYKQ3mMIy3QYYDRuhrETv7PJRZ47+qozu0M5/41PMfzBP9ZVjqot
         bt8/7BbsfRbtlJAcOZWc6jwvctqNr4UCbpwtV3CjN3AZnaSTLzymdK0PBti7ArybHgo2
         tp7A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender) smtp.mailfrom=guhuinan@xiaomi.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=xiaomi.com
Received: from outboundhk.mxmail.xiaomi.com (outboundhk.mxmail.xiaomi.com. [207.226.244.123])
        by mx.google.com with ESMTP id d9443c01a7336-27ed69bf9a4si81318595ad.400.2025.09.29.21.54.25
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 29 Sep 2025 21:54:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender) client-ip=207.226.244.123;
X-CSE-ConnectionGUID: EVtpDxrPSqqcFC7xE6im6Q==
X-CSE-MsgGUID: SnU+0+RdRwuxkDHoijzSaQ==
X-IronPort-AV: E=Sophos;i="6.18,303,1751212800"; 
   d="scan'208";a="154003711"
From: "'guhuinan' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Oliver Neukum <oneukum@suse.com>, Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: <linux-usb@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>, <linux-kernel@vger.kernel.org>, "Yu
 Chen" <chenyu45@xiaomi.com>, Owen Gu <guhuinan@xiaomi.com>
Subject: [usb-storage] [PATCH] fix urb unmapping issue when the uas device is
 remove during ongoing data transfer
Date: Tue, 30 Sep 2025 12:53:08 +0800
Message-ID: <20250930045309.21588-1-guhuinan@xiaomi.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.237.8.166]
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
submitted URBs, when being completed (giveback), call
usb_hcd_unmap_urb_for_dma() in hcd.c, leading to exceptions during sg
unmapping operations since the sg data structure has already been freed.

This patch modifies the error condition check in the uas_submit_urbs()
function. When a UAS device is removed but one or more URBs have already
been successfully submitted to USB, it avoids immediately invoking
scsi_done(). Instead, it waits for the successfully submitted URBs to
complete , and then triggers the scsi_done() function call within
uas_try_complete() after all pending URB operations are finalized.

Signed-off-by: Yu Chen <chenyu45@xiaomi.com>
Signed-off-by: Owen Gu <guhuinan@xiaomi.com>
---
 drivers/usb/storage/uas.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 4ed0dc19afe0..6bfc7281f7ad 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -699,7 +699,9 @@ static int uas_queuecommand_lck(struct scsi_cmnd *cmnd)
 	 */
 	if (err == -ENODEV) {
 		set_host_byte(cmnd, DID_NO_CONNECT);
-		scsi_done(cmnd);
+		if (!(cmdinfo->state & (COMMAND_INFLIGHT | DATA_IN_URB_INFLIGHT |
+				DATA_OUT_URB_INFLIGHT)))
+			scsi_done(cmnd);
 		goto zombie;
 	}
 	if (err) {
-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250930045309.21588-1-guhuinan%40xiaomi.com.
