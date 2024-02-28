Return-Path: <usb-storage+bncBCFIH5VMRQNBBT6K7KXAMGQEOAJUNOA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE8586A70F
	for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 04:15:29 +0100 (CET)
Received: by mail-pf1-x445.google.com with SMTP id d2e1a72fcca58-6e5382e18e8sf2411263b3a.3
        for <lists+usb-storage@lfdr.de>; Tue, 27 Feb 2024 19:15:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709090128; cv=pass;
        d=google.com; s=arc-20160816;
        b=c3fZdytN1Yw7nyv+fQa3GbSF1dfWC/W8Q5Z/Dz+LbC9RLoSR0CFQIh/BxcWmR0t8Cp
         URFt/lQOSUZoN7AOfi4J6JEU1CWh6FQMwCqhefvjuEZa0SiL7HuMNJOu9LAc7xQNegcv
         8VnPtOASYev9OaD0zZ4DhYvrcLyJgWU6wQf6cSQxPe1GGPeqK2HSK3dn74N3evivZSvW
         Qya0chNI8m5iw8If3rDlTX4dTxA6z12RqgCKUpcdF+sIG+G3ySKQthqKAwoBNyfsjtSg
         8PHlzwMrtelnnoRwq1R6H3J5VksegA7239cy2usSSNURCzNphVIwDPbcNviCQ0AgfOtI
         pnwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=xJxOg1LoR0V+Fb+s8K3ib+aZ9KAy4y0TBSQ1ixkRGt0=;
        fh=2sjCNufT2UJvaYY16m3DypwU4smnnKfqFp8tu640TgY=;
        b=w0ZIrmwyTpxOkQBnU+w7EM5G6yAitCalALu/pDJvonjae8yciNfLdCNN+PoQC7odLN
         bd2F8NtltGwpB8mJbYMQy5eiFgwqRBfkzER2E6dHY7WPncncEI0WKQMMDLBTnMwINGGN
         2AdhGlK3zTfCVFUMFoOEWE+MpZC+zDYV74VTQtzCfy98iJNnzFCkH+0UvHB/MF/aNYws
         qwAkLMmJSA/OmH91ENQl9tKllWYERqv8+AVR3QZcS0uFv50kxw6ct/d6boUHAxHxgyoW
         p+f3lWfAWj+FjCeLYjQa6QCTevlG0pwH1USoHwlKrWilbj8umjlYO8UpedOD6uuo5fLE
         VvlA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709090128; x=1709694928; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=xJxOg1LoR0V+Fb+s8K3ib+aZ9KAy4y0TBSQ1ixkRGt0=;
        b=Vowd6LwcCQZjq1wnTZdI6LQMp5oB1HIrNpkbGqNOrzL09oRsXnDxk4OFhqWKWE60V2
         yb/rlfJulDT7n3fByXdgIphLkD97SWv41lqZOsVC1X6wCn6UHeIxT6rdcnabuIBfU4Az
         pQ44oQeOTr4GtdLXvkI4QaQd8yoYMMme0YGtI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709090128; x=1709694928;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=xJxOg1LoR0V+Fb+s8K3ib+aZ9KAy4y0TBSQ1ixkRGt0=;
        b=iByB+mpz8e8Rb58Y0i0HHoPaSLr3m41w1fMTV3RQEsxXDDgKHslmpwTbu+pz4s9MjF
         VCSHppyH4HNvmakOgnNxXfkmsQ2aQnQ+tBRaK2w8GGdfV1W5ZHSvoN5//Hwnr+bhFQVp
         hkHOF67yt1iR7iXfHtRfNBrFnGQ5rwDZoRYPNBf4fxD5DlPsLDGSANpxB+FzIca49Ptm
         OA07u8l1rtHGQKDSLCRikXNdCHEi/S9VCTifnPVHx4e88YpN+NS45XE8MZ2l7TcfObpP
         FX4XwUKtIl9tpMVaBYG8Fyi14KgfIp/WFtlrYJUNCAhJJjdqUZqwvTNPCI3MBz0Q44As
         C7lw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVfDna+QgSN4D5iYeKEcoihOdn193FNcWq0E7LWgy4mOZCclBgMeQXQ0cy3hXu2yfyhvb2TXhntXk5wEzPkBZCufKXPBAIV6zMA
