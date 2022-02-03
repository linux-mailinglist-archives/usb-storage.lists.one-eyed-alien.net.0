Return-Path: <usb-storage+bncBC4OPUNB3AJRBKPW6CHQMGQE3SXQAZQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x346.google.com (mail-wm1-x346.google.com [IPv6:2a00:1450:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DDB4A8D38
	for <lists+usb-storage@lfdr.de>; Thu,  3 Feb 2022 21:29:30 +0100 (CET)
Received: by mail-wm1-x346.google.com with SMTP id v185-20020a1cacc2000000b0034906580813sf6386982wme.1
        for <lists+usb-storage@lfdr.de>; Thu, 03 Feb 2022 12:29:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643920169; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pd/aWWbGQVGqZn5BSwUpfkMNv0O4tGYr1oL6a19qFoXo4ApMrFKTN3jL55acwEbP6n
         tL7hCJqeRQvqk3BqhC2P1hf2MBV7hzfyn4RsfNV+jwiBaB38Bg6jmygX1zr73fqIcbGQ
         +TKaStOgwN4PKx+aAjeGHWE0B7b3FKCYc600Rvo+nSfm6A7O80Mx2VOfXm9GFhhIOr4I
         YeQVeEbX76OJsoOY8s0ycik3+9CJ3B5pZiHWu7EcGJS7szXVZGbphwwaZ2okgPolq3ER
         mooiz6J5q7IfOrios9MuE1WkswiSWZGLNLbKtLPQFo7/y6A53oy9IWeDihwhTwujRcTR
         19Pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yoysKe/I74sQfVRNlLaEQxtxb1Hl7+/yjoVbHhHh24I=;
        b=MHIK9FwS8opndC3LRNmKgWamLVU3nSdmh+Te8UVUrMkYWqs43a1VzK4trjI+hgjsNx
         eFv9MJ43OYe1K777lUq/2Y/pWGxFBjpqlNCBsf5vcA27sDpyLLKqlcVsJNO/t0Oy9OV3
         7Cpf6EJqGtz85FN0FvlDDtNo8UfWiZM780tVHCo2PwaUojBPR7QvY7+CnM1YSDqg8jgi
         9WmWdNVUD89h8H+DYe3o80Tzm53ZbdHqSdlZAj3KkR51ZaV1Axd5BWhqbu69BNheLqik
         T7mGwuerE+vIOWnPKUIiVRySdBj/ih7ijq3YFQQpKg14sFzh5RLdyV1Xru9XnPgXlhui
         zyDg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=sebastian@breakpoint.cc
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yoysKe/I74sQfVRNlLaEQxtxb1Hl7+/yjoVbHhHh24I=;
        b=Odq70XoNTFoTvw/DgAYalaeJ8oYKvcNgCyVsyroKArfB/Zb8LX3ti/NuQGpa6jpOjB
         5pqxuaoVRIgfuPGgO9mAv+RoowqVzsRa/yhcLvdCuMPXZl4vRLfCgWn1CLs2arHPSRJm
         SUInjTdSg71/geDhqbO2vsT1U4Klj3P3HDOys=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yoysKe/I74sQfVRNlLaEQxtxb1Hl7+/yjoVbHhHh24I=;
        b=icVscz03jj+EuU9yDmC3kslqyNhSNjPdW2iHyZ367AJSBuS7PMlFFYSrSi7VbjqXkW
         3XprDc0Q9WEE1Rq6As9fIo3uchgNJpVjn1k2rLPPpjOaYANs6A7GPtJ9JWhCm4aCxMwe
         JrxZmkfF0oW074dXntRtnAHDopisIgIHzbbcl3fIXP5NjBCRueyhxIZRDaPFXYYWvS39
         6xOpcFs9u0OPZxsd2ytIoLtQJeIpAvViIoD3H4K+LvDCbTIifBcvMkcbRe4kD9ZGL7gL
         toKeqQY9hwGAaEK8Tz6kmF5LL7hfOixrkbvQGc42lwk3lrkbJQW9UUdVGGdv67fZoNSr
         b3lw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532vW1oX9XVVAniKZ+sdrPlV6Hhoa8U0RzE0Krwb8yBEjef/AkaR
	AD05teuZpUl2nrTpa9BGhiN1rQ==
X-Google-Smtp-Source: ABdhPJwooW/JtmnuIGt5tNz2ekvN+qZzo1juyfodOeZX4aktsY2VQWf4wanGV5XnNOzsSCJEiggWaw==
X-Received: by 2002:a05:600c:4ecb:: with SMTP id g11mr11512844wmq.167.1643920169798;
        Thu, 03 Feb 2022 12:29:29 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:a58d:: with SMTP id o135ls5207841wme.3.gmail; Thu, 03
 Feb 2022 12:29:28 -0800 (PST)
X-Received: by 2002:a05:600c:3514:: with SMTP id h20mr11703827wmq.164.1643920168740;
        Thu, 03 Feb 2022 12:29:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643920168; cv=none;
        d=google.com; s=arc-20160816;
        b=k1TeOspr07Bs/ou9/XTG+UpUf6HE/PYqye7JA4xzlWILV2PchU7kFbZgyTmKyI5xYZ
         VXM8LdWM593MRJKqDO94Y7UpAsT9WE+VN2Xliqi++3M421qbn7280eKcM4MvoeHMvVfD
         RSJ4olBX2Kw7X/fTRjra10j/I6+kuxanbw7zg0zFkrTRg5iZBkmGxq0Jm1ZRLXCJghNu
         z+UDHozAUTW4jvpC5pM65pwW1ra7JLyZy1WhffsfU5LCqlZ5moDbbPpoAI7mem4bvbF/
         Wrj4DaRQTXembgUJn+lJsnIYu8Y3VsXysbAaipiUt2DIw9LoX+wjqOqyG0x4DEFha+um
         ZmQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=oX+RyDLHFMMiRwJdXtorUMAXEpEnvEttkmnsJfMM8X8=;
        b=hchmro9UW7oMG8SR6DEsXPsuZPCD9QLi+HEwfCT3kp+wVUi+KQx4z5329FRRqWK9dw
         /ay2QJFpR3/jstf0lH/pnUbe/eiZge7v1GdvLCNX2ej3sDNAIGIkixJRIOr2qmi2K20O
         1OM2faJCNWUBX9YghAeqvBHL4s8I6mTW5tL4uxi2ULBy+h/GXiJ55Lu8PyhUgaJ6Te4X
         r9F/PH6EudfufUIyuEghUgVM4ABFsNjrzpG19MWq8KOh4BTZnvBXTrGCuFumtW4fIjdA
         OlYyAJ0HtOnN2iZkjuBNc1GEBCDVgRil6cKQpJKQJ9J+02ZDQrYEX9nJZh1d46h5nk6j
         qqOw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=sebastian@breakpoint.cc
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc. [2a0a:51c0:0:12e:520::1])
        by mx.google.com with ESMTPS id k9si28693594wrh.1048.2022.02.03.12.29.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Feb 2022 12:29:28 -0800 (PST)
Received-SPF: pass (google.com: domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as permitted sender) client-ip=2a0a:51c0:0:12e:520::1;
Received: from bigeasy by Chamillionaire.breakpoint.cc with local (Exim 4.92)
	(envelope-from <sebastian@breakpoint.cc>)
	id 1nFijN-0003Hn-Ha; Thu, 03 Feb 2022 21:29:25 +0100
Date: Thu, 3 Feb 2022 21:29:25 +0100
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: Bart Van Assche <bvanassche@acm.org>
Cc: linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [usb-storage] [PATCH v2 1/2] scsi: Add scsi_done_direct() for
 immediate completion.
Message-ID: <Yfw7JaszshmfYa1d@flow>
References: <20220201210954.570896-1-sebastian@breakpoint.cc>
 <20220201210954.570896-2-sebastian@breakpoint.cc>
 <c8402f76-7397-77c3-232c-c825c52ea826@acm.org>
 <YfwxJPUFCo5/55yI@flow>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YfwxJPUFCo5/55yI@flow>
X-Original-Sender: sebastian@breakpoint.cc
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as
 permitted sender) smtp.mailfrom=sebastian@breakpoint.cc
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

