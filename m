Return-Path: <usb-storage+bncBDF7X5HH4UNBBJMUXLWAKGQESRV5XSI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D189C0DDF
	for <lists+usb-storage@lfdr.de>; Sat, 28 Sep 2019 00:16:07 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id b204sf2871180pfb.11
        for <lists+usb-storage@lfdr.de>; Fri, 27 Sep 2019 15:16:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569622566; cv=pass;
        d=google.com; s=arc-20160816;
        b=rtlZF7AC3xV+ZAdvGFSFb9Fk5mQUIlMHMMVdd2ZZy412/zi7QUskNFFXZnpZvYBlkK
         mkqqueXvV8k9krwJLg78ISi+GC148c0FYrurFbshN5zIoec7zon/yS0bh8OkJpbQoOkY
         emzJPb2jqtIyHxIVcs8Cz3az/PnK0V5BtS3LN2wJuNb8/CrQUzElJzofMI4w19aNZoEl
         pnYfpwhwyyqE5NEflxtosYb0Iegst12TKuKJEeeDJTJTfvvJev8D8qOMIFcElZ47mtRZ
         jtlakIb0ASd8MlzPZdJkxi5XKUZP9c8gL0Iashr/d1N0t34VLVtEk7DrHAMA8uv5TuvJ
         1BbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:wdcironportexception:ironport-sdr:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=gyPdOvasIiGMtQcduT2oNT1g3sFsOQHs2hnPdlGakMc=;
        b=D2rf5Xur3WxCRyOXm2n62omAi3zceORSH3eN36aFWwvft+q9z817KSd4v7ehZAmGwQ
         7xuiyuSazEDkH2DCtUupsn65zStzfj17ahEHn5PZkXC5zmuuiiP5GDTMg/LEVBzepzAs
         oZM2ZGeFloqi1Gc1SL1urLBieAMkTF4eKfe4jiE/fFpEGWljxlmU+L2HxOIW3PJ75Nc5
         agq9/VGAckzyKWTeqPiegSt6QEWFTlS40nmxIffsQXHoX5z7yIH8QjAQHqsFuv9YZs11
         Vv0cjRagWH15P+JJvxlVRaYUk1hJBkmh+0GpN6Ak/zrVzuPeLJEEmVqzbAwNFktMkJg+
         YtbQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=MiMu5vGa;
       spf=pass (google.com: domain of prvs=1668f5126=damien.lemoal@wdc.com designates 216.71.153.144 as permitted sender) smtp.mailfrom="prvs=1668f5126=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:ironport-sdr:ironport-sdr:ironport-sdr:wdcironportexception
         :from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gyPdOvasIiGMtQcduT2oNT1g3sFsOQHs2hnPdlGakMc=;
        b=csW6lIQKRqeY1ufkx5TQU5oPdY2p3HIvxf2/+vSdpIvwq66N2LPmJ7qrn7Ovbq9JiQ
         nNRy2zpTjV9WIdGaCZZVO+5eG+z77SBTNZNNttg2i6s6wjPunGbyylfH9LcUfXL67Ts3
         8cGWq8NE53K4PNmy6dDe3CkYSoVLyMTLuFFa4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:ironport-sdr
         :wdcironportexception:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gyPdOvasIiGMtQcduT2oNT1g3sFsOQHs2hnPdlGakMc=;
        b=Fa/IU51G+apRgp9f+bxFrbqsvfSQS/wf/Gqq9stua5nqiOYt86WwPAZOwUQ+aalp1V
         ysR+FqL6aCSOI7Li+GXGyTUBUZULhthmQDjfApoNWhMGDRR9gMwaVJvBFD9n/MrPddzd
         gfcN6pxzUfBMkfUfomcXNxJOw9HJKTgTlulgOTFv1ZdLQMyYJoYxXOBF/cqCBZVaVcoH
         zKo4GRPD+GJHKws7GF3yd9u8fcvn1gaZtY6mPpq/7URwyOtLZSRwWHeKNiG3slVe5OF2
         Hi1LVftVNHdnIl7QVoZzLeJ0CdJDWSvrgGuKib+h6yfu7mw3mbVQ3D97rR3gcXevrrgK
         JWIg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVpZO5KDBNnPu21bCEGkAekc9aO/Vp7s5wap9SLYF6YgrkNMzGA
	hLMtm4/Uo2iILuoe1sQSrKF7wg==
X-Google-Smtp-Source: APXvYqyLHC5PqL7BFO1lTFeGOugbbbl6NtcIP+n/ywHumyJQGK+Jd1UxKQa7zRba+SVlX1B1zFD3OA==
X-Received: by 2002:a17:902:ba82:: with SMTP id k2mr6945337pls.293.1569622565854;
        Fri, 27 Sep 2019 15:16:05 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:5f90:: with SMTP id t138ls1586986pgb.13.gmail; Fri, 27
 Sep 2019 15:16:05 -0700 (PDT)