X-Gm-Message-State: AOJu0Yw8vRPqNCS1UxHDskBI7/QMVFgcreONSqtrJEQ+Q7BkB3P7fwD+
	5OSfENhV/QF9h7w/NXcM8QEffOo2WJyPkP49HXrs1V7tHufYDWFFP+NUITPZOUw=
X-Google-Smtp-Source: AGHT+IHc4hBZovLNBIV60x1KtqDy3DsQtErOv0xIuhX1TlL68mo//bxxPkAfrdfJOZSoKtZZaERRAw==
X-Received: by 2002:a05:6a00:742a:b0:6e5:35a5:511e with SMTP id ls42-20020a056a00742a00b006e535a5511emr5822068pfb.0.1709090128046;
        Tue, 27 Feb 2024 19:15:28 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:1d15:b0:6e5:a6f:8474 with SMTP id
 a21-20020a056a001d1500b006e50a6f8474ls2601304pfx.1.-pod-prod-08-us; Tue, 27
 Feb 2024 19:15:26 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW9qR9G+eqsNPi4F/veCpeBmkkP7YEvikbfgu8SnVZcBqSbaVWfurSKTOTsuX8dWTqHLm39q0ZlLmUg70F59m7yrqO8cZg2nrnDXsxBXerSfYobdq8=
X-Received: by 2002:a05:6a21:2d06:b0:1a0:eea4:c612 with SMTP id tw6-20020a056a212d0600b001a0eea4c612mr4593951pzb.11.1709090126619;
        Tue, 27 Feb 2024 19:15:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709090126; cv=none;
        d=google.com; s=arc-20160816;
        b=xR9ztfOoRFhJYlLFek3yz8n2SU0BcADNvnEuxrwrzwJRki1WzKSAHg19WYta/dj5oM
         JnnXf4PEoCE3fNpakC4LZCGSEEgHNkqH1+LGYLnFCKlPnhbNuwPaOIawzrbRJkrNgiIU
         4kjtQkmzfjXR7LGu1Riu8cSzmi/0tx52b9V+kA761biyX3CMvHR75C7L6QYzYa2soyUv
         d/qKXRke7ii115rZUKGKlmQ56d6sFJvY8gRcQ+3UK45Q0c8n8Pm1QHDJK7eg18cEx3G8
         F3aILY/8lLiexKAx/5v6sf8euJNYbDJLnf5p2KofjpyoHVh5j+50BkEbPC+JHEh/GiLx
         DCxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=oKrNZuVBtDWuVPFr7vgnh2x04aSdjo/zXgxSAgNNjXA=;
        fh=FD4mKGy1ME82NXzsAuqqkN3U42pO0UI7+8Bexdoq69o=;
        b=DWoWJoOFhmQFW/X06RqQpevawVBX0hqyxYKLW0EQXPRMvziTp/WzHeP21WdhtkNCTT
         29byaXuay8br2RCGBQxd5sWSWSTruh+EkzP3QIggUylfYz81XJyL77bQlIZpLfOnVdmP
         TVOnaeWINgSXTpKMg2U8Y5nC+gpgqfnZjPlfDPMfEEibbBGAGNGlOFSMl+V1+Tdz6NDm
         fPN1dBBrBh86H2iHtlWwbMwdjJkyQ6ETD+dTTDcl9J0gAeEMIBFaAJRR3dQfZCcwAS1b
         7aBi1hciuHwTEDa3wKwn7My9/KVWN0ulGESyCvIAo67BaSL1XB6XECflCnKIlB+5ICSF
         E8KQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
Received: from mx2.zhaoxin.com (mx2.zhaoxin.com. [203.110.167.99])
        by mx.google.com with ESMTPS id t10-20020a63dd0a000000b005ce00003530si6576363pgg.562.2024.02.27.19.15.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 19:15:26 -0800 (PST)
