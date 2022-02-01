Return-Path: <usb-storage+bncBAABBU6T42HQMGQE47BZLOQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3284A673A
	for <lists+usb-storage@lfdr.de>; Tue,  1 Feb 2022 22:44:52 +0100 (CET)
Received: by mail-qk1-x747.google.com with SMTP id a127-20020a37b185000000b004789e386256sf13213833qkf.8
        for <lists+usb-storage@lfdr.de>; Tue, 01 Feb 2022 13:44:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643751891; cv=pass;
        d=google.com; s=arc-20160816;
        b=zyg0VMlzS1zzuEv0LamyJXiZEzNetodWee86Vpl2VXAhpVC4A7IpEMx2ZjLtG9TTU5
         qGVQEN2DhjMvwpY9oBSQYL8XaSCzmjoHWq521liwEitsO1DXy/NGp77rpj/0UL2z3zdl
         fbDTzXT7sMjmLKQXWFGGS0eV5TGTnRLKwNH8zhOj69SeqkMfhpvYkpt2azkbQijC+To4
         MF/HLpURHNNUggWXfydFaC6DC4Nl4SEwHN4SPjYcUjeqF0t2Shwe79lo2oOpyrjtC7Mq
         NWEFUnCJowkDHNM5GSf7cY6nx5HfdUgydHW8e3xccUNczwkM5JCkAzXUNPQ/bvQm1kSM
         MFvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=c/7IHTIlE5D4dhZL0L84aM2J+7Bgb5TZpsZIWCzjegM=;
        b=ijVobY997SKDb0P/vTv8Ylvrdf8VAmpKROaa6Brtw+4+hsWtPM7TVggJSiyi+83FWN
         eR/7jgwUNb7I9rQeavKeScdrC8JIG7ycINDzVmST+9Jss3JsOlef2URhAbsTAI8q6sWz
         RnB/xrDfGdvHCpnyURMsCMT2+lN2KSYnPMse04HsKDK18DMEcyWtTPNe5Paxn6vWANdt
         994U21MzRAulGCNr/uvBG73FGSrX/xHY4/hJcyRITx9XEmyO6qAL6hzNj8r18dmXL8UC
         V0OboAwJ6yz9ax/T0Ar5kT44yJ79imIjBTeCmgvAuAAs6e5NDqZad4W13fAyOrGRNj9S
         o/Bg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=sebastian@breakpoint.cc
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c/7IHTIlE5D4dhZL0L84aM2J+7Bgb5TZpsZIWCzjegM=;
        b=ZjOudZeZG/jOgtu/iEFC0DFXLSwoLcho8Altz96r1rJpdiVuCqZX2mfl1ZX5Lova2D
         uC9HnSd3KbyqWSN/AEdIcsBBwbtBjqE21j80wU+qVWuLX6Icik0C7v30Y6twjyxuiqk/
         +GfHR3r3K3/NQCc/wyioyUYehqkRIEERH6vhc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c/7IHTIlE5D4dhZL0L84aM2J+7Bgb5TZpsZIWCzjegM=;
        b=alXJZLUSkWcfnydc8w35RXO4CdOLWEm4JSXpBk61dsSY4d8V8Bqb8RAEgsul5IRsk7
         Z/2nXwWz2u+D6iResgQZLnPPAL3lLSNfxEYXXXupf9UTZynnigCujiQuk+3Mg9AWzbXD
         oshVF6ntjteVOy2bGLCh07KquYlOB2WVCl2n4OJ1CQ3FIk3SvrDGiO/XzSLbI4gN4Oxt
         zW8WHB1e2brAiu8G1fo7zBly0JbzKCAY9WnTbP2FVK3/POFTVFx6dOmuXNHHZamm4uXy
         bKNUrJq9LozAttSCmL+vGjrn6dFCqL5KNQia1yK9dVHVs6fbXFhj8R9MrBxFdD1eehXS
         E6Ow==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531Tmw9KeOWjAJQZ3HQdsFd/YVF5OiIFjsCW70FtECh2ze8F1GG2
	tBJRXvcYLrTJBJr89lYxuWxJMA==
X-Google-Smtp-Source: ABdhPJx8LfHSFkEtTz5glEivy9NAmNqLsoIDG6uZX7+Dx92HC4HLXHDwdYQMKbo1p/UVJnWom6qvQw==
X-Received: by 2002:ac8:5ac3:: with SMTP id d3mr20797369qtd.288.1643751891317;
        Tue, 01 Feb 2022 13:44:51 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:1194:: with SMTP id d20ls10913985qtj.2.gmail; Tue, 01
 Feb 2022 13:44:51 -0800 (PST)
X-Received: by 2002:a05:622a:2d3:: with SMTP id a19mr17876793qtx.515.1643751890946;
        Tue, 01 Feb 2022 13:44:50 -0800 (PST)
Received: by 2002:a05:620a:2708:b0:47c:48e8:1ec2 with SMTP id af79cd13be357-4e0e134c25dms85a;
        Tue, 1 Feb 2022 13:10:11 -0800 (PST)
