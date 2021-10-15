Return-Path: <usb-storage+bncBAABB4WEU2FQMGQEA7AEOLI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B46042F738
	for <lists+usb-storage@lfdr.de>; Fri, 15 Oct 2021 17:46:59 +0200 (CEST)
Received: by mail-qt1-x848.google.com with SMTP id d19-20020ac85ad3000000b002a74d0626bcsf6960520qtd.5
        for <lists+usb-storage@lfdr.de>; Fri, 15 Oct 2021 08:46:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634312818; cv=pass;
        d=google.com; s=arc-20160816;
        b=A/hQlciz2g5ndZTm9QL4IF+V8oW/RtbaaXH8gTu4ruK41t4iPCLJ8OnmJ+ZoAfw8f/
         GlHqnK8SQGEJh7rZQhPK6iDLk7qZuxyywRLbb+K1ChTeFitnRdc7VHY8xYhB2rEMdQ+T
         4I7aQcZy9KUKpKX0xSg+eMHzKIJYMGYP1E4HX2s3jTdc62CdDMXvr9q9qzhBfDsKD/LS
         OEMmzE1yJh45zJTvddYIHbZ6V9G/mBbECOblTd8He887EOwv03u76dC1jY5Q5HZj5zrA
         CTzrQGQtE30kyrS/xwkHhWUKq7DbrmbC1zM4sPqWWcnT1adQqQyi8sxEzWEX/gNIfVex
         ZrVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=YIhfvcDxjDgc8LTKvWIyl1KLuPz5yxIpSofxhZOtLC8=;
        b=E+aCSh7LheBeilHhDTWniqIV7/NLZAtLVorHFITZaaOK0Oc6RgZyNnHqPgboyLG1Wj
         NHCvl9RElV4kKzeiwQ00rRJb78TmpGUjIIC1ki3pySCRk2eaOpD9Gff5Cvpk/DvRE/RC
         8a90bNvBB8AtfzW5Q59S5BkYLW3we86bVUxNDIIinz9culAAwvb6cez0sdYXQYfca1Yt
         Q5ugzbMRl1QzQ0PlXHz+ZxSswd6McHs5oghsvviZhI5trZBnHuFG1W1mfOXUAz7eajot
         4VB19LJ5SWsaDggK3SDD3Dw2Xc4NDgGaNgOMK58tCq0KAfUb2zG0kHW2Go6gIK81+/wL
         vqPw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=VbRC6g75;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="8/q4h8aY";
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YIhfvcDxjDgc8LTKvWIyl1KLuPz5yxIpSofxhZOtLC8=;
        b=B12yTUCeT7u35gGNrkxMWxQmbLJpkmljf2f2AEBH0wZWspcPhf487GjcIrogtdP7fJ
         Mw9DmTBJ/XNKsk9Ju8MYm1TaQkDkUPI9AEz8QSO44fWfGU4Lzu3n703tEQX+2N24sXVS
         n3x78IRoHoQB6xr9ZGkgNLAoPh3oQ/eNJd60M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YIhfvcDxjDgc8LTKvWIyl1KLuPz5yxIpSofxhZOtLC8=;
        b=HwEDDw2s6z61Cao6my2la3bfL1RubE+AYUz0fe3SiijrilLcKHnJ0LX7CgDYnLEVlS
         n2DRqIL+67KaU6AP+JiFfxLI77J1mbaJlYhthwkCIv3ZEcDr3sOCaKpUX0rHHhMA25QT
         yTtaxB8HrC05XDJKlN5LOBiRv/W6TVjrrRFmdeYu8Fo6OTXYEqf1MXO07WSoKVM+zv1A
         ghXXJYf8ObJDEu1YxieEN5Yl8KkpVL9w48tKspuisSKhtvEmCXfpI88Qg2RCqhXMTYMv
         Z/TF3TOSjY0/87n/iv5WHIM3z+f+YkpevcSa9EZ1P7ZZL9DVBcWJIv86BuqVhOfHQpDm
         qXcg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530D7JsQPpki6J44QDFGFQs6/jDZz9Y5bwNTwWjUHmxrIr22vtSw
	P/LyE9/zjcyrArB0mgXb2hFIdA==
X-Google-Smtp-Source: ABdhPJzVXrsHzsntJ2HqkywmIvRgmGJlZgSuzMVUsJFS2xR7jqPJoSAVcdhNGdyaqTjtGZzfjx377w==
X-Received: by 2002:ac8:7f8f:: with SMTP id z15mr14302200qtj.148.1634312818465;
        Fri, 15 Oct 2021 08:46:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aed:27d8:: with SMTP id m24ls3146245qtg.6.gmail; Fri, 15 Oct
 2021 08:46:58 -0700 (PDT)
X-Received: by 2002:a05:622a:394:: with SMTP id j20mr14596627qtx.386.1634312818051;
        Fri, 15 Oct 2021 08:46:58 -0700 (PDT)
Received: by 2002:a05:620a:16ca:b0:45f:a992:8d2e with SMTP id af79cd13be357-45fc47da474ms85a;
        Fri, 15 Oct 2021 08:14:30 -0700 (PDT)
