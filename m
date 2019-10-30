Return-Path: <usb-storage+bncBDF7X5HH4UNBBI5G4XWQKGQEAG654PY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7C5E98DB
	for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 10:08:52 +0100 (CET)
Received: by mail-ed1-x548.google.com with SMTP id a3sf1158584eda.0
        for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 02:08:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572426532; cv=pass;
        d=google.com; s=arc-20160816;
        b=IgObHGsZti7LKlKU/ae2sg7o2bi3bV+TGuS1VOlfBvIDpP047aPT+9LoT9d90NwvWK
         MXiWEH+nTutX2Qxvjm0UYraNsQAPOx/rSVQob2SLHWaKfZSSqOegsXTlCMBwi/f1OLzp
         3vkN2aVWrXoeeyRQ6uAMlBobVMJAL6D0GtPCF2oZFi7AVUq5hAD+a4rQbu4ZCIqll74r
         FGzZmAG5xl527IQT7rBvCDbbklDpYAE+DxiqiFH2DlX9CzQ1ya18cVGsNXqys3G+9ZMd
         b7VC9jRttSE9vYe00GJGBMCwxd3yIvBDlv4RX0VeRtksLX9ZBkcwYbZzSLDArO3hO/Dn
         z8Yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:wdcironportexception:ironport-sdr:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Fk8+kwY32uAB8Viz4LkAS1NKHriNW3Zs8B3VYjvQiRs=;
        b=JJwZQWJXLiI1CXPHy7BHFOoVcN4ArWHR8R24WMLKPHWKSMVftfCm/HqertC6Llu+84
         jFa8kIbOC3p+TT0wjCwwqnG+QnvAbveNGVEKECCoz7V+Q/YDF+gRrDGKz8qd7n8Qh+I5
         NBRYGIzB1vW7VlltRvdlU9Ub9PVMDlMWWiuS2ruIyDMdCd0ob7FvWj2p4LtH7IDD7W/K
         3eCJpJ82ilziqEFBpJ2q95zFHKotQpcuJdvFG3HC2qiDEC/2Md2w5i6yrm7W/ab9qmrY
         ZV4cXz5/FDTgyM46OZ0uFZR+4fQ7kGUA8j2PKrm5pEYOGvXclqtKfGbaW82bvU6zgmrx
         vvSQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=AfatAtmy;
       spf=pass (google.com: domain of prvs=1993149a5=damien.lemoal@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=1993149a5=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:ironport-sdr:ironport-sdr:ironport-sdr:wdcironportexception
         :from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fk8+kwY32uAB8Viz4LkAS1NKHriNW3Zs8B3VYjvQiRs=;
        b=BkDcMw0yPr0hHG8UBYZ96z2OO6o0fPYhWoITyyVmylpYu7ffezr8VNnjGQmK1VQM22
         ArugrLQ67Jj0Rl5PWn/Nd0cupEqOpYLGpBvUG8tIkd0HoaX87rWM8F3N/EjKTzHNVAGf
         1fluTQ/5ERT1jKxdIH8vNWg4WPhcFx2ANxRTQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:ironport-sdr
         :wdcironportexception:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fk8+kwY32uAB8Viz4LkAS1NKHriNW3Zs8B3VYjvQiRs=;
        b=JnR3V8FMlXCeUukWIXQ3c0awQIqDk7l1nhMFcdDdZCcK2J75CVqWhyWaMRNcZfqGTN
         zZZicnJNCgNcbgTnJ+xvmlC+MCCi9t5ZkCjN2fRZEwYKwpuC1uD2M+UYz7giCiJkPh3l
         GZDr/kSyRA/UDrk48S6P+/X9BkFqlYaq7p1zGmDjEuplWHnV6tNLPjx7SIZq2vuGGjq5
         o/kBFC5KDHFD0Sf134kSl5UsAov4+dRZMiSAiNa/3yoEDeu27XgOMVAdz5pmyOVaKak/
         CwwlG9MV+vUETJ2wKCDPE6eQu+C7LgHUC3hGQezvW6knCfFaQ5IHGpcYVkxNr3iy9zIU
         cWSA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVnuhSz5+wl62R0pIBoOTxlArY0XMuJscPohgUnVV1tCJAL2fj7
	ru08NSGVSkvwRl3HQny8ZRfssg==
X-Google-Smtp-Source: APXvYqzTt6siaC5IWFk2K8KwRWK3TRozm2SKb/os9hfz82XNJ39Nocf77YsvQbRl0nqgsdqpEvUuUg==
X-Received: by 2002:a17:906:c08:: with SMTP id s8mr7891356ejf.73.1572426531891;
        Wed, 30 Oct 2019 02:08:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:907:405d:: with SMTP id ns21ls2353019ejb.6.gmail; Wed,
 30 Oct 2019 02:08:51 -0700 (PDT)
X-Received: by 2002:a17:907:40f3:: with SMTP id no3mr7668160ejb.95.1572426531211;
        Wed, 30 Oct 2019 02:08:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572426531; cv=none;
        d=google.com; s=arc-20160816;
        b=i1P7md2Zr/FgnF/ce0jALm3hgQBa8f6FslYePmuiRLFWNtmFsFt2ekYwLUXijbOKMV
         YcU10K/JlsepFZra00Sn4IXYvxjdtVAfcxA4dpH8ad3k6c98Tz+zZ/7U8fmumEmQysmE
         aR4a7vbf2CFmDEaayzH3pV2gvJtaPb1zQWH4jxqZrxr2HlH0ikYKxVByKRXRDbIGIN4X
         u5gHVd+WbK+f4UPTJAQEpLSPGvz1vwJTw/UmdWDBKvqFjhb6AjXifMtF1aKTbeYRpP4W
         CE/xZ+57V4u+e0gyrE4ifocPwyAErJI5ioZyEwSJyKMa8khDn5c8WyUAbs3ym5RyOkSz
         UMbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:wdcironportexception:ironport-sdr:ironport-sdr:ironport-sdr
         :dkim-signature;
        bh=7yBqILm8VuLrpg2b6XwL5FQ7v0xtqgdZWyY4P/nrfGI=;
        b=F50gNUssBxPWdRpHgvN2uakn79oVjyoyIkTFtzCZBulwvaB5yM4zvDoUbFy3v0l3Hy
         YTLbQHhYP9aRbmhrDekk6wkTzB1Yahf85GHbwV5CWvJ8VEHJd6Ct+iQUXOEOGX1e6BxD
         hXZ2WZ+sgsGAvQZOnS+mIHzBA3aKLLdS1y6Q12sXiXDqifnZNKMDvO4C39IsPNjCjITp
         s4EY+23a/ON3SkNWuHKNFHucRJGYjhsIgB/P0YpF6Ejwc9xDsBWUB/dMwtV33QWmOnt8
         bnz+/gjO43CVHxCeEZqHhXGi/VbIZ6SW+Pf0SIsSW4kxuiaBgN+twr5Iodxy7A/G0hWD
         VPMg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=AfatAtmy;
       spf=pass (google.com: domain of prvs=1993149a5=damien.lemoal@wdc.com designates 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=1993149a5=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com. [68.232.143.124])
        by mx.google.com with ESMTPS id g14si852712ejx.238.2019.10.30.02.08.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 02:08:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=1993149a5=damien.lemoal@wdc.com designates 68.232.143.124 as permitted sender) client-ip=68.232.143.124;
