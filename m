Return-Path: <usb-storage+bncBCFIH5VMRQNBBFUBUGXQMGQESDLLECY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AE287339E
	for <lists+usb-storage@lfdr.de>; Wed,  6 Mar 2024 11:08:24 +0100 (CET)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-59fb2af0267sf6435068eaf.1
        for <lists+usb-storage@lfdr.de>; Wed, 06 Mar 2024 02:08:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709719703; cv=pass;
        d=google.com; s=arc-20160816;
        b=LnKO53L35b1QKHbtItJsloDHfO3pXv5VNVMP6m62KJ4vQ/X4ARjCGAbz+TEbhVW5g3
         Z/CunXZ9VlFuARV73ngzcmzfb4w4Ubc5Ro6ghwPn465SPp9FK1aVtLnjGfrG9DPvdGZC
         0ATbzye2KpqwFbxLePdgCvekGy1FQA2K5cM8H8/cQNvT7jixm7cKEUvMhGqzT6f85s+u
         TCxQ0hi9nrfQC1kc5xoON2B/plC6zBXq8HE6UXBpWhEh19JxBdQjU+FCtJRV1n6wITRT
         JrR8DE98FZLFPmD0eqloAtMUeGo2/tWyGTLtyfELpwvJcsP6aAOlRedNVbQjRwb9k3SS
         fjIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=tJHwznJ3MY3PeSYmAzPR5B+dAqnLKifHxijULkh5ADo=;
        fh=tYktoPz+sgKnaMMJYOlpr4dIqGtaOA49OyCQ//5n6mw=;
        b=CU9/yEjAYT5g2duQ68VQZFVVA4h237hKyrkomqOZ2W/X7QUmXfbKY+Nxt2GxpcuxK6
         HY7RirjpoIrWsSLiuOEiFvAYtSUTd0NRGY795QD0wKamtUzDgH7Mc6ezy23TJiKwtZoH
         jzIqbrmGDW2EGE5w+vGYGGLMiqypPUbyS77XJY4PeNMGaGDh2onhQq31f6/9R7Q+7OwY
         gIBIhiQPm0rgifDsVL41UVMqMeof7Peq9MEMep9aBXrZmLWy+hAkGbJJWkpqZrhbO8AG
         pYu4oAd/DRwyPga79F0hwaw2u0gTggVZTyzNEJT2A6sKFKGymgUh6ljSmJmCqSDYDtc+
         FmGA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 210.0.225.12 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709719703; x=1710324503; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=tJHwznJ3MY3PeSYmAzPR5B+dAqnLKifHxijULkh5ADo=;
        b=YGqqKvlaBjGgx4LNXl+mzUVQC0+9kESQjqtGXvq0XKuFOAmBzAnSbaoK/JabhGWexm
         v9vLoN9bOg6SC3XP7Ch+s/saZ4JuuDXpf2M979JamziPI3dGBoS4u8Wc0ltB4L9fRGRg
         KoEEt+tJO2ZCH+ctquqJb4o+qUP4ms7JKu/qk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709719703; x=1710324503;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=tJHwznJ3MY3PeSYmAzPR5B+dAqnLKifHxijULkh5ADo=;
        b=F7zOYu4meDUGc/+liA4i7aQ/1S84YwG/WoNNEHKGPJSM+W5C3cjQrjhtBaJMaVzpKj
         rgNVNQWtFPqSkGzsu4TO12rHttWQqPzJYgGKrgXykBeVmmjZL4ToWbZTKkn94kgp0Gbw
         1pHuBebPWS+pK59G/Yg6Qk70kRp5QtngxLu+SOIsuS6ami68FQGSdxnkFphmfWm4TtZS
         GT3J9yvj36dkajE4i1O+BVbNa4rWzpRXVjbnfqVSbCL/+qL+Y6IeVsuJTs7cnSe0FZT0
         id+pWUpJ96AWvUB0sbtbGLHqOebWcQBR4dAKaexnc22xE0xFkAXAk2lQh7pru3Rr8/31
         kglg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWjzg1dSIpKzSNPBM42rju/Oh5fa8Guuu9ZC5crlmj0tKuQtzGWlgEtpsjbY3w5fiX8fQv4UN9ScleyxU3QzJ3WuuwLLFdNsHuF