Add scsi_done_direct() which behaves like scsi_done() except that it
invokes blk_mq_complete_request_direct() in order to complete the
request.
Callers from process context can complete the request directly instead
waking ksoftirqd.

Signed-off-by: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
---
On 2022-02-03 20:46:44 [+0100], To Bart Van Assche wrote:
> 
> Let me see what I can do.

Something like this perhaps? The compiler not inline
scsi_done_internal() so we maybe provide scsi_done() / _direct() as
static inlines?

 drivers/scsi/scsi_lib.c  | 21 +++++++++++++++++++--
 include/scsi/scsi_cmnd.h |  1 +
 2 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index 0a70aa763a961..a1c18ba5e8d38 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -1625,8 +1625,10 @@ static blk_status_t scsi_prepare_cmd(struct request *req)
 	return scsi_cmd_to_driver(cmd)->init_command(cmd);
 }
 
-void scsi_done(struct scsi_cmnd *cmd)
+static void scsi_done_internal(struct scsi_cmnd *cmd, bool complete_directly)
 {
+	struct request *req = scsi_cmd_to_rq(cmd);
+
 	switch (cmd->submitter) {
 	case SUBMITTED_BY_BLOCK_LAYER:
 		break;
@@ -1641,10 +1643,25 @@ void scsi_done(struct scsi_cmnd *cmd)
 	if (unlikely(test_and_set_bit(SCMD_STATE_COMPLETE, &cmd->state)))
 		return;
 	trace_scsi_dispatch_cmd_done(cmd);
-	blk_mq_complete_request(scsi_cmd_to_rq(cmd));
+
+	if (complete_directly)
+		blk_mq_complete_request_direct(req, scsi_complete);
+	else
+		blk_mq_complete_request(req);
+}
+
+void scsi_done(struct scsi_cmnd *cmd)
+{
+	scsi_done_internal(cmd, false);
 }
 EXPORT_SYMBOL(scsi_done);
 
+void scsi_done_direct(struct scsi_cmnd *cmd)
+{
+	scsi_done_internal(cmd, true);
+}
+EXPORT_SYMBOL(scsi_done_direct);
+
 static void scsi_mq_put_budget(struct request_queue *q, int budget_token)
 {
 	struct scsi_device *sdev = q->queuedata;
diff --git a/include/scsi/scsi_cmnd.h b/include/scsi/scsi_cmnd.h
index 6794d7322cbde..ff1c4b51f7aef 100644
--- a/include/scsi/scsi_cmnd.h
+++ b/include/scsi/scsi_cmnd.h
@@ -168,6 +168,7 @@ static inline struct scsi_driver *scsi_cmd_to_driver(struct scsi_cmnd *cmd)
 }
 
 void scsi_done(struct scsi_cmnd *cmd);
+void scsi_done_direct(struct scsi_cmnd *cmd);
 
 extern void scsi_finish_command(struct scsi_cmnd *cmd);
 
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Yfw7JaszshmfYa1d%40flow.
