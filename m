Return-Path: <usb-storage+bncBAABB4WEU2FQMGQEA7AEOLI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AFC42F736
	for <lists+usb-storage@lfdr.de>; Fri, 15 Oct 2021 17:46:59 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id e22-20020a05620a209600b0045f81b8f89csf7082531qka.5
        for <lists+usb-storage@lfdr.de>; Fri, 15 Oct 2021 08:46:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634312818; cv=pass;
        d=google.com; s=arc-20160816;
        b=B3PEcXXgepW/bADJkoyHP5IgpkU+aZ97QzoMz/gM1YGMgXpoZGUerfxXa9u9goRSUr
         oiTiwpx/tmkpsM/+njrUt+Y3XblK3aEZNiFdJ1PvVfq8zcR8RQv2VQcfrMQ2Fa1z5F/C
         gyHqgSHP2ZIskjcjNZWl4O65Dohxnh0TAo5v2K9/793dZTth/5UtzCfKary3914UiRox
         wIcjIw2QjW2NTkaXuduIswS+b6AL+pTLN2SXLp1dLwvzAdx/US0MfoP0TqvNz+g6eFBe
         Wbr4CJQwTAeeH11luS05IJgs2nxpLYMrlDnPfcnA9GrH9y7CvYUQZH+TQclvcx5LrnPr
         hSyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eMrF1XsaY24ERl7b8uSPXxevRRw/zOZmkRmBtFk/9WA=;
        b=XBZKbUocE7n4NLObRrpkwnR7lb2G56kRx5lQkikrgoYuoX3DBQGWBColeUoBXNotzz
         FfmrXr3oj382nG/KOlSmh10loJEGBJGDGBNcVsb7FMQTZ/ytBGBhWsowsJ3cIs/XvMaS
         mPoaXybNR4ZHPucLPk3GYby3bJlpswlkQYmZYAXVo5YE++12kIZnKUxXIOFVmcdVVZcM
         V/jPAY/LMXjixRkK3z4/tCWh+PGG/KnAgM9K2KqWxTYgYgPkanDN4Jksicx17cec5ahI
         kjwLmgCCmhlhkAaMi8QXZ/9LsaVC11GHpk5CYLk1xlo+phavRT7SPAcqYhGimLs7JRfs
         JYag==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=EzbhwnV8;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eMrF1XsaY24ERl7b8uSPXxevRRw/zOZmkRmBtFk/9WA=;
        b=Mm/u9YKO5OrhrmageUJ3/D+uEz8SDeDxTJs9bGMDFKmE/k7Z2ZXGtb46UXcu9qYvlY
         eXG/nLYszhrswOiMDUf1Q+G+SWsc2JALbMdWghdsYX9tLVnCEpZAA2FJe3YDMcU9Ncek
         9xHcxkWqeNXTQ68dU7Pm1HcFbVPf658FRA4/s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eMrF1XsaY24ERl7b8uSPXxevRRw/zOZmkRmBtFk/9WA=;
        b=GXOy1xTdn2nN0GcTqp6otZgc/+UvLiyUq1xnWljAOrKnJGysQW097n23Q7Y6O3zLP3
         yYdSfLVlRQmC1U+/grTqRPpYq4nNXB97MLKn0OcNV9bK2/3H9hN3jVL/9t9L06kNSG/u
         qBrDWVpbma0ZKYWx6QNGyUJnZIKvRmqXSLmimjmwK6KgfviAIGbjCJNnMzPMLbFA3Tk5
         eOunU60QX2kKcTRbTu7cw+ziIiH8f8RDXYPCLCk8SZGyOPdMk8h8crpJNzB59sl1/9Cj
         xWBMZBfx8541pOc9nJnoywkjch/qzbHYgdCCePbCIHWLKysHW10HI27zleOq46/ywDQM
         ZiVg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5320Z+v9k6jAceezQFkFwehq1li/KBS9CG5+HLfKa6+A70/N36AL
	/lAuCJ6RxpXZu/yWlT/yMWuzQg==
X-Google-Smtp-Source: ABdhPJzqXGRN1AmTy1XZOmuiTsBo6QKk97tmCaUMpLKZHyXg7YWNg0mpETK72XA1+cRuDMoPiXkX9A==
X-Received: by 2002:a37:6c06:: with SMTP id h6mr10422312qkc.201.1634312818458;
        Fri, 15 Oct 2021 08:46:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:2099:: with SMTP id 25ls5219941qtd.1.gmail; Fri, 15 Oct
 2021 08:46:58 -0700 (PDT)
X-Received: by 2002:ac8:42d9:: with SMTP id g25mr14298835qtm.224.1634312818053;
        Fri, 15 Oct 2021 08:46:58 -0700 (PDT)
Received: by 2002:a05:620a:103c:b0:45f:acc1:6d2b with SMTP id af79cd13be357-45faf282911ms85a;
        Fri, 15 Oct 2021 08:14:29 -0700 (PDT)
