Return-Path: <usb-storage+bncBDF7X5HH4UNBBIET3PWQKGQE5FZ5SAI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F90E700F
	for <lists+usb-storage@lfdr.de>; Mon, 28 Oct 2019 11:57:37 +0100 (CET)
Received: by mail-yb1-xb45.google.com with SMTP id g135sf7838346ybf.1
        for <lists+usb-storage@lfdr.de>; Mon, 28 Oct 2019 03:57:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572260256; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hzru5WrqIPODUGGUiT+cFcXWYm/Vgxy3MmBgeZA/LgT9TBwEDFZOBeYOkP/zIfLQb4
         pjlEb3JZwSgxretA56540EcjKhr1nyES3ecNXVLRtrAfgK0xVLP6JH9iR7DjTbp3purD
         6scSCFDWmCSPGWoqB6LDddsdvU6PtVn3LqkOnwAbazKaZi0+7p0CcGvnIzd2xHs4s7GR
         53yDe0ez7aL9GptC2yi3F5H6S2gOd0EUecjUfbyual3XMTrNPpjRcaCDRFBVtf0Tzzb4
         BxWUnL7BjzxG4oRSua+OVESG+XC0BVDvoItufobqawyAmUSm+kacKawduIHG5T+Lop4E
         c2cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:wdcironportexception:ironport-sdr:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=28FM4Iaf5F4Y8eDmDEvnsOAVoqUyKz4SdwMnvzL8UeM=;
        b=T9iE7oPqJoFHQGwh027dFOa6jbK3W2EdgV25yOQ/7u6UJDpHoHz/8VWM9RXQXyQTZ6
         J7XAzxg0wnyWg+ydp8y2O7atLH3EqkYKCNWxFpavb2RAvlpCnIDRllJNTdi3EBENjMrh
         Vg1nOKNRchafrROZA+v816ymsNTMPHKBjRafoeXp53LzWEJfGTMKmEB5YCOXtJ9U0Y6x
         +OAunMfJoXb7w9uKfvqxQnKFLVx5we6nEU1rmA1PBoCTghw9pNzJtH6BnSN9NcMHVRQq
         wn8zMXXzL9//bG8smaM1viajkX2Pii3Z5egczYkVUEoG3jeoi9oULl3n/LUiL9z881Vc
         VP8Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=Q70I8I6I;
       spf=pass (google.com: domain of prvs=19766d7de=damien.lemoal@wdc.com designates 216.71.153.141 as permitted sender) smtp.mailfrom="prvs=19766d7de=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:ironport-sdr:ironport-sdr:ironport-sdr:wdcironportexception
         :from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=28FM4Iaf5F4Y8eDmDEvnsOAVoqUyKz4SdwMnvzL8UeM=;
        b=U93qQVB7ddRH2q8AY+nSIdRF49GPFcUhUejzANve+jiDiWbvNf04zbL8z2r4oW0P+V
         Xvt3ntyC2jle1MTq+ygJwqcBQZpyyHNv1Coiv3jt4eylwTCvhoz1Q39mrr9lo7Ff1mVC
         gE+XJboltqaP4rmMbPUjygJURT4EcaY4QLn/A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:ironport-sdr
         :wdcironportexception:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=28FM4Iaf5F4Y8eDmDEvnsOAVoqUyKz4SdwMnvzL8UeM=;
        b=Q41bZdBiavSubUVMUqh8Oq3BLIZ+/10/tlThIM2++pxl1TtR8hdnpNmKvPZlvVx6Dx
         J5fa1PrDuRZ8WPXmdDQCb2EN2dOS+k34xkX9Oi+ikxLmra0nnGLf1uQbI0jBMeRY2ArQ
         KI/pD6UbxCWHnANYSHED30d76oOzNiyHLh2J93i1JFvh1rZzF7VP2mVZ4srttXGHVyus
         g2V1sESAahQMWQYVVUtUgC77qjMygT9WPz7AkSwTCBqNDr/x8luKFcTXO/XqphaM/Fiy
         tMr2uKhhkubQHnpvMK9Hap9vwU/Jyc4VXmHo7xvt0gNeU1ht5V57MBYer+9ZETSlbQpp
         tThg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUqA9FcaUXL/ljaEYGcps1EIaB5aqgv0c55WYBCgd2LbweVq7C3
	7UXdIhhDi6FFtQhSRxwyo+sUjQ==
X-Google-Smtp-Source: APXvYqwHRFMZFx8XXzcXIAlpxlvpnv7V/bWxR/N3/+SOv346yC+s8lxMn8H0lLpy+jtGRlAiCQLPpg==
X-Received: by 2002:a25:bc4f:: with SMTP id d15mr12772985ybk.326.1572260256465;
        Mon, 28 Oct 2019 03:57:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:c04f:: with SMTP id c76ls2600721ybf.10.gmail; Mon, 28
 Oct 2019 03:57:35 -0700 (PDT)