IronPort-SDR: UsTrI6OA10GJraY32OasbfVMlB70GgHKUqDQXeXGWHeF4C4QpC09NLoLb9WuDrs8/7usUALMLN
 w12j6N6J2XFxrialjhjN6BQsvM0c1EuTufyiGuDnyef7GKqHQF74YCY2LT2+gpeh4ScvoemLns
 ZYS+eRMKL7fP20mTL9bphYd5Ye5bp1Jeu0H2R68DFjemC9hU4zynZ774iUhm5q00IW9jjE2lrV
 ma5XRZ/ciQv4dfTG8N7Yq2b7Towgv06sOHevlJxUuYh7WkpvsLPAVYwUGAoAyDn85phGgGdWY4
 Avw=
X-IronPort-AV: E=Sophos;i="5.68,246,1569254400"; 
   d="scan'208";a="222808992"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 30 Oct 2019 17:09:23 +0800
IronPort-SDR: Y4YjXn4lIAcB3h3jRlgF4SNb4oMozYEy7qmrnMydDvqZIifYLc4CkIbtIYk8aCjBPwMyrguZ80
 /rkIWLivIj7EwcYN3P6lJ8buocertg3kEsDxH9zNJwsDC/u6mWyxO7NiEgebGfP+U5vbv6n+zs
 cSRPQP5aURcV57qTQOoS8VUIw5MOmszrfG/gqUoqMtJtZEkID3ysTFZbWt+FQPt0i3RlLU3ZDT
 GrTzLggv7gOpHgPKR9PX3YxyT0/pHaHrWiR6uUHrYPmyW26MnHHGyYHbPoP3Bxpclhos5zD8DP
 gBao0GK7XhUBoMh1sSDcpNN4
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2019 02:04:13 -0700
IronPort-SDR: Cou+fOihshBb2UI9JhKi7kP4O6lQHN2/lk6/vis2elXlhA7E8O56rrV4pMg+bwyn/hIRJSY18M
 G6VLIctIWULMJH4fbTaqX6g2dDBmeIsv8h82QW4jH7pE/7s1kmaIDCrCUg/10CE39I7okN3Nwg
 g7oFeanGAWTE7C1X3fZ0QsSWBn9UG2c7DcM3hOwOZvrucReqLDtQ4cIIybTHkSfiA4cbg07r9x
 pKl4CZ725hpGqR1fsQtx8Loo0CV8iLOHzFfo6whLSkps89ORJu9i/C8AIs/6RRMaqHfRK2MHnr
 JWU=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
  by uls-op-cesaip01.wdc.com with ESMTP; 30 Oct 2019 02:08:48 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-scsi@vger.kernel.org,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] [PATCH v2] scsi: Fix scsi_get/set_resid() interface