X-Gm-Message-State: AOJu0Ywtu7gw3Z/fgrdfrrUZpG9dnZA8Qm5z9DrY8xDJ8e5lNvIKdUZR
	4NWb7q4QDTmxF6YgYPSQhjeNstJiXIBzue2MIlPitaMv36YH6r7H6JkIw5oEkyY=
X-Google-Smtp-Source: AGHT+IGjQbekV0Id+zu/xJNIkTRHKyet+4A+QEoJC+Y9+xjO7cemJWIioPilOlcsIKajIpoLY/FAGw==
X-Received: by 2002:a4a:3142:0:b0:5a1:6f2c:7fc6 with SMTP id v2-20020a4a3142000000b005a16f2c7fc6mr2214678oog.4.1709719702771;
        Wed, 06 Mar 2024 02:08:22 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:625:b0:5a0:2fcd:32b8 with SMTP id
 e37-20020a056820062500b005a02fcd32b8ls1315732oow.1.-pod-prod-07-us; Wed, 06
 Mar 2024 02:08:22 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCU5I93jiiTgc2oiJrdpthgkqyHC3YhB9Fdav3I0l8xahD/nXlutB1IPh1PElpT9sMqCF40NsDdC7bs0hGBgxcqhgL308ACOQc3XrGifadPq07iuQic=
X-Received: by 2002:a05:6808:1884:b0:3c1:cd07:54af with SMTP id bi4-20020a056808188400b003c1cd0754afmr5373336oib.46.1709719701700;
        Wed, 06 Mar 2024 02:08:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709719701; cv=none;
        d=google.com; s=arc-20160816;
        b=jcf3d4fd/FRYaEFy++qjQ/p6z+/7dSzS9/3oG/rYZRH+OZ/snltL0lRaFdqZaBmw6G
         xwe/kgqLKZOAALMfy2ZRz55LkjDBI6VinYEcWGzVzI97HGum1rlGcxBUMuS6OkGghmm2
         v9Qim1Z9KBnk343PHJDmdJUXuyOxyNvBpRC0toQ6aLohF5PDtO3cudWxiXfjxIX8ZqE/
         OTXRwf8Vg9scMmozcL69vuaR+Rs9Mv16u46JCutyOaOCxVr4bqkelVBRyDAs/oFLG23N
         PW9nEnnJ5S7FTQYhsmsbL4BAqEhCC+fxQO5il5zPjEjaBdxH94ceGwA0t7hGy5anA9M6
         aaOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=4/uTUTdS+Z86kjcvLwPC3qxESK0t4a3QGvrExDvkDro=;
        fh=FD4mKGy1ME82NXzsAuqqkN3U42pO0UI7+8Bexdoq69o=;
        b=CXA/vI3/56px/8pzojp/Ckqq6bKkk8BoUOxKiZ0AVBPpHoG+NEBgLZSLUcRa46HnOY
         8yxmjTyB7Kje9hhBqC951v6D6ftdDJQSHMZomVPRvsLCSLDyrNsMopJf94zpM16Bil1L
         SEh+BV/I6Ci8KKZxZR9hogq43+d+Ko0HwLxfgODiV56WWbrCe2Ljgc3DWtcRDiwD5E/P
         LBk9S0OtMuVfKShyi6N2f3klzP5s+roJ4hYqUmsQHmcm3H++3svcguy3tNPt0+Q+exUy
         NhqDc1z1yS8Kii1ek/z1x8LLajTxyTdA4Kaiiln4GIo0OMlAcjRT9AuEqNAnmlGkmcV8
         +7ug==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 210.0.225.12 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
Received: from mx1.zhaoxin.com (MX1.ZHAOXIN.COM. [210.0.225.12])
        by mx.google.com with ESMTPS id n124-20020a632782000000b005d96d182c41si11595957pgn.490.2024.03.06.02.08.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Mar 2024 02:08:21 -0800 (PST)
Received-SPF: pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 210.0.225.12 as permitted sender) client-ip=210.0.225.12;
X-ASG-Debug-ID: 1709719695-086e23661801ec0001-FTGftY
Received: from ZXSHMBX3.zhaoxin.com (ZXSHMBX3.zhaoxin.com [10.28.252.165]) by mx1.zhaoxin.com with ESMTP id EdfuJbHKFDqKghyV (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO); Wed, 06 Mar 2024 18:08:15 +0800 (CST)
X-Barracuda-Envelope-From: WeitaoWang-oc@zhaoxin.com
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.165
Received: from zxbjmbx1.zhaoxin.com (10.29.252.163) by ZXSHMBX3.zhaoxin.com
 (10.28.252.165) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 6 Mar
 2024 18:08:15 +0800
