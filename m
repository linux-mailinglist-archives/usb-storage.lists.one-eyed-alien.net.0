Return-Path: <usb-storage+bncBAABBRE33WXAMGQE5O2GN6A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x347.google.com (mail-ot1-x347.google.com [IPv6:2607:f8b0:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A5485F9ED
	for <lists+usb-storage@lfdr.de>; Thu, 22 Feb 2024 14:36:06 +0100 (CET)
Received: by mail-ot1-x347.google.com with SMTP id 46e09a7af769-6e47a7b7698sf91509a34.1
        for <lists+usb-storage@lfdr.de>; Thu, 22 Feb 2024 05:36:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708608965; cv=pass;
        d=google.com; s=arc-20160816;
        b=VXOiwh621orjVkwhuTplPRIFw/wD08bMfTTGHNX9hwL/lnbFh+evIimkoWjYx1QAjN
         WCLXw05k0pVneD1ZktxONrv54eh7qEXqISs9izAfiAmfkSsdHU3C2zupYntK/qNjOpip
         1yKCB/nsCC3SEZwnEKhuKNljfhL8cOkZhi2fNbNATmIkZK2sAdrd1u12b/dgCJZZVpVb
         DlTGhUIqt/3TlTX8b90TnmW5Pd0R9rxoNCNdZNqm9800BytULV1X3uhfARS5LsHHr+Ak
         nWgRuQzR6CuMRTjfgStMIvQKc4EJjzf0faNtb0pLWFMCkp33wksSFtq/vMlYJSuuMIV3
         TzYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=ICZ42/VLJB+6yzYaELOf+B0cba8kDh8bh/fEcCUKLZs=;
        fh=xk/cMRfLIcrcpE5HjB3CEth32jBZJliC3ulQf3qzaMQ=;
        b=seYaOcYGJFgBFjAS4P67JUFJduOHFY+HjL7sKulpp9jGSOrwNUWswl2JfbhfdmI/XW
         YJGFnFGMoZqE0YQYDo/aCQU0b2P60XYO7AcSrkFPHRLG/UNSN25QKWTWUZnSHXGFgpup
         sH9gHCSKAAcdhUYx7NwzPN8NqrpP/hPKZEwx9weiKYdvr+OE0Dn3eO4qJpDlIM8grRe4
         SM/puQXn8D+bUqnrP+Mp604SeWFOBfZI+2IhTbsFfYXGYbLynN+fbDtIFO/7CfDjfjDA
         8wIQMxJiFD5r1kabDHeRQbhb0P57Rcw0zfjieX3r2HDSoGv28Cm+dNrnvUyEmQW/2NMM
         hLFg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1708608965; x=1709213765; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ICZ42/VLJB+6yzYaELOf+B0cba8kDh8bh/fEcCUKLZs=;
        b=WijV8CpFBK4GrjnwH51cZfa11pRWmfRo70t0SbDMHi8VVackZbrJXa0XOhirZw+8yb
         JkWrPI8D8oAEZprhjhY89fag8lCtlm2qNflDpfRswZiAtN4XvHxJqMSOe+Olb7ZPApFD
         yP3F8WAKzkaZfYtppvwk7BDK9aeQZNKqk0wRQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708608965; x=1709213765;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ICZ42/VLJB+6yzYaELOf+B0cba8kDh8bh/fEcCUKLZs=;
        b=LnGrQ4MdOs6N8gnjgkbw75G+ZaKXpHTFlc5/gB4ftyJm8zmfTghmZSIos49kxh/KY0
         6u4IB+A4P9nBRpNIaJ0jYtstLPHpNxy5B0sFZumN0RgcyTKW3e3xhh6GzrxZQp4+aiyU
         qmRmyNBAZuriKjwUfZx30fGDGM+nq6J0aUUcta7DNtOAzahx4HUbfS0Rmes89wLZUfs0
         pRGL0bnlESPoHwOVhxd9WLgE/WcDROKSLUfqwGE70qcd++w9G2qtWqhZOBQycsvBf2vt
         k7ly/I6shXV/zfz4BpIGRTbVYFde3DP3xyxpZjDcwfsnuu/MhjO6vCnjZO/5Ph/FzqXY
         v2cg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXGPUzDYT10Z1avvCk+USR71v9dNLVzkqMA6om/i1ey80LvYDIY+KYZ/dg0GzRmwJ7VCWRHQB0I2YENkk5tNvOhVN3/7zgCf+ip
X-Gm-Message-State: AOJu0Yyo6HOa65r9cNOrBQyJpqu0haaZyvC1qIG7WUFNuQmDA2Kz2Xto
	iLSDK5Ku9kUhf+X4rrlsZCY+0p0cu/ael1EgWEOxlaeMM39IWwFIPSWwniNpj68=
X-Google-Smtp-Source: AGHT+IGJAPkaHY7XhYOf+9oKKfJy9ATw745KO3X8ilv6vbqNLEzW3O2n5/k/Lv0KcQdnpQ/PjLDkPw==
X-Received: by 2002:a9d:66cc:0:b0:6e4:7540:b0d5 with SMTP id t12-20020a9d66cc000000b006e47540b0d5mr1221142otm.13.1708608964652;
        Thu, 22 Feb 2024 05:36:04 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:ae4b:0:b0:59a:a4a:21db with SMTP id a11-20020a4aae4b000000b0059a0a4a21dbls168953oon.1.-pod-prod-06-us;
 Thu, 22 Feb 2024 05:36:04 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXhuXvkVX+aaGsvzGl/6aF8M+c5emKDwinaL53FpfvJaZ4dNnnTirsDAV44AU31iZozPZCETO1HD9DnDozTkfGovpZaJwwcPFbC5ffwoy5jG87jzlk=
X-Received: by 2002:a05:6830:71aa:b0:6e4:6c92:7615 with SMTP id el42-20020a05683071aa00b006e46c927615mr28706otb.7.1708608963917;
        Thu, 22 Feb 2024 05:36:03 -0800 (PST)
Received: by 2002:a05:6808:178d:b0:3c1:4e9f:1474 with SMTP id 5614622812f47-3c177dfe9f1msb6e;
        Thu, 22 Feb 2024 00:54:46 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX4EtJHHeJkDhfcrFZCL8wE3HcX4VXE8UBBirn02g8QNr0JqK5BIWIYDb5U1MAcPWCiAieJUKvDhmnRYtJAt7KU21B5v40LR5fRa5BKLksqMtO53Y4=
X-Received: by 2002:a05:6830:3106:b0:6e4:74bb:94c1 with SMTP id b6-20020a056830310600b006e474bb94c1mr970337ots.8.1708592086070;
        Thu, 22 Feb 2024 00:54:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708592086; cv=none;
        d=google.com; s=arc-20160816;
        b=G+XFY4LQ2VF2nxd11c17nFl9tsTKfEA308wP8qdBgQZTkQimAoOdjE6RIiXQVkEdOe
         STNaQZ6P8iqtxKTtbtj9WDaZjsBFC9Q1bMDd+iRBKYfwNtgTfUPlSCQ2eUeJxctYRtQ/
         y2zUn+I6tU+Ug0Usfv7qrd+5klVcUKAIiJJqo/Kb/r8Hd2YQDxqe28EHevDqY/IqLao/
         F6t+YG9JvOGixfzlPQMseSr4WN9XVXC9yj6A05rRRJkOgAaavxMs7AOdRDuc2DouiE/X
         FX6ar9KP+HSS7O+YxvEBmoXOCjQFv3D1Z6voCa923OXKHOBc9tGOijvgHM9DLoFfE5hH
         fPGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=sGu4DzXq2KilnzaBxCY05MKDFmi+Wv/XxnQwY5874hU=;
        fh=bjqTkrDGAG5dUTe66+BL0cPu+qBvgRFd2kua/wKfhAI=;
        b=bwjA9LXvSHFceNPWa+5lLYcK6N3wvbKggUYRW7lEY5mPY8aajY5Ol6PNsr070F870u
         lsEuBBFxHG3pRaH7l9vDuWxRjYsCjKNjNFTHaJLZZprl36sjpNhtkUoZ3Ffe5Qsfxrs0
         p2KbRC+m70s2viI1lEYpQmyPHXrA6Y/sglN1LmM4tmA635dSjmf1JyWS0p22D4dR1OTW
         UUE7oo/l0sYcFwGv1DwEtmqfE1E4Oq2JbM+YMwPKgHj7aBZ5Qm0t2KPBQ/BUx+fmGGjP
         ANCpo7iO7FRMvBFc/p3a2XSQ2qASBsAsw/6zbgHG0mwiFYzZHINWNW7mMPptKCAiImd8
         BGEw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
Received: from mx2.zhaoxin.com (mx2.zhaoxin.com. [203.110.167.99])
        by mx.google.com with ESMTPS id s185-20020a6377c2000000b005dc8f60ce09si9607099pgc.7.2024.02.22.00.54.45
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 00:54:46 -0800 (PST)
Received-SPF: pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) client-ip=203.110.167.99;
X-ASG-Debug-ID: 1708592081-1eb14e0c7c45a80001-FTGftY
Received: from ZXSHMBX2.zhaoxin.com (ZXSHMBX2.zhaoxin.com [10.28.252.164]) by mx2.zhaoxin.com with ESMTP id IHwyCNpP3iJxhYfP (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO); Thu, 22 Feb 2024 16:54:42 +0800 (CST)
X-Barracuda-Envelope-From: WeitaoWang-oc@zhaoxin.com
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.164
Received: from zxbjmbx1.zhaoxin.com (10.29.252.163) by ZXSHMBX2.zhaoxin.com
 (10.28.252.164) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 22 Feb
 2024 16:54:41 +0800
Received: from L440.zhaoxin.com (10.29.8.21) by zxbjmbx1.zhaoxin.com
 (10.29.252.163) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 22 Feb
 2024 16:54:41 +0800
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.164
From: Weitao Wang <WeitaoWang-oc@zhaoxin.com>
X-Barracuda-RBL-Trusted-Forwarder: 10.29.252.163
To: <oneukum@suse.com>, <stern@rowland.harvard.edu>,
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
CC: <WeitaoWang@zhaoxin.com>
Subject: [usb-storage] [PATCH] USB:UAS:return ENODEV when submit urbs fail
 with device not attached.
Date: Fri, 23 Feb 2024 00:54:41 +0800
X-ASG-Orig-Subj: [PATCH] USB:UAS:return ENODEV when submit urbs fail with device not attached.
Message-ID: <20240222165441.6148-1-WeitaoWang-oc@zhaoxin.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.29.8.21]
X-ClientProxiedBy: zxbjmbx1.zhaoxin.com (10.29.252.163) To
 zxbjmbx1.zhaoxin.com (10.29.252.163)
