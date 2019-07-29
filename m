Return-Path: <usb-storage+bncBC46RKEB3EGRBV527PUQKGQEVZSLWLA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 360E178ADC
	for <lists+usb-storage@lfdr.de>; Mon, 29 Jul 2019 13:49:45 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id i33sf32996629pld.15
        for <lists+usb-storage@lfdr.de>; Mon, 29 Jul 2019 04:49:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564400984; cv=pass;
        d=google.com; s=arc-20160816;
        b=hGhm8NorUj76RPb/VYF/qowjlgz+/G5ugzJYxYBpwfIR3s+Ib8YYJP6nfJU9Drpy2J
         GY00cyqF2TtX5Hp7dLHVcdaDtdmpcJQIYnT7GJM0hlWVbKCZ1sm9PF/OUmbtWK8PGhSR
         ejYxpZqQeVB2zSc5xXe+YQMDHGRmH89oM3GIs0cp24TDefG32jVJkfGKZFwXl6t4Ia11
         k4Fv2QZInIsZz6c8EIv4/6lMjfjrygezFUkSGGVwlCfnymmix3+yYUn3jw5/jVcKRxiP
         XfCuQpRnEgECkrECkWOWl4ZUDSWeN2aK0z0utrQvoix/nlV6cQDnqqYH2+cHsiqPgXGP
         5M6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=N6Wm4j1zUvW8N6jDVc1rVzYZQQdshu93JI1lIZe08QY=;
        b=X4OOiJYk3cKb0WIx3zee8aeQzyff89HelSeR9QM8R6HmAs5ysamEQec4IWxCQbz5Em
         xd5Qxg3ftugfyQvEWyczDzugvKiwtYQqhAc0HO4PHClxqhptNeqiMZVCDXo+3ndc9uxi
         i2jkuEi+nXO5bY8uzmSvxt8Z3YIUxDn0AD0y5/fSsYG2DdYzxu3VvWd3s0pfuLLLTYPT
         TCo2ryEDioeRzxk0uLulP5luKweyo1lS7fGMV87Xr15iOVcfZYrcsQ0gQmfXMzD4iTyP
         XjvjHpI7RBZtJ1fblULJzgqSI9TF+xTdSGwYJ00e48tbY+nfkROX9YH4QiRkE3/9bgLZ
         pwGQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="eo/5Z10v";
       spf=pass (google.com: domain of baijiaju1990@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=baijiaju1990@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N6Wm4j1zUvW8N6jDVc1rVzYZQQdshu93JI1lIZe08QY=;
        b=fag4Fh2hkQhw9A3yMduHbn9kTJQ++0jxwNh8oZl3ffCGOUtGjqcb2IkRYKtwDX1bKO
         tjMGSLKC7/vM6GK6SCutRr5m3o605yj2ZBiQMedf6Q01+szctZ9mH34RlWkcg0g0R+ud
         vIm1aKies5b/Qt4AQBUyt4ovGAi+Ky4xeCXnM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N6Wm4j1zUvW8N6jDVc1rVzYZQQdshu93JI1lIZe08QY=;
        b=dBOTqO6sVgcnosoLgmJ5RC0j0uBc1K27owfli+RCepWUS6NX90U4vRvSWmnOEaJKmh
         iVjIhERmYaMZxtTjp34DtzKI2XtC+k1zprjnl5bC2JvC1iDWwvfZDtaoQ+WkESlEtPvn
         5GS/+kJ5chMvV0INKAJBo3hZsjdTf67FGfexsVPrsUz2WtOSQSo2q1091CAi5bl4GOzB
         xB/IrGcY9gV/RhbArAL4U9StGVl9j8NEtBlIlNKSbCJFhn26cprmZL24E0MMWkVY5LyF
         f+dZF6n79UhebiSp5yUj/WbQ1hrHP3BEIqsZedz4l6kE8UsTH3e2UTPVRDxQCTC6N8rT
         eY1g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVYd6K4k6vwa9Le0fYT384KcGmtXckIvSDxlnL7OJrEDKw7Ifw8
	Mglhu+MJShmTK4ED65miXFk=
X-Google-Smtp-Source: APXvYqzLgVhZ8/8DeccxBYxrP8rd0FOkQTTYOd0F7DyrzO4tDb62LI+uiZCSfD7fcS71xQszn/9p6w==
X-Received: by 2002:a17:90a:2567:: with SMTP id j94mr112232659pje.121.1564400983476;
        Mon, 29 Jul 2019 04:49:43 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:8e41:: with SMTP id d1ls12535655pfr.13.gmail; Mon, 29
 Jul 2019 04:49:43 -0700 (PDT)
X-Received: by 2002:a63:fc52:: with SMTP id r18mr103675459pgk.378.1564400983060;
        Mon, 29 Jul 2019 04:49:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564400983; cv=none;
        d=google.com; s=arc-20160816;
        b=wNVRolwh2IMoFtMABGe4j6ELkjzQIrEQyRDYnC32qjXERTXZLg/m55WI9QXa1hC7oM
         /ZlkvyAlmGKkXnFwxMSodbqxYa+eXiDDrlcIEVqKowRuDlrQ1kGs/vhZ32ysEnYl/LUu
         7qEO9AIJ9UWNTAybikQ0kYptC0s3Yb7cN5StAOeeivBob7kgj68n1ysA5ir73ERIL/47
         vweX5SAQIouD9yODFR5ufH4dpPdHHp6GKFZmKD7TeBSOfUmUzgdrWs2a+78TLUhMGeBd
         eQCI3rbPxQBKgeUhbZ/wWjnj77ACYg/or+N0W57u/K+/CTmo2FTQaHc07+nAOVXstLSs
         9lZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=t4LrUjq6T4dirnuW+FmcNbvRfUA+DI+0HKJt+m2bWqc=;
        b=wAtw6ThMNsBW63pvbUzz6Bx2yrau4ljX8n/4cPUzLziiKoTizePVxmJQYUWwf+pkuC
         B0cDytRD0IdAhhFB/NXeh0yifGVrf1KAnopgVo/BKo+EvvbzR4ogHLWZlrxXdOWzysMD
         zkHm7u2N+oT8/IwZVjo2pjCs8aIU+LYuQ64pD/HCUOhcK+ew/TO4DTHGZP0W+UlLBDRw
         xQhAskT0mYieff5oUCe+Hd6yexIchSQaqwv6jMeQzWWHisLHVANnadZFXSjRUXwJGbP0
         MH7RVz/aBB2/0gFYbBCFLGFu/OohuxebYrTF84FOz8XAPlFBL1kOOQBJQYH6JV0bvswY
         foNA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="eo/5Z10v";
       spf=pass (google.com: domain of baijiaju1990@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=baijiaju1990@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id n7sor8168249pgr.50.2019.07.29.04.49.43
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 29 Jul 2019 04:49:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of baijiaju1990@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a63:2252:: with SMTP id t18mr104148160pgm.5.1564400982701;
        Mon, 29 Jul 2019 04:49:42 -0700 (PDT)
Received: from oslab.tsinghua.edu.cn ([2402:f000:4:72:808::3ca])
        by smtp.gmail.com with ESMTPSA id x1sm50673215pjo.4.2019.07.29.04.49.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 04:49:42 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Jia-Ju Bai <baijiaju1990@gmail.com>
Subject: [usb-storage] [PATCH v2] usb: storage: sddr55: Fix a possible
 null-pointer dereference in sddr55_transport()
Date: Mon, 29 Jul 2019 19:49:36 +0800
Message-Id: <20190729114936.6103-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.0
X-Original-Sender: baijiaju1990@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="eo/5Z10v";       spf=pass
 (google.com: domain of baijiaju1990@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=baijiaju1990@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

In sddr55_transport(), there is an if statement on line 836 to check
whether info->lba_to_pba is NULL:
    if (info->lba_to_pba == NULL || ...)

When info->lba_to_pba is NULL, it is used on line 948:
    pba = info->lba_to_pba[lba];

Thus, a possible null-pointer dereference may occur.

To fix this bug, info->lba_to_pba is checked before being used.

This bug is found by a static analysis tool STCheck written by us.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
v2:
* Avoid uninitialized access of pba.
  Thank Oliver for helpful advice.

---
 drivers/usb/storage/sddr55.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
index b8527c55335b..d23aff16091e 100644
--- a/drivers/usb/storage/sddr55.c
+++ b/drivers/usb/storage/sddr55.c
@@ -945,7 +945,7 @@ static int sddr55_transport(struct scsi_cmnd *srb, struct us_data *us)
 			return USB_STOR_TRANSPORT_FAILED;
 		}
 
-		pba = info->lba_to_pba[lba];
+		pba = info->lba_to_pba ? info->lba_to_pba[lba] : 0;
 
 		if (srb->cmnd[0] == WRITE_10) {
 			usb_stor_dbg(us, "WRITE_10: write block %04X (LBA %04X) page %01X pages %d\n",
-- 
2.17.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190729114936.6103-1-baijiaju1990%40gmail.com.