X-Received: by 2002:a05:6000:18a2:: with SMTP id b2mr15107576wri.155.1634310869837;
        Fri, 15 Oct 2021 08:14:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634310869; cv=none;
        d=google.com; s=arc-20160816;
        b=FsKR96wH5UXFFb1fjwwIubAujeStV+4Mw9fgeEg1BT6QhJ1o3Ijbr0P/B3Tg2M21xN
         uSrU42oojj5LCNwOEeEj2eREnn4iOgZrDRHgOvh1Thwesd2VsDeKBEOtYmBhRi3HBAi0
         DN0KSzddwRWZn06XzYCpmxt816GNPDUsipU13NaM6OdSIzvkqfRqCu+MW6eFo/IJ7qL6
         Rmpg1b5ZbEg7VpKSZCr6UZiUCEbUI7o80lN11DXxmR3/K7JvvBubc96Icsy5X4a/eh5L
         48KwNjmVc336YaHHa6atsroVCazMnGjcKW3s2Goy7gZpiPb5/bU65/Z16LnFduAVptBt
         9ePA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:dkim-signature:dkim-signature:from;
        bh=xuQ9dlseb8QSm1Z1qmlP/P61CRYzuxuhzN+uy8YQa4c=;
        b=nfvHJpjF6wArVPSncyGvkmSogTC44oUrimT02CmMJ5dvGhlS4FtKHBjhbijhhVRduD
         zg3UPBJBdUbxfN38K91Xgaz+5BYPMAaga2Z15UlYFjJlKyi21ZGGWJIjY2cnfJaJwVrn
         OZ7MNZ0YQkVbLDyHXzm0CtnRvNlVNZ/P0J6Vbe3S/w6drvpUWjoH7CiLACsmIEFUyYro
         ZlaB9DDwzHF4Eb6FhalB01ZGNekNPiam+me6Iz5DSGzOegodP+sun28BM041B3Kb+QTx
         WXknXSErmWP7+PyOw0GVrwWXLd2QaO9/ZOGQkxP8uXFEvBo0XlcgNN3p62vsRf+43sH/
         94sg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=VbRC6g75;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="8/q4h8aY";
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by mx.google.com with ESMTPS id c6si8934029wrn.30.2021.10.15.08.14.29
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 08:14:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: linux-block@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Jens Axboe <axboe@kernel.dk>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Christoph Hellwig <hch@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [usb-storage] [RFC PATCH 3/3] scsi, usb: storage: Complete the
 blk-request directly.
Date: Fri, 15 Oct 2021 17:14:12 +0200
Message-Id: <20211015151412.3229037-4-bigeasy@linutronix.de>
In-Reply-To: <20211015151412.3229037-1-bigeasy@linutronix.de>
References: <20211015151412.3229037-1-bigeasy@linutronix.de>
MIME-Version: 1.0
X-Original-Sender: bigeasy@linutronix.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=VbRC6g75;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b="8/q4h8aY";
       spf=pass (google.com: domain of bigeasy@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

The usb-storage driver runs in a thread and completes its request from
that thread. Since it is a single queued device it always schedules
ksoftirqd for its completion.

The completion is performed in the SCSI stack. Add
scsi_done_preemptible() which inlines most of scsi_mq_done() and
completes the request directly via blk_mq_complete_request_direct().

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/scsi/scsi_lib.c   | 17 ++++++++++++++++-
 drivers/usb/storage/usb.c |  2 +-
 include/scsi/scsi_cmnd.h  |  7 +++++++
 3 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index 572673873ddf8..f0eeedce6b081 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -1575,16 +1575,31 @@ static blk_status_t scsi_prepare_cmd(struct request *req)
 	return scsi_cmd_to_driver(cmd)->init_command(cmd);
 }
 
-static void scsi_mq_done(struct scsi_cmnd *cmd)
+static void _scsi_mq_done(struct scsi_cmnd *cmd)
 {
 	if (unlikely(blk_should_fake_timeout(scsi_cmd_to_rq(cmd)->q)))
 		return;
 	if (unlikely(test_and_set_bit(SCMD_STATE_COMPLETE, &cmd->state)))
 		return;
 	trace_scsi_dispatch_cmd_done(cmd);
+}
+
+static void scsi_mq_done(struct scsi_cmnd *cmd)
+{
+	_scsi_mq_done(cmd);
 	blk_mq_complete_request(scsi_cmd_to_rq(cmd));
 }
 
+void scsi_done_preemptible(struct scsi_cmnd *scmd)
+{
+	if (scmd->scsi_done != scsi_mq_done) {
+		scmd->scsi_done(scmd);
+		return;
+	}
+	_scsi_mq_done(scmd);
+	blk_mq_complete_request_direct(scsi_cmd_to_rq(scmd));
+}
+
 static void scsi_mq_put_budget(struct request_queue *q, int budget_token)
 {
 	struct scsi_device *sdev = q->queuedata;
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 90aa9c12ffac5..6ceedd1e14ce7 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -417,7 +417,7 @@ static int usb_stor_control_thread(void * __us)
 		if (srb) {
 			usb_stor_dbg(us, "scsi cmd done, result=0x%x\n",
 					srb->result);
-			srb->scsi_done(srb);
+			scsi_done_preemptible(srb);
 		}
 	} /* for (;;) */
 
diff --git a/include/scsi/scsi_cmnd.h b/include/scsi/scsi_cmnd.h
index eaf04c9a1dfcb..e992f2f74dd69 100644
--- a/include/scsi/scsi_cmnd.h
+++ b/include/scsi/scsi_cmnd.h
@@ -396,4 +396,11 @@ static inline unsigned scsi_transfer_length(struct scsi_cmnd *scmd)
 extern void scsi_build_sense(struct scsi_cmnd *scmd, int desc,
 			     u8 key, u8 asc, u8 ascq);
 
+static inline void scsi_done(struct scsi_cmnd *scmd)
+{
+	scmd->scsi_done(scmd);
+}
+
+extern void scsi_done_preemptible(struct scsi_cmnd *scmd);
+
 #endif /* _SCSI_SCSI_CMND_H */
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20211015151412.3229037-4-bigeasy%40linutronix.de.