X-Received: by 2002:a25:14d6:: with SMTP id 205mr12866356ybu.230.1572260255672;
        Mon, 28 Oct 2019 03:57:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572260255; cv=none;
        d=google.com; s=arc-20160816;
        b=FM+I4Zipf+aRYVExrxUYM2zowFfRSaXw02erQVJpCb2VUBw2i410s+sb/Q4SWukeev
         AsGsi/G1PsFxabG+Iwj3Xrtusczy00mA5CNj30mL6WpRgniM2JVxLXPy4071q0bl34Y+
         6Q1yzefWIP+rIEWKV+fCGjY0h8vypIa/hdyLNKWPssk7n6ZTnLIbhH7TRVBBpJx7z++W
         aeriPgpyyYW4HIBvRW5WLx2I2APdQ7tANIy5rrro3UZgKIa8d42SzSB1XG6xt4EhcFOx
         JEbnnYzmncMg5PLY4qiQxzzJTaSdTRLZ75wpDLjHjoQkI8wYWNnX5CahjhTnLfJB4fnl
         tPZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:wdcironportexception:ironport-sdr:ironport-sdr:ironport-sdr
         :dkim-signature;
        bh=Ax93Zyi13lUBJj12L/ulLmqzrz8dH3/YRjYFxOe0ayM=;
        b=P5okZfZubSYfCAb13piiusN6xE7TiTvRY38njDQVYVd2F2wYTmEXUYcssRNsJew7MN
         5X6slJz5itspwV7Xrdh/YPzWmhX8kUZ3Pz657TVxnG9OOiKUSIPpyQ/Th4gvw7nDqej9
         6n3NvMommcsIDycoBJeFUOAz/0KH83d+5V1iO+ymkrQejSdqp56SWsgvZEUcj9BDfTY8
         QoPUfxfEYFuPp4c9Unq5owRSeVgJg3yx0WGUUSufYKxBBkL7JKU84HNkKy65pFcME1YB
         f/MS/rMsUuMm5uJG3RIDBhc0jOglPqKXjie/HHQ43qSSeCYqMmpW7Y59JVl/u+30xWXu
         hzEg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=Q70I8I6I;
       spf=pass (google.com: domain of prvs=19766d7de=damien.lemoal@wdc.com designates 216.71.153.141 as permitted sender) smtp.mailfrom="prvs=19766d7de=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa3.hgst.iphmx.com (esa3.hgst.iphmx.com. [216.71.153.141])
        by mx.google.com with ESMTPS id r189si6358896ywg.32.2019.10.28.03.57.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 03:57:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=19766d7de=damien.lemoal@wdc.com designates 216.71.153.141 as permitted sender) client-ip=216.71.153.141;
IronPort-SDR: yfXQcSXz+lEYaV+mw8V8MTxA1dlP4SFZYo4KB3oaaXDOjxfUCMtkxUFrkIe9dS11QA/VcVws//
 vjxwx+f18D76gw/Ze55O5mJ1H8zWzthQmJjKj6t9c6a0tGUTMwdoByf/9MU6DmxCiGSmWMQUgk
 dXmkbgEyYKHwytL7nxks6CNRTD4nnxeK50fqJjwexyN3b7xV+CD0MLJ4RXRgaWTPrDJl95hFiB
 LfIvi4psx88CxqxbfChwRWqKphpba1avOJ+/PvKurAO1UxYceNeHtB9th7xMuetqC57EcHf3ck
 T58=
X-IronPort-AV: E=Sophos;i="5.68,239,1569254400"; 
   d="scan'208";a="125891401"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 28 Oct 2019 18:57:35 +0800