Received: from L440.zhaoxin.com (10.29.8.21) by zxbjmbx1.zhaoxin.com
 (10.29.252.163) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 6 Mar
 2024 18:08:14 +0800
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.165
From: Weitao Wang <WeitaoWang-oc@zhaoxin.com>
X-Barracuda-RBL-Trusted-Forwarder: 10.29.252.163
To: <oneukum@suse.com>, <stern@rowland.harvard.edu>,
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
CC: <WeitaoWang@zhaoxin.com>, <stable@vger.kernel.org>
Subject: [usb-storage] [PATCH v4] USB:UAS:return ENODEV when submit urbs fail
 with device not attached
Date: Thu, 7 Mar 2024 02:08:14 +0800
X-ASG-Orig-Subj: [PATCH v4] USB:UAS:return ENODEV when submit urbs fail with device not attached
Message-ID: <20240306180814.4897-1-WeitaoWang-oc@zhaoxin.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.29.8.21]
X-ClientProxiedBy: zxbjmbx1.zhaoxin.com (10.29.252.163) To
 zxbjmbx1.zhaoxin.com (10.29.252.163)
X-Barracuda-Connect: ZXSHMBX3.zhaoxin.com[10.28.252.165]
X-Barracuda-Start-Time: 1709719695
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://10.28.252.35:4443/cgi-mod/mark.cgi
X-Barracuda-BRTS-Status: 0
X-Virus-Scanned: by bsmtpd at zhaoxin.com
X-Barracuda-Scan-Msg-Size: 5185
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: 1.09
X-Barracuda-Spam-Status: No, SCORE=1.09 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=DATE_IN_FUTURE_06_12, DATE_IN_FUTURE_06_12_2
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.121737
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.01 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
	3.10 DATE_IN_FUTURE_06_12_2 DATE_IN_FUTURE_06_12_2
X-Original-Sender: weitaowang-oc@zhaoxin.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of weitaowang-oc@zhaoxin.com designates 210.0.225.12 as permitted
 sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
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

In the scenario of entering hibernation with udisk in the system, if the
udisk was gone or resume fail in the thaw phase of hibernation. Its state
will be set to NOTATTACHED. At this point, usb_hub_wq was already freezed
and can't not handle disconnect event. Next, in the poweroff phase of
hibernation, SYNCHRONIZE_CACHE SCSI command will be sent to this udisk
when poweroff this scsi device, which will cause uas_submit_urbs to be
called to submit URB for sense/data/cmd pipe. However, these URBs will
submit fail as device was set to NOTATTACHED state. Then, uas_submit_urbs
will return a value SCSI_MLQUEUE_DEVICE_BUSY to the caller. That will lead
the SCSI layer go into an ugly loop and system fail to go into hibernation.

On the other hand, when we specially check for -ENODEV in function
uas_queuecommand_lck, returning DID_ERROR to SCSI layer will cause device
poweroff fail and system shutdown instead of entering hibernation.

To fix this issue, let uas_submit_urbs to return original generic error
when submitting URB failed. At the same time, we need to translate -ENODEV
to DID_NOT_CONNECT for the SCSI layer.