X-Received: by 2002:a65:4145:: with SMTP id x5mr11610147pgp.259.1569622565254;
        Fri, 27 Sep 2019 15:16:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569622565; cv=none;
        d=google.com; s=arc-20160816;
        b=DfMoMWKa6hWgPsBlESFopWX4OZ4x/aDFCAnZUUiHXGR4IPYbAk87ol4aj1HiwmTzT0
         6vqj5reKsFf4PDRgWiYXEKtLEetgAnaz568LI8PSO65M/p4WiW4fY0h1FfUkKmRLFz/s
         IPsZzaVF95emROgA3pWFIPmLy/lS//8YigmWmSPwsSpz3o5Gbam2m8qlyrvdUf43Tj14
         k/0qKRTW3ZH2GAg2KQNwoqp9T4W+ZiFaMF7sjhbPzCsOi4fblLnYvs6NMiD2LRjJjoYO
         2hdoBVDCbpZJDvqMQHNjZDGTmEWAMW2iclnkXyYgDtIJUK5DrxoJ56AX6XB70X+eOihj
         o8UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:wdcironportexception:ironport-sdr:ironport-sdr:ironport-sdr
         :dkim-signature;
        bh=3rt8DgfqpNSUtsPL9rufFrGYCliTM3AmG4mh+fi+MuU=;
        b=jcr4Eo0CEI7oJlqUhhBUCF6IDOuqBkmGoc/uzs9hEjbB7clCBgAfh7waPO9DCjuFtr
         RsynCl+7WSQEQSUoqOnraILCGqdW8bJXUbRNFoYkbkbpBjQHzX20tA+NKvmGGzFfUwdh
         m0I50ZZNFrLGDFSsXYu4R5EGfB2XbEwvJO8NsCccyWUBxlYdMKrd1bd1iznhj7lu5SL4
         O1s1krr9G9EEImtPqiig67yYtHOQIT3V0CEk+/7DL5/8uJR/2sYGTL/2TJNvziMjru9W
         6QUuqBPT4xYx83GnrEImzxuIjNAhr55XM/OXJRnLfbRzPVutHxy0AezSMOxLhLID+nRp
         PopA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=MiMu5vGa;
       spf=pass (google.com: domain of prvs=1668f5126=damien.lemoal@wdc.com designates 216.71.153.144 as permitted sender) smtp.mailfrom="prvs=1668f5126=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa5.hgst.iphmx.com (esa5.hgst.iphmx.com. [216.71.153.144])
        by mx.google.com with ESMTPS id j15si7004902pgs.543.2019.09.27.15.16.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Sep 2019 15:16:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=1668f5126=damien.lemoal@wdc.com designates 216.71.153.144 as permitted sender) client-ip=216.71.153.144;
IronPort-SDR: GDbcod+iP3Qg3oHheOisKHVMPNZaWo7qRyzTCdNXDxmnO83p8/fFAvD5gioGYSHuknVdIhePlM
 iDBlbVc6QMHyJhvY3VtOKoN9UEFBKhguCrwxWWxH5qxLcfc5JIYuDn187yDEnWNVwJ43XfippP
 gsWvgNVmO+Ha+5ins/3LZThcgAi6CMIqXxBbNDvn/mXImtzuNOUC+nqaIwl7tEvJ60/ipJFf7y
 auzQfu/OKFbC0+gdH8ZyV0t9ANU8KHZ52QbqlW4aqB8cRAyMnMr0kabIYURpoF8X28y4tjy7Ip
 OCc=
X-IronPort-AV: E=Sophos;i="5.64,557,1559491200"; 
   d="scan'208";a="120087766"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 28 Sep 2019 06:16:05 +0800
IronPort-SDR: ztySKk6cmBWxJJfVjftthHWFqQr7CCFaRsQaGgTQFvyD8wmg3lIJn0byYFFWSFJGro/KrBqIgp
 XxsZVcab97KznKlxuDAF0Mh2XVMBDp+OVhHXfsmdNbmv33Nf8RcR15Ryz9k/l5K3ATNoTZUMAq
 E/BBs0kmVeiSKJ7Yd75uqmLwc0nkrwMWKyv7u+rHACxSQgHYb9mHxRrjm1LwsJ+gmdyzVKquZb
 DWS2E4L63aRaoi7lpMmOBiF2gIgXiE0XBlkCzkyZnTsGL9GhE2kNdCrUap6ZFhvwr7Z3PMqivW
 P+JheKsZsOXaGjIdZv07SWLc
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Sep 2019 15:12:23 -0700
IronPort-SDR: tZdmX3bdUZlvjWOiFTNad9aNGZL0A5zV+zzeyCfY2O0S9QYZEuUhbSKv8slyrY2npbGOKRuTp3
 xd4FOF0O5B7SSbq6rd7DIAMl3ga4rkV9CNJa7Y/N7wLYS8Y8AhxGCOPP707ckJctwLX+EpXsZq
 GenmHR0riYJld8fS5PRl1S8v55QRoXb+cAhzU3VlHiSjCbLFx0d8uAJbjEQfuaZb08Ou3YNt4W
 8jOWeL3vWhdWlOmn+6brOhbiD7Zuslbvs+rOP7/6e5m8CxsgpjzIN/UVkpIeYfLjfpL4fytZ9V
 /OY=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
  by uls-op-cesaip01.wdc.com with ESMTP; 27 Sep 2019 15:16:03 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-scsi@vger.kernel.org,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] [PATCH V2] scsi: save/restore command resid for error handling