IronPort-SDR: eTWs15BKX1SZtnvF6rr2+98SuiVt25v/D2e+9hcHDjV3dAKmJzVV77Zrl2+I40/Qr60DCMgLT8
 EMy4pBNxDV5Zooqq4Nw4OnLM+asfwC0GJS4cnRFyheoPnL+5fC161r3QS8NzDuJ4BqPZLA6mxH
 0VctR0CkpvGZZ8D92oYDlZS4cVGXO9A6Lv88GbyWRGXZGNdG1uwEqXl1Qaciveq0THJ9M26ozA
 JBWUKjwm1TEH9MNDhQvJ9mLzS4ag/4qW2TWJfPD7TS43kl1pdntchRbxqeNnQYSS6+ezqiVcbU
 peOKD2Q5ypWynAEMX8HcYvOF
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2019 03:52:56 -0700
IronPort-SDR: HF+d3JKARyFvJYiVVFrIfJUDiGbVDvC+DpJK0P98J87M+BaVK7PE3AJ29odtlXd+wxKO1TZpSZ
 4t3cL6MEj8FlE5KZ65xk0U0lfUbtFhfwSbgpVTX1wOVPwTe6VhJY0qzq7LkBJ0qWK2iWjf+AVo
 uKYz2KzdhccfuG/9ucm/6Bj8vW49UQjmcdAK4qKuSu8pjgYNzhht9Qc8L/Y1UqQZnhQCtOxsCy
 XYUleEXeLE+gF6g1UxI7kaxkuOVq+EJNaFa3pdvbADzYk0g8yY1uSDdBRojBypHkKl0Ht9+KMj
 sLc=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
  by uls-op-cesaip02.wdc.com with ESMTP; 28 Oct 2019 03:57:33 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-scsi@vger.kernel.org,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] [PATCH] scsi: Fix scsi_get/set_resid() interface
Date: Mon, 28 Oct 2019 19:57:32 +0900
Message-Id: <20191028105732.29913-1-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Original-Sender: Damien.LeMoal@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=Q70I8I6I;       spf=pass
 (google.com: domain of prvs=19766d7de=damien.lemoal@wdc.com designates
 216.71.153.141 as permitted sender) smtp.mailfrom="prvs=19766d7de=damien.lemoal@wdc.com";
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

struct scsi_cmnd cmd->req.resid_len which is returned and set
respectively by the helper functions scsi_get_resid() and
scsi_set_resid() is an unsigned int. Reflect this fact in the interface
of these helper functions.

Also fix compilation errors due to min() and max() type mismatch
introduced by this change in scsi debug code and usb transport code.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 drivers/scsi/scsi_debug.c       | 4 ++--
 drivers/usb/storage/transport.c | 3 +--
 include/scsi/scsi_cmnd.h        | 4 ++--
 3 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
index d323523f5f9d..4daf2637c011 100644
--- a/drivers/scsi/scsi_debug.c
+++ b/drivers/scsi/scsi_debug.c
@@ -1025,7 +1025,7 @@ static int fill_from_dev_buffer(struct scsi_cmnd *scp, unsigned char *arr,
 static int p_fill_from_dev_buffer(struct scsi_cmnd *scp, const void *arr,
 				  int arr_len, unsigned int off_dst)
 {
-	int act_len, n;
+	unsigned int act_len, n;
 	struct scsi_data_buffer *sdb = &scp->sdb;
 	off_t skip = off_dst;
 
@@ -1039,7 +1039,7 @@ static int p_fill_from_dev_buffer(struct scsi_cmnd *scp, const void *arr,
 	pr_debug("%s: off_dst=%u, scsi_bufflen=%u, act_len=%u, resid=%d\n",
 		 __func__, off_dst, scsi_bufflen(scp), act_len,
 		 scsi_get_resid(scp));
-	n = (int)scsi_bufflen(scp) - ((int)off_dst + act_len);
+	n = scsi_bufflen(scp) - (off_dst + act_len);
 	scsi_set_resid(scp, min(scsi_get_resid(scp), n));
 	return 0;
 }
diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index 96cb0409dd89..238a8088e17f 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -1284,8 +1284,7 @@ int usb_stor_Bulk_transport(struct scsi_cmnd *srb, struct us_data *us)
 
 		} else {
 			residue = min(residue, transfer_length);
-			scsi_set_resid(srb, max(scsi_get_resid(srb),
-			                                       (int) residue));
+			scsi_set_resid(srb, max(scsi_get_resid(srb), residue));
 		}
 	}
 
diff --git a/include/scsi/scsi_cmnd.h b/include/scsi/scsi_cmnd.h
index 91bd749a02f7..3772ae5d40cd 100644
--- a/include/scsi/scsi_cmnd.h
+++ b/include/scsi/scsi_cmnd.h
@@ -190,12 +190,12 @@ static inline unsigned scsi_bufflen(struct scsi_cmnd *cmd)
 	return cmd->sdb.length;
 }
 
-static inline void scsi_set_resid(struct scsi_cmnd *cmd, int resid)
+static inline void scsi_set_resid(struct scsi_cmnd *cmd, unsigned int resid)
 {
 	cmd->req.resid_len = resid;
 }
 
-static inline int scsi_get_resid(struct scsi_cmnd *cmd)
+static inline unsigned int scsi_get_resid(struct scsi_cmnd *cmd)
 {
 	return cmd->req.resid_len;
 }
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20191028105732.29913-1-damien.lemoal%40wdc.com.
