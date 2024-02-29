Return-Path: <usb-storage+bncBCFIH5VMRQNBBJGXQGXQMGQEL3XCITQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id 176EF86C818
	for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 12:33:58 +0100 (CET)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-299d76d3a5esf631628a91.3
        for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 03:33:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709206436; cv=pass;
        d=google.com; s=arc-20160816;
        b=rZnLQ6m+7UMFIYmLLUn8nVswwgYDsJhROqaZjwolSbdz19azb8L26MlgCO1kCoklin
         DlvN0ccoU9TitYYdkd8GhoHsD04o8xiYM7Lwq5czDSzPigODA61K+qndqNjgDoNB2fwY
         aPz0ge/6GfBgAFpmnxWtUaOh6F+m6S8JrBJhNcTzr4Tn+xJtYXaSe6tFr0wczYmGPI1f
         izea7nYYR0XUW57wKb6ox+lmpWv3/ZyDry4yR1M7R3/0pqbBybBgCQQbZCsk0SSzPqP+
         p7HaAmv06zXTBs7wWWZ94ShFqjaB5HWvNoZ+ZwUOYIRfqo0xq76oJZuZS6XuSBnhn/jW
         ATLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=J2Vd8FPfrWYypDEoFBoNE+R/97aZepPIs+ZmlL86j/U=;
        fh=GEBGNltqKowgm7l34Jutjk10Z5AouahGDWiPygLYc28=;
        b=YV8ozNUb0hRJzlqqFKPqJ97TikWvAdqeNkRzHRjQTTw7XmYeFEmWGYSdLA+lwMpTNx
         HyZ8ainXQy4kHtbLX5hjMfYsuvO6IC/8M3D95UTnak87AuOr35IPIbma3JnRsuIj2dXf
         lQDAVkOKyuVtN4kd8VtIT+MBQj7SvGMZ7i/Np5O9xU/L1Om2azzHk1Siqw37VX4NEuG8
         5prOaF8/XfqKYGYMhaKCT+za63zz1VTav0A4r8whIAADAHARwd59HpX30eyoNrMrT9Yw
         +muGLpmk2Rn2yUuVb4WRAp4NTSjqkfqmhHMmJLMnZAElYZIqMKBZSTCw+VfUyP6rU3qV
         /hCw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709206436; x=1709811236; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=J2Vd8FPfrWYypDEoFBoNE+R/97aZepPIs+ZmlL86j/U=;
        b=Amxuy6glxIvqWjdW+1GfecVf4To/5leGu27/W1hDAv8wtOenUNswvc4CCnOwi6aQgT
         ttU187RdD9HPP2FkYWvoOBmWACTG77SaV2LFrkLVE39yyJL9aa3MxAi61pZgY6wGVlRo
         iOQ4aeVgH+pV1FHmuBx5p+XcCmhBaSesYXf7U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709206436; x=1709811236;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=J2Vd8FPfrWYypDEoFBoNE+R/97aZepPIs+ZmlL86j/U=;
        b=Et8t50H9qfBIa0v4Fmh8ElsSMSZuj6VLarparCb9YUUrR5g4eCbnunT3Yx03HCDF4k
         zAFng+6ZF/6dp2j7aviAtVFP5vE6/dxXuFf185XZfIHyGqAC2OcgRkFYiuHx7Fka6CkN
         23s5uf2kDLxmyHjX7ZNxY/xqYJjpSstJ1+n+0QMcC47U+GqnTPQszY0u31rQ/C2m7spp
         hmSSTYv57hLeCVKq6TNVYHyDVXvSxQX/+tpWnsDMJGXoqk0FIsLhoZ79XO7X+TXK1nhG
         5SGLjoQ8TsJ1ndpEUqDbtry9b5gfKbeyiGiINQ4jk10RJj4/FMFvVaDgzAKhBsq6t5af
         598Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWpqV4763HR8wVAxw/pnS+DcsPZo2/PGUZR8iNa9KQVqNfv4Xkc9PaSOmMflRlDeibn18gEzDEOo6YdhJm60Bv5c+l1vk3SNRXJ
X-Gm-Message-State: AOJu0YzD6vDueEw9qz3vnCRdSH8Jm2xGG3vWPbjz68cTxcnMyXA7TQ/4
	kRfWLfTqSi8OXIHwJvjjlJ46A7Dl2lgyS1LdUSXQC6/xZ6n8Lazy5gGjjnK/XNo=