Received-SPF: pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) client-ip=203.110.167.99;
X-ASG-Debug-ID: 1709090121-1eb14e0c7f4b750001-FTGftY
Received: from ZXSHMBX1.zhaoxin.com (ZXSHMBX1.zhaoxin.com [10.28.252.163]) by mx2.zhaoxin.com with ESMTP id J4vELxcXT5Px1eGw (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO); Wed, 28 Feb 2024 11:15:21 +0800 (CST)
X-Barracuda-Envelope-From: WeitaoWang-oc@zhaoxin.com
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.163
Received: from zxbjmbx1.zhaoxin.com (10.29.252.163) by ZXSHMBX1.zhaoxin.com
 (10.28.252.163) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 28 Feb
 2024 11:15:21 +0800
Received: from L440.zhaoxin.com (10.29.8.21) by zxbjmbx1.zhaoxin.com
 (10.29.252.163) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 28 Feb
 2024 11:15:20 +0800
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.163
From: Weitao Wang <WeitaoWang-oc@zhaoxin.com>
X-Barracuda-RBL-Trusted-Forwarder: 10.29.252.163
To: <oneukum@suse.com>, <stern@rowland.harvard.edu>,
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
CC: <WeitaoWang@zhaoxin.com>, <stable@vger.kernel.org>
Subject: [usb-storage] [PATCH v2] USB:UAS:return ENODEV when submit urbs fail
 with device not attached.
Date: Wed, 28 Feb 2024 19:15:21 +0800
X-ASG-Orig-Subj: [PATCH v2] USB:UAS:return ENODEV when submit urbs fail with device not attached.
Message-ID: <20240228111521.3864-1-WeitaoWang-oc@zhaoxin.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.29.8.21]
X-ClientProxiedBy: zxbjmbx1.zhaoxin.com (10.29.252.163) To
 zxbjmbx1.zhaoxin.com (10.29.252.163)
X-Barracuda-Connect: ZXSHMBX1.zhaoxin.com[10.28.252.163]
X-Barracuda-Start-Time: 1709090121
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://10.28.252.36:4443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at zhaoxin.com
X-Barracuda-Scan-Msg-Size: 4337
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: 1.09
X-Barracuda-Spam-Status: No, SCORE=1.09 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=DATE_IN_FUTURE_06_12, DATE_IN_FUTURE_06_12_2
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.121424
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

To fix this issue, let uas_submit_urbs function to return a value -ENODEV
when submit URB fail with device in NOTATTACHED state. At the same time,
we need to translate -ENODEV to DID_NOT_CONNECT for the SCSI layer.

Cc: stable@vger.kernel.org
Signed-off-by: Weitao Wang <WeitaoWang-oc@zhaoxin.com>
---
v1->v2
 - Modify the description of this patch.

 drivers/usb/storage/uas.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 9707f53cfda9..967f18db525a 100644
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
+			return (err == -ENODEV) ? -ENODEV : SCSI_MLQUEUE_DEVICE_BUSY;
 		cmdinfo->state &= ~SUBMIT_STATUS_URB;
 	}
 
@@ -582,7 +581,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
 		if (err) {
 			usb_unanchor_urb(cmdinfo->data_in_urb);
 			uas_log_cmd_state(cmnd, "data in submit err", err);
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return (err == -ENODEV) ? -ENODEV : SCSI_MLQUEUE_DEVICE_BUSY;
 		}
 		cmdinfo->state &= ~SUBMIT_DATA_IN_URB;
 		cmdinfo->state |= DATA_IN_URB_INFLIGHT;
@@ -602,7 +601,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
 		if (err) {
 			usb_unanchor_urb(cmdinfo->data_out_urb);
 			uas_log_cmd_state(cmnd, "data out submit err", err);
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return (err == -ENODEV) ? -ENODEV : SCSI_MLQUEUE_DEVICE_BUSY;
 		}
 		cmdinfo->state &= ~SUBMIT_DATA_OUT_URB;
 		cmdinfo->state |= DATA_OUT_URB_INFLIGHT;
@@ -621,7 +620,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
 		if (err) {
 			usb_unanchor_urb(cmdinfo->cmd_urb);
 			uas_log_cmd_state(cmnd, "cmd submit err", err);
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return (err == -ENODEV) ? -ENODEV : SCSI_MLQUEUE_DEVICE_BUSY;
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240228111521.3864-1-WeitaoWang-oc%40zhaoxin.com.