X-Received: by 2002:a05:6000:18a8:: with SMTP id b8mr22792778wri.604.1643749810645;
        Tue, 01 Feb 2022 13:10:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643749810; cv=none;
        d=google.com; s=arc-20160816;
        b=oDpMOEVePfsglELVy+Tv7oFvZNorBuKt1oOYpk5pb0QSzixm0SoHDSCsjfHnFsOBHv
         H+jT3CCdg9c8u0toIYx4RnO43KDHteyExQj5vhVSIMb3uIDnNDU1FPgumvLiOmiYjZ2x
         gH52iAsYv9i5tyDsAsrxBdjDAr5t/GB+1/NSBPW8LhAmDdMXS/8rrAa7o8obm6T8VVLw
         xwGMU65wXe4lvOXZABscLWKowJGCYWwMqtr1JEspeiM5RcY6iMAWefillUgqkzrrk0ah
         Kbje1SW1zbVUg7FqV0gPAdYwjNiIgstjYgkTNpZt6IErAYAjojCuxLlHvI561AxJAXH2
         izUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=OaEPjMTI5kV95TI+DkEhbNWncskbwQYLUDS9pLJe6xM=;
        b=ZxdtTca/vB1rQQR8hBUGA+HTISSs7WfXLottQil+RUiNQuperydsCtSb1KrZNkJSb9
         CdeiU+CqsxCurQKCB10mo05FWEdjgZmzy1/JdGfo1K5EGwFOtySDD8DEsnoZd4pcysQj
         zyDsFyEu4892BLFo602dUp6/4MQl1k7Z+eVsPLW1yD84ArkqMzT4aoHUSwriN31vl9/e
         mpSSZNoYNRaM4J4ZNsOxvjg9GBEgflf4oPJbjOlstdotoPi1eE3vJgZlZNrheXiK8XTq
         zaZ6isMwG/3BZ0pFb6/SAQRE8E2fAxJ5964b5fFypmOojdAnQD7d+6R8irnvKjQ172pf
         zBKA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=sebastian@breakpoint.cc
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc. [2a0a:51c0:0:12e:520::1])
        by mx.google.com with ESMTPS id w12si2230695wmi.69.2022.02.01.13.10.10
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Feb 2022 13:10:10 -0800 (PST)
Received-SPF: pass (google.com: domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as permitted sender) client-ip=2a0a:51c0:0:12e:520::1;
Received: from localhost ([127.0.0.1] helo=flow.W.breakpoint.cc)
	by Chamillionaire.breakpoint.cc with esmtp (Exim 4.92)
	(envelope-from <sebastian@breakpoint.cc>)
	id 1nF0Pg-0006wn-Uh; Tue, 01 Feb 2022 22:10:09 +0100
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
Subject: [usb-storage] [PATCH 1/2] scsi: Add scsi_done_direct() for immediate completion.
Date: Tue,  1 Feb 2022 22:09:53 +0100
Message-Id: <20220201210954.570896-2-sebastian@breakpoint.cc>
In-Reply-To: <20220201210954.570896-1-sebastian@breakpoint.cc>
References: <20220201210954.570896-1-sebastian@breakpoint.cc>
MIME-Version: 1.0
X-Breakpoint-Spam-Score: -1.0
X-Breakpoint-Spam-Level: -
X-Breakpoint-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1
X-Original-Sender: sebastian@breakpoint.cc
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of sebastian@breakpoint.cc designates 2a0a:51c0:0:12e:520::1 as
 permitted sender) smtp.mailfrom=sebastian@breakpoint.cc
Content-Type: text/plain; charset="UTF-8"
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

Add scsi_done_direct() which behaves like scsi_done() except that it
invokes blk_mq_complete_request_direct() in order to complete the
request.
Callers from process context can complete the request directly instead
waking ksoftirqd.

Signed-off-by: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
---
 drivers/scsi/scsi_lib.c  | 27 +++++++++++++++++++++++----
 include/scsi/scsi_cmnd.h |  1 +
 2 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index 0a70aa763a961..778ef6d09616f 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -1625,26 +1625,45 @@ static blk_status_t scsi_prepare_cmd(struct request *req)
 	return scsi_cmd_to_driver(cmd)->init_command(cmd);
 }
 
-void scsi_done(struct scsi_cmnd *cmd)
+static bool scsi_done_need_blk_compl(struct scsi_cmnd *cmd)
 {
 	switch (cmd->submitter) {
 	case SUBMITTED_BY_BLOCK_LAYER:
 		break;
 	case SUBMITTED_BY_SCSI_ERROR_HANDLER:
-		return scsi_eh_done(cmd);
+		scsi_eh_done(cmd);
+		return false;
 	case SUBMITTED_BY_SCSI_RESET_IOCTL:
-		return;
+		return false;
 	}
 
 	if (unlikely(blk_should_fake_timeout(scsi_cmd_to_rq(cmd)->q)))
-		return;
+		return false;
 	if (unlikely(test_and_set_bit(SCMD_STATE_COMPLETE, &cmd->state)))
+		return false;
+	return true;
+}
+
+void scsi_done(struct scsi_cmnd *cmd)
+{
+	if (!scsi_done_need_blk_compl(cmd))
 		return;
+
 	trace_scsi_dispatch_cmd_done(cmd);
 	blk_mq_complete_request(scsi_cmd_to_rq(cmd));
 }
 EXPORT_SYMBOL(scsi_done);
 
+void scsi_done_direct(struct scsi_cmnd *cmd)
+{
+	if (!scsi_done_need_blk_compl(cmd))
+		return;
+
+	trace_scsi_dispatch_cmd_done(cmd);
+	blk_mq_complete_request_direct(scsi_cmd_to_rq(cmd), scsi_complete);
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220201210954.570896-2-sebastian%40breakpoint.cc.