X-Google-Smtp-Source: AGHT+IElE0Fg4tH+0qRwVZlLbqyYePwhmDhQvpd64Fzi30YXHzQku0lAN8czvjDhLab1Is8+lVTRUw==
X-Received: by 2002:a17:90a:ce12:b0:299:34b4:2ea7 with SMTP id f18-20020a17090ace1200b0029934b42ea7mr1586740pju.47.1709206436382;
        Thu, 29 Feb 2024 03:33:56 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:8d:b0:29a:982a:6eae with SMTP id bb13-20020a17090b008d00b0029a982a6eaels464068pjb.1.-pod-prod-04-us;
 Thu, 29 Feb 2024 03:33:55 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXdW8VR1kYOFe82vQ1WvqYAozOU/IitoGlo8EYo7jDSCS69/qDW6Zj01QIPWcXbQCabBg/gJrOVwCvaq72dJYF/j3tz3zOWTi5OQVTmCzsj6Z9fD70=
X-Received: by 2002:a17:90b:1bcb:b0:299:222c:bdc0 with SMTP id oa11-20020a17090b1bcb00b00299222cbdc0mr1695418pjb.37.1709206435184;
        Thu, 29 Feb 2024 03:33:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709206435; cv=none;
        d=google.com; s=arc-20160816;
        b=E43UtASuecCJmUaTNKP2ujlquHd7v77IOPDPdLo2g6UvfhjEXMfUNAakW8Y2jb0i6U
         zj4Emdg5I1CQ2xoVtZg09ap1WcHaKGj9Mhk7DeP7UbJmcrFGWbc0PSaUmSRCMCKxjx9H
         vnQq+WuPjUyTCuWF0ib8hVRB7VcZoMVBe8GE7boWKTzDFIjch1YWSWENLd4W1T9FayoD
         JsppJOsVP0CD9dtb2ThO6ihvkptPxqpmO9iZ/NUjESm9Kn47yw1GAoDLmqQYotSe6Q8C
         wrNOkjnN62cd2LtK6mKiuq67z9IbSf6VPm9hqea9YIjiRpH0Yc0xrFWxjfLPXVHE5xpP
         poiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=4IKazz709mxCz+0myuwYLceRQmeG3Qn+JtFeWq2IyxI=;
        fh=FD4mKGy1ME82NXzsAuqqkN3U42pO0UI7+8Bexdoq69o=;
        b=PBIiGPBfjPhqzqihGsOFHQ0BrcI8vBGhM6rlOHfX5NdR43SWnaBaB3QvOBhGk6voi4
         V8uDsjsc9PQ04LXwZ8McjaFnPa9UZEnwz2WVzn2sljUFSNfNsum6Rx57vWy4xoh1m6JE
         oL/1ur1PZ5WxzD5bN0o9X9U5zbMz6GiNIpfMaezDiRfbZ1IMChLQwpTfGfHlma0SYlT2
         WhtKS60bzUTsv7iVaVZoQ+DlHBgcU8eVHJneYPn9HBb1FxWnHfmLU3A7+/hN7K85mC/x
         mnbgG1RTIjAyEuszLBAieLoGfouhuEVjGW7KdVicQJ7nQpq9+e0UriEgRCKtNy5ptCAL
         87Yw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
Received: from mx2.zhaoxin.com (mx2.zhaoxin.com. [203.110.167.99])
        by mx.google.com with ESMTPS id cz15-20020a17090ad44f00b0029acc77b42csi1323855pjb.144.2024.02.29.03.33.54
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 03:33:54 -0800 (PST)
Received-SPF: pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) client-ip=203.110.167.99;
X-ASG-Debug-ID: 1709206430-1eb14e0c7d4d010001-FTGftY
Received: from ZXSHMBX3.zhaoxin.com (ZXSHMBX3.zhaoxin.com [10.28.252.165]) by mx2.zhaoxin.com with ESMTP id ndFs2NYkvZzLuoYN (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO); Thu, 29 Feb 2024 19:33:50 +0800 (CST)
X-Barracuda-Envelope-From: WeitaoWang-oc@zhaoxin.com
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.165
Received: from zxbjmbx1.zhaoxin.com (10.29.252.163) by ZXSHMBX3.zhaoxin.com
 (10.28.252.165) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 29 Feb
 2024 19:33:50 +0800