X-Received: by 2002:a05:600c:3393:: with SMTP id o19mr26953318wmp.66.1634310868867;
        Fri, 15 Oct 2021 08:14:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634310868; cv=none;
        d=google.com; s=arc-20160816;
        b=wSGPk/PotVKFZnAKyp90kRzIq0wIlz/hcuOv9PHk0jLiirVlgEIayobB9NzPSZE6p1
         Gs+liqTi54UHbvWFAMFDz4GgTGjjbA4UfK+LceBRYD6bp+IIGRrKWKL/WK3LAgAlfgXJ
         0uO3MggdmkFMQb09YdM4qVn9xGL+9S5EQeYE1ZYXbA0obIvSa8E6H5UO2OFyLYCfJy0s
         ccUhwbogile+UMgI0YFwMWYED7KfgzjJtZnvN6a3xiTHis+XKyyrYvJTotBEXMzOcrAm
         FSzOxjRKwJ+tzyfhlTCxMDsF+cytulxb2vgSE7XtLeWy39vkSq95rzOoAvxbpxVZTPWZ
         J9+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:dkim-signature:dkim-signature:from;
        bh=w48GmUtrByyn7yHGg7JhSjj9SDZrPX8KgOLSu7dqDTM=;
        b=VepaW1Noz/knQY6Ni35qi6ED1B/hTL319gIUM0BMCjL8WSLTXvlFtBfUnJOf44avOI
         vhAyS2VS0mMXVAnmG6acmISzVUzlsQzdEI7Z6ERRj6at874McqMvjhvglJujeLGNOXvP
         7LMYWzTVNX+KH3NXn7ZfgbXSYfJkici5UWzxCLRYdZ4TEKh9QZlPCe14koda8QCa8z/k
         II8a7i5gDmTxrh3PTkJWikEYNfcKzMnlx+9ySWuH/IFJakweZkq5mix9I9jB0May6Sqp
         rCBVbnP3FgER8Ft4cQzvko3xO3PHBQDJPTko185mgfNwzzDpSBhG3hGrOH+ipncos0He
         lR0A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=EzbhwnV8;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by mx.google.com with ESMTPS id h3si8048874wrs.133.2021.10.15.08.14.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 08:14:28 -0700 (PDT)
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
Subject: [usb-storage] [RFC PATCH 2/3] mmc: core: Use blk_mq_complete_request_direct().
Date: Fri, 15 Oct 2021 17:14:11 +0200
Message-Id: <20211015151412.3229037-3-bigeasy@linutronix.de>
In-Reply-To: <20211015151412.3229037-1-bigeasy@linutronix.de>
References: <20211015151412.3229037-1-bigeasy@linutronix.de>
MIME-Version: 1.0
X-Original-Sender: bigeasy@linutronix.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=EzbhwnV8;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as
 permitted sender) smtp.mailfrom=bigeasy@linutronix.de;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

The completion callback for the sdhci-pci device is invoked from a
kworker.
I couldn't identify in which context is mmc_blk_mq_req_done() invoke but
the remaining caller are from invoked from preemptible context. Here it
would make sense to complete the request directly instead scheduling
ksoftirqd for its completion.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/mmc/core/block.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/mmc/core/block.c b/drivers/mmc/core/block.c
index 431af5e8be2f8..16b4ea0e92c4b 100644
--- a/drivers/mmc/core/block.c
+++ b/drivers/mmc/core/block.c
@@ -2051,7 +2051,8 @@ static void mmc_blk_mq_dec_in_flight(struct mmc_queue *mq, struct request *req)
 		mmc_put_card(mq->card, &mq->ctx);
 }
 
-static void mmc_blk_mq_post_req(struct mmc_queue *mq, struct request *req)
+static void mmc_blk_mq_post_req(struct mmc_queue *mq, struct request *req,
+				bool can_sleep)
 {
 	struct mmc_queue_req *mqrq = req_to_mmc_queue_req(req);
 	struct mmc_request *mrq = &mqrq->brq.mrq;
@@ -2065,8 +2066,12 @@ static void mmc_blk_mq_post_req(struct mmc_queue *mq, struct request *req)
 	 */
 	if (mq->in_recovery)
 		mmc_blk_mq_complete_rq(mq, req);
-	else if (likely(!blk_should_fake_timeout(req->q)))
-		blk_mq_complete_request(req);
+	else if (likely(!blk_should_fake_timeout(req->q))) {
+		if (can_sleep)
+			blk_mq_complete_request_direct(req);
+		else
+			blk_mq_complete_request(req);
+	}
 
 	mmc_blk_mq_dec_in_flight(mq, req);
 }
@@ -2087,7 +2092,7 @@ void mmc_blk_mq_recovery(struct mmc_queue *mq)
 
 	mmc_blk_urgent_bkops(mq, mqrq);
 
-	mmc_blk_mq_post_req(mq, req);
+	mmc_blk_mq_post_req(mq, req, true);
 }
 
 static void mmc_blk_mq_complete_prev_req(struct mmc_queue *mq,
@@ -2106,7 +2111,7 @@ static void mmc_blk_mq_complete_prev_req(struct mmc_queue *mq,
 	if (prev_req)
 		*prev_req = mq->complete_req;
 	else
-		mmc_blk_mq_post_req(mq, mq->complete_req);
+		mmc_blk_mq_post_req(mq, mq->complete_req, true);
 
 	mq->complete_req = NULL;
 
@@ -2178,7 +2183,8 @@ static void mmc_blk_mq_req_done(struct mmc_request *mrq)
 	mq->rw_wait = false;
 	wake_up(&mq->wait);
 
-	mmc_blk_mq_post_req(mq, req);
+	/* context unknown */
+	mmc_blk_mq_post_req(mq, req, false);
 }
 
 static bool mmc_blk_rw_wait_cond(struct mmc_queue *mq, int *err)
@@ -2238,7 +2244,7 @@ static int mmc_blk_mq_issue_rw_rq(struct mmc_queue *mq,
 	err = mmc_start_request(host, &mqrq->brq.mrq);
 
 	if (prev_req)
-		mmc_blk_mq_post_req(mq, prev_req);
+		mmc_blk_mq_post_req(mq, prev_req, true);
 
 	if (err)
 		mq->rw_wait = false;
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20211015151412.3229037-3-bigeasy%40linutronix.de.