Suggested-by: Oliver Neukum <oneukum@suse.com>
Cc: stable@vger.kernel.org
Signed-off-by: Weitao Wang <WeitaoWang-oc@zhaoxin.com>
---
v3->v4
 - remove unused variable declaration in function uas_submit_urbs.

 drivers/usb/storage/uas.c | 28 +++++++++++++---------------
 1 file changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 9707f53cfda9..5930cfc03111 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -533,7 +533,7 @@ static struct urb *uas_alloc_cmd_urb(struct uas_dev_info *devinfo, gfp_t gfp,
  * daft to me.
  */
 
-static struct urb *uas_submit_sense_urb(struct scsi_cmnd *cmnd, gfp_t gfp)
+static int uas_submit_sense_urb(struct scsi_cmnd *cmnd, gfp_t gfp)
 {
 	struct uas_dev_info *devinfo = cmnd->device->hostdata;
 	struct urb *urb;
@@ -541,30 +541,28 @@ static struct urb *uas_submit_sense_urb(struct scsi_cmnd *cmnd, gfp_t gfp)
 
 	urb = uas_alloc_sense_urb(devinfo, gfp, cmnd);
 	if (!urb)
-		return NULL;
+		return -ENOMEM;
 	usb_anchor_urb(urb, &devinfo->sense_urbs);
 	err = usb_submit_urb(urb, gfp);
 	if (err) {
 		usb_unanchor_urb(urb);
 		uas_log_cmd_state(cmnd, "sense submit err", err);
 		usb_free_urb(urb);
-		return NULL;
 	}
-	return urb;
+	return err;
 }
 
 static int uas_submit_urbs(struct scsi_cmnd *cmnd,
 			   struct uas_dev_info *devinfo)
 {
 	struct uas_cmd_info *cmdinfo = scsi_cmd_priv(cmnd);
-	struct urb *urb;
 	int err;
 
 	lockdep_assert_held(&devinfo->lock);
 	if (cmdinfo->state & SUBMIT_STATUS_URB) {
-		urb = uas_submit_sense_urb(cmnd, GFP_ATOMIC);
-		if (!urb)
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+		err = uas_submit_sense_urb(cmnd, GFP_ATOMIC);
+		if (err)
+			return err;
 		cmdinfo->state &= ~SUBMIT_STATUS_URB;
 	}
 
@@ -572,7 +570,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
 		cmdinfo->data_in_urb = uas_alloc_data_urb(devinfo, GFP_ATOMIC,
 							cmnd, DMA_FROM_DEVICE);
 		if (!cmdinfo->data_in_urb)
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return -ENOMEM;
 		cmdinfo->state &= ~ALLOC_DATA_IN_URB;
 	}
 
@@ -582,7 +580,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
 		if (err) {
 			usb_unanchor_urb(cmdinfo->data_in_urb);
 			uas_log_cmd_state(cmnd, "data in submit err", err);
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return err;
 		}
 		cmdinfo->state &= ~SUBMIT_DATA_IN_URB;
 		cmdinfo->state |= DATA_IN_URB_INFLIGHT;
@@ -592,7 +590,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
 		cmdinfo->data_out_urb = uas_alloc_data_urb(devinfo, GFP_ATOMIC,
 							cmnd, DMA_TO_DEVICE);
 		if (!cmdinfo->data_out_urb)
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return -ENOMEM;
 		cmdinfo->state &= ~ALLOC_DATA_OUT_URB;
 	}
 
@@ -602,7 +600,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
 		if (err) {
 			usb_unanchor_urb(cmdinfo->data_out_urb);
 			uas_log_cmd_state(cmnd, "data out submit err", err);
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return err;
 		}
 		cmdinfo->state &= ~SUBMIT_DATA_OUT_URB;
 		cmdinfo->state |= DATA_OUT_URB_INFLIGHT;
@@ -611,7 +609,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
 	if (cmdinfo->state & ALLOC_CMD_URB) {
 		cmdinfo->cmd_urb = uas_alloc_cmd_urb(devinfo, GFP_ATOMIC, cmnd);
 		if (!cmdinfo->cmd_urb)
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return -ENOMEM;
 		cmdinfo->state &= ~ALLOC_CMD_URB;
 	}
 
@@ -621,7 +619,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
 		if (err) {
 			usb_unanchor_urb(cmdinfo->cmd_urb);
 			uas_log_cmd_state(cmnd, "cmd submit err", err);
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return err;
 		}
 		cmdinfo->cmd_urb = NULL;
 		cmdinfo->state &= ~SUBMIT_CMD_URB;
@@ -698,7 +696,7 @@ static int uas_queuecommand_lck(struct scsi_cmnd *cmnd)
 	 * of queueing, no matter how fatal the error
 	 */
 	if (err == -ENODEV) {
-		set_host_byte(cmnd, DID_ERROR);
+		set_host_byte(cmnd, DID_NO_CONNECT);
 		scsi_done(cmnd);
 		goto zombie;
 	}
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240306180814.4897-1-WeitaoWang-oc%40zhaoxin.com.