Date: Wed, 30 Oct 2019 18:08:47 +0900
Message-Id: <20191030090847.25650-1-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Original-Sender: Damien.LeMoal@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=AfatAtmy;       spf=pass
 (google.com: domain of prvs=1993149a5=damien.lemoal@wdc.com designates
 68.232.143.124 as permitted sender) smtp.mailfrom="prvs=1993149a5=damien.lemoal@wdc.com";
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
introduced by this change in scsi debug code, usb transport code and in
the USB ENE card reader driver.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---

Changes from v1:
* Fix compilation error in the USB ENE card reader driver

 drivers/scsi/scsi_debug.c        | 4 ++--
 drivers/usb/storage/ene_ub6250.c | 2 +-
 drivers/usb/storage/transport.c  | 3 +--
 include/scsi/scsi_cmnd.h         | 4 ++--
 4 files changed, 6 insertions(+), 7 deletions(-)

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
diff --git a/drivers/usb/storage/ene_ub6250.c b/drivers/usb/storage/ene_ub6250.c
index 8b1b73065421..98c1aa594e6c 100644
--- a/drivers/usb/storage/ene_ub6250.c
+++ b/drivers/usb/storage/ene_ub6250.c
@@ -561,7 +561,7 @@ static int ene_send_scsi_cmd(struct us_data *us, u8 fDir, void *buf, int use_sg)
 		residue = min(residue, transfer_length);
 		if (us->srb != NULL)
 			scsi_set_resid(us->srb, max(scsi_get_resid(us->srb),
-								(int)residue));
+								residue));
 	}
 
 	if (bcs->Status != US_BULK_STAT_OK)
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20191030090847.25650-1-damien.lemoal%40wdc.com.