X-Barracuda-Connect: ZXSHMBX2.zhaoxin.com[10.28.252.164]
X-Barracuda-Start-Time: 1708592081
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://10.28.252.36:4443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at zhaoxin.com
X-Barracuda-Scan-Msg-Size: 4195
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: 1.09
X-Barracuda-Spam-Status: No, SCORE=1.09 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=DATE_IN_FUTURE_06_12, DATE_IN_FUTURE_06_12_2
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.121168
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
will be set to NOTATTACHED. However, usb_hub_wq was already freezed and
can't not handle disconnect event. Then, sync cache SCSI command will be
sent to this udisk on the poweroff phase of hibernation, that will cause
uas_submit_urbs to be called to submit URB to sense/data/cmd pipe. Then,
usb_submit_urb return value -ENODEV when device was set to NOTATTACHED
state. However, uas_submit_urbs always return "SCSI_MLQUEUE_DEVICE_BUSY"
regardless of the reason for submission failure.That will lead the SCSI
layer go into an ugly loop and system fail to go into hibernation.

To fix this issue, let uas_submit_urbs function to return real error
-ENODEV when submit URB with device in the NOTATTACHED state. In the error
checking inside of function uas_queuecommand_lck, reporting DID_ERROR will
cause device poweroff fail and system shutdown instead of entering
hibernation. So,replace DID_ERROR with DID_NO_CONNECT to report to SCSI
upper layer.

Signed-off-by: Weitao Wang <WeitaoWang-oc@zhaoxin.com>
---
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240222165441.6148-1-WeitaoWang-oc%40zhaoxin.com.
