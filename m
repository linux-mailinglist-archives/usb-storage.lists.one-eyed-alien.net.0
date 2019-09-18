Return-Path: <usb-storage+bncBDMYPB44VAFRBCW6RHWAKGQE37TXLPA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C6EB69EF
	for <lists+usb-storage@lfdr.de>; Wed, 18 Sep 2019 19:53:15 +0200 (CEST)
Received: by mail-qt1-x848.google.com with SMTP id x26sf889417qtr.17
        for <lists+usb-storage@lfdr.de>; Wed, 18 Sep 2019 10:53:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568829194; cv=pass;
        d=google.com; s=arc-20160816;
        b=kBo6R0OR2NCWYVb8QAKf/91jxDrlN61jj1x2/Vo/2vWA0y3iMLQwubQ43kpT1ZQHOp
         t+UM3x41ns+2oA62sZmQsfafzmcQu4Yqk1t4QKLHX9bnp2AMnVbA6wtrOguRovUwwDRq
         kOgkJ9PTcAW0mXiGjrhurYm7xF8Zw+UV7P/vK4tZfOQ04AaO1JYEXiORf1Dr829l+MmX
         R9xEiD5/l717Qh+0TVsc28cBUwhYnzpQkJbHF35VzZMwIL+r6flyQNjFI6sUybP2LguM
         Xd6ktW6r866CPQGtOD7vdzGAq0kriJJxX5Q+Ij72mJuO6PhJR3nurhgVL2gtMAeS4fgQ
         4taQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=TuORdmmmA+2rQelrkaZX4ilHUq7uQLfwO4xJi/0x1b4=;
        b=nCalAVUAYwa2h63SoYCbaKw/NB6VyX724tnsRys32bdBD0rw7QG4qZ98Jz3HiG8MgB
         MG1SXJukqZRQ1sjl64mj3WAeEdkXy9xO1hjQRNvFOPcwq0bQgPs3oTT6sk95kB1Gnho5
         2cOyPEjPe6QHjbsORAN3UyYPJb8r/tBatEmiBTIWoFf/Bz3RP8008jcdIb4fgdbdI4+l
         +b8DVTrd0zhyFAjMu3v1PlzZk+Y3954ux4abZ9wSxQ52q6qgCsJ70ZdtYctow9qPiGm5
         RlqE2v8tLKdLQmwsKmdOVTRGg67YSx08WtDtSs3+FasO0XNDGojw3SaBp54Z0y+SDvQo
         Jsqg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oguUc+kb;
       spf=pass (google.com: domain of 3cw-cxqgkaoiqeirrmglksskpi.gsq@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3CW-CXQgKAOIQEIRRMGLKSSKPI.GSQ@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TuORdmmmA+2rQelrkaZX4ilHUq7uQLfwO4xJi/0x1b4=;
        b=SQZK8bUVBQNhQgRE/Rocjg9fNcZDnrPwEy7fPpjubh6LlajnAXJ11v9LCA4UqSzub2
         aWZIHcLQEToxAKGd/YJ/AHmp8dovv9sx7vapPDEQMuw/cSWd/wUlP9WdDFmRB5drAQJ+
         DFrw7I4Pl8xqkUbJbITCT6PlTpjpwHyU6HilM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TuORdmmmA+2rQelrkaZX4ilHUq7uQLfwO4xJi/0x1b4=;
        b=uh5Ica2cV10lXcXQtT8Fhq9PzUYoV7+Pq2gUb2PjBuFe9ssmN7hTrk7T44tZoKA1RK
         x5nd5DkuxCA1Y9PD8vbsJICUlDI1HQnsBCyS84KZSd3wBybmYVge7EzpunhPdW/uzteY
         iokrhxfloROyih3NgBkD6KZ/O4HyDFubE7HDTiRiE34CgRxDim61N+txsU9MrzGC5IYa
         nqExM+lLoS61JK0MwR9d5pABBJr2p1en3gKeTge22+4yTH1glJPvocRUIphkjtkMc4t2
         E7p1TO0uOSiPQuUNzhGLvwQlFo0YfHubvhcCB31VYYTJ446Ah/aUcCync23op8UwVjii
         nnyg==
X-Gm-Message-State: APjAAAXSfQKxx9PhA3qA5f2VKReFuOXg2URL/Nwb2bORMJQfmsf69Xgp
	f01vIAYHrPWb8HeHqKBSNME0Rg==
X-Google-Smtp-Source: APXvYqyZdyGINzz4fEn1bB+KQ4EdaiH+WBvpCMUEQb/taP8Z4jukE6xmcBSddp2gxfPyuMCZhqhR5A==
X-Received: by 2002:ac8:4597:: with SMTP id l23mr5648913qtn.284.1568829194517;
        Wed, 18 Sep 2019 10:53:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:a853:: with SMTP id r80ls206228qke.0.gmail; Wed, 18 Sep
 2019 10:53:14 -0700 (PDT)
X-Received: by 2002:a37:470f:: with SMTP id u15mr5265487qka.290.1568829194183;
        Wed, 18 Sep 2019 10:53:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568829194; cv=none;
        d=google.com; s=arc-20160816;
        b=DrTsslgLXRDkbAmRaItiBxnE0i4WrPoGbzJe2o6cTeXIme10scRNfPyDbwZza+dMWk
         zaijkBRs+nvVEAoZV6jbn8PYuUM6XZg++2oYvaGJv7URLnrHuoLJMfQLGtjuOTKMGQIT
         gafoRS3CRGhNJ/DkkcAjel2xLDosyr0ZLEGUvXqou77eRt2TZOySY65RjIcKrFJ3b2nb
         a/tC6RNUIXA3YSY6HahYytrODDa06Q2DwG9JykKGDA9Eo9vhBfWUs8c0G6jBO960F35P
         yPGNcPZFargO5+xIU/hG56SppWBLAoESlnNTdrdXFPzEKoNCGQQM8kqyrl05f6T+VRdL
         jV6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=If4YHWCGBSP7JzXIJroo6+sBnmdEVgDVLiwCXHSsnXY=;
        b=dcsQWpHUjwOkyRMCSJCWLFjFJVWYCUlheGjRQKotWI5bcsTOQrNaC4coy+uE09FhSS
         ihyshI4PDMQE98idR/A8yvSTTqWFWDIUJg6XwyrBrgeExOhUF9tOmefoy78KOgQ3C1Qg
         PAlvgNwbA9tNr7yraCBEVo3bVD7x9tBdtN87m9VQ9DCGPxWRe4kG8D6jaQYHkAqSV2bQ
         cC6x98PwqPRlqm4YkPqNZ+ediaML9Ch2i5uKL59RZje/WQ3ZbvWGO4qJUV5ewhU4s3s4
         oKVaMxNnlHJ+2FVVE1mYt8GkgLTXlV3nBZIDjiDhtqt5QOd0C39lQHN+4hdl576qkj7t
         V9Sw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oguUc+kb;
       spf=pass (google.com: domain of 3cw-cxqgkaoiqeirrmglksskpi.gsq@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3CW-CXQgKAOIQEIRRMGLKSSKPI.GSQ@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id m188sor4363114qkb.101.2019.09.18.10.53.14
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 18 Sep 2019 10:53:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cw-cxqgkaoiqeirrmglksskpi.gsq@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a37:8d6:: with SMTP id 205mr5340763qki.308.1568829193722;
 Wed, 18 Sep 2019 10:53:13 -0700 (PDT)
Date: Wed, 18 Sep 2019 18:53:04 +0100
In-Reply-To: <20190917231031.81341-1-maennich@google.com>
Message-Id: <20190918175304.219849-1-maennich@google.com>
Mime-Version: 1.0
References: <20190917231031.81341-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.237.gc6a4ce50a0-goog
Subject: [usb-storage] [PATCH v2] usb-storage: SCSI glue: use pr_fmt and pr_err
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, 
	Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oguUc+kb;       spf=pass
 (google.com: domain of 3cw-cxqgkaoiqeirrmglksskpi.gsq@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3CW-CXQgKAOIQEIRRMGLKSSKPI.GSQ@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
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

Follow common practice and retire printk(KERN_ERR ...) in favor of
pr_fmt and dev_err().

Cc: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: usb-storage@lists.one-eyed-alien.net
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 drivers/usb/storage/scsiglue.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index 6737fab94959..afc4e3221369 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -28,6 +28,8 @@
  * status of a command.
  */
 
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
 #include <linux/blkdev.h>
 #include <linux/dma-mapping.h>
 #include <linux/module.h>
@@ -379,8 +381,8 @@ static int queuecommand_lck(struct scsi_cmnd *srb,
 
 	/* check for state-transition errors */
 	if (us->srb != NULL) {
-		printk(KERN_ERR "usb-storage: Error in %s: us->srb = %p\n",
-			__func__, us->srb);
+		dev_err(&us->pusb_intf->dev,
+			"Error in %s: us->srb = %p\n", __func__, us->srb);
 		return SCSI_MLQUEUE_HOST_BUSY;
 	}
 
-- 
2.23.0.237.gc6a4ce50a0-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190918175304.219849-1-maennich%40google.com.