Received: from L440.zhaoxin.com (10.29.8.21) by zxbjmbx1.zhaoxin.com
 (10.29.252.163) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 29 Feb
 2024 19:33:50 +0800
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.165
From: Weitao Wang <WeitaoWang-oc@zhaoxin.com>
X-Barracuda-RBL-Trusted-Forwarder: 10.29.252.163
To: <oneukum@suse.com>, <stern@rowland.harvard.edu>,
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
CC: <WeitaoWang@zhaoxin.com>, <stable@vger.kernel.org>
Subject: [usb-storage] [PATCH v3] USB:UAS:return ENODEV when submit urbs fail
 with device not attached
Date: Fri, 1 Mar 2024 03:33:49 +0800
X-ASG-Orig-Subj: [PATCH v3] USB:UAS:return ENODEV when submit urbs fail with device not attached
Message-ID: <20240229193349.5407-1-WeitaoWang-oc@zhaoxin.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.29.8.21]
X-ClientProxiedBy: zxbjmbx1.zhaoxin.com (10.29.252.163) To
 zxbjmbx1.zhaoxin.com (10.29.252.163)
X-Barracuda-Connect: ZXSHMBX3.zhaoxin.com[10.28.252.165]
X-Barracuda-Start-Time: 1709206430
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://10.28.252.36:4443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at zhaoxin.com
X-Barracuda-Scan-Msg-Size: 5162
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: 1.09
X-Barracuda-Spam-Status: No, SCORE=1.09 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=DATE_IN_FUTURE_06_12, DATE_IN_FUTURE_06_12_2
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.121482
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.01 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
	3.10 DATE_IN_FUTURE_06_12_2 DATE_IN_FUTURE_06_12_2
X-Original-Sender: weitaowang-oc@zhaoxin.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted
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
v2->v3
 - Modify the description of this patch.
 - An error is returned directly when submitting URB fails.

 drivers/usb/storage/uas.c | 27 +++++++++++++--------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 9707f53cfda9..689396777b6f 100644
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
@@ -541,16 +541,15 @@ static struct urb *uas_submit_sense_urb(struct scsi_cmnd *cmnd, gfp_t gfp)
 
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
@@ -562,9 +561,9 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
 
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
 
@@ -572,7 +571,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
 		cmdinfo->data_in_urb = uas_alloc_data_urb(devinfo, GFP_ATOMIC,
 							cmnd, DMA_FROM_DEVICE);
 		if (!cmdinfo->data_in_urb)
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return -ENOMEM;
 		cmdinfo->state &= ~ALLOC_DATA_IN_URB;
 	}
 
@@ -582,7 +581,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
 		if (err) {
 			usb_unanchor_urb(cmdinfo->data_in_urb);
 			uas_log_cmd_state(cmnd, "data in submit err", err);
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return err;
 		}
 		cmdinfo->state &= ~SUBMIT_DATA_IN_URB;
 		cmdinfo->state |= DATA_IN_URB_INFLIGHT;
@@ -592,7 +591,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
 		cmdinfo->data_out_urb = uas_alloc_data_urb(devinfo, GFP_ATOMIC,
 							cmnd, DMA_TO_DEVICE);
 		if (!cmdinfo->data_out_urb)
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return -ENOMEM;
 		cmdinfo->state &= ~ALLOC_DATA_OUT_URB;
 	}
 
@@ -602,7 +601,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
 		if (err) {
 			usb_unanchor_urb(cmdinfo->data_out_urb);
 			uas_log_cmd_state(cmnd, "data out submit err", err);
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return err;
 		}
 		cmdinfo->state &= ~SUBMIT_DATA_OUT_URB;
 		cmdinfo->state |= DATA_OUT_URB_INFLIGHT;
@@ -611,7 +610,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
 	if (cmdinfo->state & ALLOC_CMD_URB) {
 		cmdinfo->cmd_urb = uas_alloc_cmd_urb(devinfo, GFP_ATOMIC, cmnd);
 		if (!cmdinfo->cmd_urb)
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return -ENOMEM;
 		cmdinfo->state &= ~ALLOC_CMD_URB;
 	}
 
@@ -621,7 +620,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
 		if (err) {
 			usb_unanchor_urb(cmdinfo->cmd_urb);
 			uas_log_cmd_state(cmnd, "cmd submit err", err);
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return err;
 		}
 		cmdinfo->cmd_urb = NULL;
 		cmdinfo->state &= ~SUBMIT_CMD_URB;
@@ -698,7 +697,7 @@ static int uas_queuecommand_lck(struct scsi_cmnd *cmnd)
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240229193349.5407-1-WeitaoWang-oc%40zhaoxin.com.
