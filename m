Return-Path: <usb-storage+bncBCS25756ZQFBB5MJ6GXAMGQEKMH6QFY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x347.google.com (mail-ot1-x347.google.com [IPv6:2607:f8b0:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D154866B93
	for <lists+usb-storage@lfdr.de>; Mon, 26 Feb 2024 08:59:51 +0100 (CET)
Received: by mail-ot1-x347.google.com with SMTP id 46e09a7af769-6e49732cc86sf1603933a34.2
        for <lists+usb-storage@lfdr.de>; Sun, 25 Feb 2024 23:59:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708934390; cv=pass;
        d=google.com; s=arc-20160816;
        b=MmpoROayOJ+QilsDB3l8qkg5GckRP4vdZh5N6YmylUwTdLPUEQlEPEAhfvBD0GGR+Y
         UXaiDo8Sj/5IeI/Zg0bnmtc+kbigdRNd435SCVSELwOPv+neJ6Rzxl9OldIvwY0jc3be
         dmkyiiQyaXafV5+mLBeBGwMB6NmqA4maegN1HWIy3+vm2EPUVlS4J4N0HY6LbNbDQJi1
         i/hzMIi7SYYa9Dgv2UehE9fCFiXI8i93VU/HPII27Az7Mlx6UeVmA475NRdCYy48JJlF
         J41+9o6wZ10+7vSG38z88trvX3qehvxT0g+wphlGIMoOCQuNEgVqcPQl+GCTw/Bd4Wyq
         3Vlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=nGYbE8oPW7B1GolP+MdbaoHNQdeFvqxImEMQ6kP3SYw=;
        fh=1gf0+bKIKvAZNTENKC2BUa9LWZv0Z+IGJSNjKb8UXU0=;
        b=xOu/OPbI7KchZe3Tz2vg67OnvAWBI6NcjDq2P+pFp85BPqtH1vKoSfJTtLYs1Glyeo
         U03EUeugWMvpicu3vhmBK5xwKM+P1rrFVqBSFEQpykna18BshRJM2NSNEdtGttpt+ybA
         GHL9WuMoc/M6FfiGqxOQQPgpaoz4sUDJawnnP3orsS688tdf3lq/c5iqQX+Nrhfg/l2h
         tGndd6ucVyufvf36xgcCgB3ZRZ4PjI9nsoMVVLq9YMV2sT6X2XszoSfAr+4fFoWfeZsO
         HTinn+mNWtDHRuZm6unBpjFWT23OyucP/oj8oaevxgkRADmgqRy6wSX+9mxZDRkQ7Hnc
         mLQw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of huxiaoying@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=huxiaoying@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1708934390; x=1709539190; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=nGYbE8oPW7B1GolP+MdbaoHNQdeFvqxImEMQ6kP3SYw=;
        b=SV7ZyRGgx7uVstwcjWMhHDgdYRTHC1jwK1HqrbFBNbJJkyxiHYKE9muJUZIWClmveM
         lw/zB6AMw7J4gJgYHmlWbQ0EszWSZEi88Xub7/PeJ0JFT3bVf+G9Cw4g49e6SZ+GYXfi
         xLw7PYmONi4FDIytrmG6QUMTPjGZ/kITDKbqQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708934390; x=1709539190;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=nGYbE8oPW7B1GolP+MdbaoHNQdeFvqxImEMQ6kP3SYw=;
        b=nIRJ9wsl6eufOCHB1O6uVQiWwmL1Lj4sIDTCldnwKnEAAs0d5GUx2mQgKsxbGjCzmR
         hSrxCjoFMSurgtFSbX3mCt/JGhU02IDEYFZjP0YIHDgUKIZU+5nFTW5c/el26Yp12Kzl
         YsN2mIXOwxN0UDu6rEtSVtdWa8lXh7za4qoHQ1FTrIieeOyegMPxtZuZ8BkG/0WGB6Yo
         IUyrIeAeHOjY6uPeydEwXwazu+FJyFe2aze9MEXY863esMh4Hvppkn3hh6+r6uj+mfPO
         rmkkhO2Eufn3QFt9fp2ruEJN4aW6zqLAXUyCNHs2p0MFxEvr/uM7kdNMUTzliM1lqxJg
         pgkQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVp5UGlr3nI5bFDj5a/gNqiGtI44GFNufOWxiGqzg6K2ZuJBGBdyvtvyqHOgvUwx6GnulP0+4kuAq/25RU3s00uMqb2TM0aAfTa
X-Gm-Message-State: AOJu0Yxf9BYidTxKFWtMTSk8JV2kOnHlDLfdJ4du+57qQUNbSrl1qj2h
	2iKYMweNq/ImkHS+QhDBFAKABM32Z0GXX/cLp+jUXOtD/dZZCtr5hIpOtTsnDqQ=
X-Google-Smtp-Source: AGHT+IGfEpBO1EuxKBNPnbPp3QnvqRNBve377HnkvoOwQ/e4kA7uV22NCpvml3h5FWmL8uK33dMPpg==
X-Received: by 2002:a05:6358:7627:b0:17b:304f:b2b with SMTP id r39-20020a056358762700b0017b304f0b2bmr7033717rwg.26.1708934390008;
        Sun, 25 Feb 2024 23:59:50 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:7297:b0:1d8:e1ed:d587 with SMTP id
 d23-20020a170902729700b001d8e1edd587ls968273pll.1.-pod-prod-09-us; Sun, 25
 Feb 2024 23:59:48 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXc5L+lGnkqmTefIfhE22Bk8Od9g33IkXvbXrYvPfo9VSz2tCIP+1Jj8MgkTwxiIe8d2osRkHpomA7ZKctQCMsZOOpAqnmoeuxmI85DZzxQD0E7HP4=
X-Received: by 2002:a17:902:aa4c:b0:1db:de64:97ac with SMTP id c12-20020a170902aa4c00b001dbde6497acmr4579396plr.15.1708934388321;
        Sun, 25 Feb 2024 23:59:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708934388; cv=none;
        d=google.com; s=arc-20160816;
        b=kCiKabQFUdyKx6rhErGhRvQLcdrgVSjHC3NTye075SJwN73Xnm/mmFO0AdTVdpazT+
         tEDUDI1WMZY1PqzdUqSpL+Ce2t6g9ISFEPpml4iFOOLwf+FeLRgR7ApULO7p39/y/riR
         6L+bgOqyb5PlJ1Y6YcAOBFJ5120PJyyWWSNNZ1O651VFmE/+RG9onyp0dcIu7Xynhlo0
         udKQD8Pu7+4pZL+BFVkDLlsgK3VhTE26k4g/G9muycKEGHvMgHG7S7cTzPELZvz/l645
         meSfj6JsXQOdLkZDc9HqmDFVjWzTRFJtHGZ2Nfs/qFTcLy27jTagFPNqhtj8lyxBoq4Z
         qi1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=CfzzEFaDFfCZN2bsZTQRtNy3LhQMF0FIf2theWzVsk0=;
        fh=FAooH7GKYYyIXakJ97bU/D9yPwMuBGyjp3/Wi/5Lzlc=;
        b=HZqgti/VahlsC2jML0TFiYLEFPp1qO7UYhqMDIs2xTHvNDLsrtE2Tf6V96gN5SDyKZ
         28zWXyGhTszpyS1cKTUAfGioUr3lR6nDwuw+MJMIl3Dz5ka5eQgdYiF2cXLMJQ7gWUr/
         9E6gk9E21ySdNBGVgqMhOIH1xGcATPWvHNVw28pzGfFsrbH/5RjbloY50cpHMhlaJ+yM
         HX2LM0vWLTkQur/i9BhLM7/5IMSG6eeLtAAs6uwrTX5He7kqX61j7B2U3Z9OzBolVbGM
         j8htw2HaOMPiC4kvGaLpdSw98grUqdb9ul7j44+E1Su0TbU5ziiurQFQReXO6BuiVqCx
         0T7g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of huxiaoying@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=huxiaoying@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id z14-20020a170902ccce00b001dca5fa8c28si987565ple.243.2024.02.25.23.59.46
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Feb 2024 23:59:47 -0800 (PST)
Received-SPF: pass (google.com: domain of huxiaoying@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: c414adaebff1491ea3c435d69bf18d7c-20240226
X-CID-O-RULE: Release_Ham
X-CID-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.37,REQID:78a62de6-603d-4ccf-97e6-01674f37df55,IP:10,
	URL:0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTI
	ON:release,TS:-5
X-CID-INFO: VERSION:1.1.37,REQID:78a62de6-603d-4ccf-97e6-01674f37df55,IP:10,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:6f543d0,CLOUDID:63bad180-4f93-4875-95e7-8c66ea833d57,B
	ulkID:2402261559416CA0LJEE,BulkQuantity:0,Recheck:0,SF:17|19|44|66|38|24|1
	02,TC:nil,Content:0,EDM:-3,IP:-2,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC
	:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_FAS,TF_CID_SPAM_FSD,TF_CID_SPAM_FSI
X-UUID: c414adaebff1491ea3c435d69bf18d7c-20240226
X-User: huxiaoying@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <huxiaoying@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 51673992; Mon, 26 Feb 2024 15:59:39 +0800
From: Tom Hu <huxiaoying@kylinos.cn>
To: linux-kernel@vger.kernel.org,
	stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Tom Hu <huxiaoying@kylinos.cn>
Subject: [usb-storage] [PATCH] usb-storage: Add Brain USB3-FW to IGNORE_UAS
Date: Mon, 26 Feb 2024 15:59:36 +0800
Message-Id: <20240226075936.1744353-1-huxiaoying@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: huxiaoying@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of huxiaoying@kylinos.cn designates 124.126.103.232 as permitted
 sender) smtp.mailfrom=huxiaoying@kylinos.cn
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

The UAS mode of BRAIN USB_HDD is reported to fail to work on several
platforms with the following error message, then after re-connecting the
device will be offlined and not working at all.

[  622.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
                   inflight: CMD
[  622.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
                   04 00 00
[  622.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1
                   inflight: CMD
[  622.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00
                   00 08 00

These disks have a broken uas implementation, the tag field of the status
iu-s is not set properly, so we need to fall-back to usb-storage.

Signed-off-by: Hu Xiaoying <huxiaoying@kylinos.cn>
1
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 1f8c9b16a0fb..98b7ff2c76ba 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -83,6 +83,13 @@ UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_REPORT_LUNS),
 
+/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
+UNUSUAL_DEV(0x1234, 0x1234, 0x0000, 0x9999,
+		"Brain",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
 UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
 		"Initio Corporation",
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240226075936.1744353-1-huxiaoying%40kylinos.cn.