Date: Sat, 28 Sep 2019 07:16:02 +0900
Message-Id: <20190927221602.27080-1-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Original-Sender: Damien.LeMoal@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=MiMu5vGa;       spf=pass
 (google.com: domain of prvs=1668f5126=damien.lemoal@wdc.com designates
 216.71.153.144 as permitted sender) smtp.mailfrom="prvs=1668f5126=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Content-Type: text/plain; charset="UTF-8"
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

When a non-passthrough command is terminated with CHECK CONDITION,
request sense is executed by hijacking the command descriptor. Since
scsi_eh_prep_cmnd() and scsi_eh_restore_cmnd() do not save/restore the
original command resid, the value returned on failure of the original
command is lost and replaced with the value set by the execution of the
request sense command. This value may in many instances be unaligned to
the device sector size, causing sd_done() to print a warning message
about the incorrect unaligned resid before the command is retried or
aborted.

Fix this problem by saving the original command resid in struct
scsi_eh_save using scsi_eh_prep_cmnd() and restoring it in
scsi_eh_restore_cmnd(). In addition, to make sure that the request sense
command is executed with a correctly initialized command structure, also
reset resid to 0 in scsi_eh_prep_cmnd() after saving the original
command resid value in struct scsi_eh_save.

Cc: stable@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---

Changes from V1:
* Dropped patch 2
* Add resid reset in scsi_eh_prep_cmnd()

 drivers/scsi/scsi_error.c | 3 +++
 include/scsi/scsi_eh.h    | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/scsi/scsi_error.c b/drivers/scsi/scsi_error.c
index 1c470e31ae81..f53828bf7ad7 100644
--- a/drivers/scsi/scsi_error.c
+++ b/drivers/scsi/scsi_error.c
@@ -967,6 +967,7 @@ void scsi_eh_prep_cmnd(struct scsi_cmnd *scmd, struct scsi_eh_save *ses,
 	ses->data_direction = scmd->sc_data_direction;
 	ses->sdb = scmd->sdb;
 	ses->result = scmd->result;
+	ses->resid = scsi_get_resid(scmd);
 	ses->underflow = scmd->underflow;
 	ses->prot_op = scmd->prot_op;
 	ses->eh_eflags = scmd->eh_eflags;
@@ -977,6 +978,7 @@ void scsi_eh_prep_cmnd(struct scsi_cmnd *scmd, struct scsi_eh_save *ses,
 	memset(scmd->cmnd, 0, BLK_MAX_CDB);
 	memset(&scmd->sdb, 0, sizeof(scmd->sdb));
 	scmd->result = 0;
+	scsi_set_resid(scmd, 0);
 
 	if (sense_bytes) {
 		scmd->sdb.length = min_t(unsigned, SCSI_SENSE_BUFFERSIZE,
@@ -1029,6 +1031,7 @@ void scsi_eh_restore_cmnd(struct scsi_cmnd* scmd, struct scsi_eh_save *ses)
 	scmd->sc_data_direction = ses->data_direction;
 	scmd->sdb = ses->sdb;
 	scmd->result = ses->result;
+	scsi_set_resid(scmd, ses->resid);
 	scmd->underflow = ses->underflow;
 	scmd->prot_op = ses->prot_op;
 	scmd->eh_eflags = ses->eh_eflags;
diff --git a/include/scsi/scsi_eh.h b/include/scsi/scsi_eh.h
index 3810b340551c..9caa9b262a32 100644
--- a/include/scsi/scsi_eh.h
+++ b/include/scsi/scsi_eh.h
@@ -32,6 +32,7 @@ extern int scsi_ioctl_reset(struct scsi_device *, int __user *);
 struct scsi_eh_save {
 	/* saved state */
 	int result;
+	unsigned int resid;
 	int eh_eflags;
 	enum dma_data_direction data_direction;
 	unsigned underflow;
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190927221602.27080-1-damien.lemoal%40wdc.com.
